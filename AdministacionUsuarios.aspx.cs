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

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {

                Response.Redirect("Principal.aspx");

            }
            else
            {
                Label1.Text = Session["user"].ToString();
            }
        }
           
  
    }
}