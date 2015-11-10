using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Funlam_2015_02_Clinica_Web
{
    public partial class AdministracionCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgendar_Click(object sender, EventArgs e)
        {
            
            using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
            {
                string Fecha = txtFecha.Text;
                string Hora = txtHoraCita.Text;
                string Lugar = DropDownList1.SelectedItem.Text;
                int ced = Convert.ToInt32(Session["cedula"]);

                string queryHora = (from C in oConexion.Cita
                                    where C.Cedula == ced
                                    select C.HoraCita).Contains(txtHoraCita.Text);

                string queryFecha = (from C in oConexion.Cita
                                     where C.Cedula == ced
                                     select C.FechaCita).FirstOrDefault();

                string queryLugar = (from C in oConexion.Cita
                                     where C.Cedula == ced
                                     select C.LugarCita).FirstOrDefault();


                if (txtFecha.Text == queryFecha)
                {
                    if (txtHoraCita.Text == queryHora)
                    {
                        if (DropDownList1.SelectedItem.Text == queryLugar)
                        {

                            Response.Write("<script LANGUAGE='JavaScript' >alert('La Cita No esta Disponible')</script>");
                        }

                    }

                }
                else { 
           

                Cita NuevaCita = new Cita();

                NuevaCita.Cedula = ced;
                NuevaCita.FechaCita = txtFecha.Text;
                NuevaCita.HoraCita = txtHoraCita.Text;
                NuevaCita.LugarCita = DropDownList1.Text;

                oConexion.Cita.AddObject(NuevaCita);
                oConexion.SaveChanges();
                bool n= true;

                if (n == true)
                {   
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Se Agendo Correctamente la Cita')</script>");
                }
              
            }

            }
            txtHoraCita.Enabled = true;
            DropDownList1.Enabled = true;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            try
            {
                using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
                {
                    int cita = Convert.ToInt32(txtIdCita.Text);

                    Cita CancelarCita = oConexion.Cita.Where(w => w.IdCita == cita).Single();

                    oConexion.DeleteObject(CancelarCita);
                    oConexion.SaveChanges();
                    bool ee = true;


                    if (ee == true)
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('Se Cancelo la Cita Correctamente')</script>");

                        List<UsuarioCitas> resultado = (from c in oConexion.Usuario
                                                        join f in oConexion.Cita
                                                        on c.Cedula equals f.Cedula
                                                        where f.IdCita == cita
                                                        select new UsuarioCitas()
                                                        {
                                                            CodigoCita = f.IdCita,
                                                            Cedula = c.Cedula,
                                                            Nombre = c.NombreUsuario,
                                                            Apellido = c.ApellidoUsuario,
                                                            Lugar = f.LugarCita,
                                                            Fecha = f.FechaCita,
                                                            Hora = f.HoraCita
                                                        }
                                                            ).ToList();

                        GriewCitas.DataSource = resultado;
                        GriewCitas.DataBind();

                    }
                }

                txtHoraCita.Enabled = true;
                DropDownList1.Enabled = true;
            }

            catch {

                Response.Write("<script LANGUAGE='JavaScript' >alert('Revise los Datos Ingresados')</script>");
            }
        }

        protected void btnConsultas_Click(object sender, EventArgs e)
        {
            using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
            {
                List<UsuarioCitas> resultado = (from c in oConexion.Usuario
                                                       join f in oConexion.Cita
                                                       on c.Cedula equals f.Cedula
                                                       select new UsuarioCitas()
                                                       {
                                                           CodigoCita = f.IdCita,
                                                           Cedula = c.Cedula,
                                                           Nombre = c.NombreUsuario,
                                                           Apellido = c.ApellidoUsuario,
                                                           Lugar = f.LugarCita,
                                                           Fecha = f.FechaCita,
                                                           Hora = f.HoraCita
                                                       }
                                                      ).ToList();

                GriewCitas.DataSource = resultado;
                GriewCitas.DataBind();

            }

            txtHoraCita.Enabled = true;
            DropDownList1.Enabled = true;
        }
    }
}