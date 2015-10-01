using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoClinica
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == "admin")
            {
                if (txtContraseña.Text == "admin")
                {
                    Response.Redirect("AdministacionUsuarios.aspx");
                }

            }
            else
            { 
            lblMensaje.Text = "Usuario o contraseña incorrectas, favor verificar";
            }
        }
    }
}