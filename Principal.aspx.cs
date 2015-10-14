using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Funlam_2015_02_Clinica_Web;


namespace ProyectoClinica
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Panel1.Visible = false;
            }
            else
            {
                Session["user"] = null;
                Panel1.Visible = true;
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
          
                    string user = txtUsuario.Text;
                    string pass = txtContrasenia.Text;
                    ClinicaWebEntities db = new ClinicaWebEntities();

                    string query = (from c in db.Usuarios
                                    where c.UserName == user && c.Contraseña == pass
                                    select c.NombreUsuario).FirstOrDefault();
                    if (query != null)
                    {
                        Session["user"] = query;
                        Response.Redirect("AdministacionUsuarios.aspx");
                    }
                    else
                        lblMensaje.Text = "Usuario o Contraseña Incorrecto";
                }
            }
        }