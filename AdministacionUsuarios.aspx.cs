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
            
        }

        protected void btnRol_Click(object sender, EventArgs e)
        {
            try
            {
                using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
                {
                    TipoUsuario NuevoRol = new TipoUsuario();

                    NuevoRol.Cedula = Convert.ToInt32(txtCedula.Text);
                    NuevoRol.IdTipoUsuario = Convert.ToInt32(ddlTipo.SelectedValue);
                    NuevoRol.NombreTipoUsuario = ddlTipo.SelectedItem.Text;


                    oConexion.TipoUsuario.AddObject(NuevoRol);
                    oConexion.SaveChanges();
                    bool n = true;

                    if (n == true)
                    {
                        txtCedula.Text = "";
                        Response.Write("<script LANGUAGE='JavaScript' >alert('Se Asigno el Rol Correctamente')</script>");
                    }

                }
            }
            catch {

                Response.Write("<script LANGUAGE='JavaScript' >alert('Ingrese Nuevamente la Cedula Deseada')</script>");
            
            }
        }

        protected void btnRolC_Click(object sender, EventArgs e)
        {
            try
            {
                using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
                {
                    int Cedula = Convert.ToInt32(txtCedula.Text);
                    TipoUsuario CancelarRol = oConexion.TipoUsuario.Where(w => w.Cedula == Cedula).Single();

                    oConexion.DeleteObject(CancelarRol);
                    oConexion.SaveChanges();
                    bool ee = true;
                    if (ee == true)
                    {

                        Response.Write("<script LANGUAGE='JavaScript' >alert('Se Quito el Rol Correctamente')</script>");

                    }

                }

            }
            catch
            {

                Response.Write("<script LANGUAGE='JavaScript' >alert('No Se Actualizo Correctamente')</script>");
            }
        }

  
     
    }
}