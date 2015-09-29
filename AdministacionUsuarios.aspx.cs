using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects.DataClasses;
using System.IO;

namespace Funlam_2015_02_Clinica_Web
{
    public partial class AdministacionUsuarios : System.Web.UI.Page
    {
        EntityCollection<Usuario> lstUsuarios = new EntityCollection<Usuario>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Session["Usuarios"] = lstUsuarios;

                GridView1.DataSource = lstUsuarios;
                GridView1.DataKeyNames = new string[] { "IdUsuario" };
                GridView1.DataBind();

            }
        }
    }
}