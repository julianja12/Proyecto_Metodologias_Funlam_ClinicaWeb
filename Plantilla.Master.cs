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
                AdminUser.Visible = false;
            }
            else
            {
                if (Convert.ToInt32(Session["tipousuario"]) == 1)
                {
                    AdminUser.Visible = true;
                    MenuCitas.Visible = false;
                }
                else
                {
                    AdminUser.Visible = false;
                    MenuCitas.Visible = true;
                }

                UsuarioL.Visible = true;
                RegistroL.Visible = false;
            }

        }
        protected void CerrarSesionAction_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["tipousuario"] = null;
            Session.Clear();
            UsuarioL.Visible = false;
            RegistroL.Visible = true;
            AdminUser.Visible = false;
            MenuCitas.Visible = false;
            Page.ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.open('close.html', '_self', null);", true);
            Response.Redirect("Principal.aspx");
        }
	}
}