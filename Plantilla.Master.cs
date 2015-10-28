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
                MenuCitas.Visible = false;
            }
            else
            {
                UsuarioL.Visible = true;
                RegistroL.Visible = false;
                MenuCitas.Visible = true;
            }
            if (Convert.ToInt32(Session["tipousuario"]) == 1)
            {
                AdminUser.Visible = true;
            }
            else
            {
                AdminUser.Visible = false;
            }
        }
        protected void CerrarSesionAction_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            UsuarioL.Visible = false;
            RegistroL.Visible = true;
            Page.ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.open('close.html', '_self', null);", true);
            Response.Redirect("Principal.aspx");
        }
	}
}