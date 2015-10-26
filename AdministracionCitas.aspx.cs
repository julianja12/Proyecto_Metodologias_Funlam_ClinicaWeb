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
                Cita NuevaCita = new Cita();

                NuevaCita.Cedula = Convert.ToInt32(txtUsuario.Text);
                NuevaCita.FechaCita = txtFecha.Text;
                NuevaCita.HoraCita = txtCita.Text;
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

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
            {
                int Cedula = Convert.ToInt32(txtUsuario.Text);
                Cita CancelarCita = oConexion.Cita.Where(w => w.Cedula == Cedula).Single();

                oConexion.DeleteObject(CancelarCita);
                oConexion.SaveChanges();
                bool ee = true;
              

                if (ee == true)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Se Cancelo la Cita Correctamente')</script>");

                    List<UsuarioCitas> resultado = (from c in oConexion.Usuario
                                                    join f in oConexion.Cita
                                                    on c.Cedula equals f.Cedula
                                                    select new UsuarioCitas()
                                                    {
                                                      
                                                        Cedula = c.Cedula,
                                                        Nombre = c.NombreUsuario,
                                                        Apellido = c.ApellidoUsuario,
                                                        Lugar = f.LugarCita,
                                                        Fecha = f.FechaCita,
                                                        Hora = f.HoraCita
                                                    }
                                                        ).ToList();

                    GridView1.DataSource = resultado;
                    GridView1.DataBind();

                }
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
                                                          
                                                           Cedula = c.Cedula,
                                                           Nombre = c.NombreUsuario,
                                                           Apellido = c.ApellidoUsuario,
                                                           Lugar = f.LugarCita,
                                                           Fecha = f.FechaCita,
                                                           Hora = f.HoraCita
                                                       }
                                                      ).ToList();

                GridView1.DataSource = resultado;
                GridView1.DataBind();

            }
        }
    }
}