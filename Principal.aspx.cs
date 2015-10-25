using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Funlam_2015_02_Clinica_Web;
using System.Security.Cryptography;
using System.Text;


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
                    string pass = EncriptacionMD5(txtContrasenia.Text); 
                    ClinicaWebEntities db = new ClinicaWebEntities();

                    string query = (from c in db.Usuario
                                    where c.Username == user && c.contrasena == pass
                                    select c.NombreUsuario).FirstOrDefault();
                    if (query != null)
                    {
                        Session["user"] = query;
                        Response.Redirect("AdministacionUsuarios.aspx");
                    }
                    else
                    {
                        lblMensaje.Text = "Usuario o Contraseña Incorrecto";
                    }
        }

        public static string EncriptacionMD5(string Pass)
        {
            MD5 md5 = MD5CryptoServiceProvider.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = md5.ComputeHash(encoding.GetBytes(Pass));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }
    }
}