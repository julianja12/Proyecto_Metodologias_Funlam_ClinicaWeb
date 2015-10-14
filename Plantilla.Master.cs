using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoClinica
{
    public partial class Plantilla : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                UsuarioL.Visible = false;
                RegistroL.Visible = true;
            }
            else
            {
                UsuarioL.Visible = true;
                RegistroL.Visible = false;
            }
        }
        protected void CerrarSesionAction_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            UsuarioL.Visible = false;
            RegistroL.Visible = true;
            Response.Redirect("Principal.aspx");
        }
	}
}