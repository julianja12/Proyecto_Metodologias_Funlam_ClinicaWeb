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
            try
            {
                using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
                {
                    string Fecha = txtFecha.Text;
                    string Hora = txtHoraCita.Text;
                    string Lugar = DropDownList1.SelectedItem.Text;
                    int ced = Convert.ToInt32(Session["cedula"]);

                    int queryC = (from C in oConexion.Cita
                                  where C.FechaCita == Fecha && C.HoraCita == Hora && C.LugarCita == Lugar
                                  select C.Cedula).FirstOrDefault();

                    if (queryC != 0)
                    {

                        Response.Write("<script LANGUAGE='JavaScript' >alert('La Cita Ya Ha Sido Reservada')</script>");

                    }
                    else
                    {
                        Cita NuevaCita = new Cita();

                        NuevaCita.Cedula = ced;
                        NuevaCita.FechaCita = txtFecha.Text;
                        NuevaCita.HoraCita = txtHoraCita.Text;
                        NuevaCita.LugarCita = DropDownList1.Text;

                        oConexion.Cita.AddObject(NuevaCita);
                        oConexion.SaveChanges();
                        bool n = true;

                        if (n == true)
                        {
                            Response.Write("<script LANGUAGE='JavaScript' >alert('Se Agendo Correctamente la Cita')</script>");
                        }

                    }

                }

                txtHoraCita.Enabled = true;
                DropDownList1.Enabled = true;
            }

            catch {

                Response.Write("<script LANGUAGE='JavaScript' >alert('Verifique Los Datos Ingresados')</script>");
            }
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
                int cita = Convert.ToInt32(txtIdCita.Text);
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

            txtHoraCita.Enabled = true;
            DropDownList1.Enabled = true;
        }
    }
}