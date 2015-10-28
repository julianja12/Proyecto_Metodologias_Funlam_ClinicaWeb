using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace Funlam_2015_02_Clinica_Web
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Principal.aspx");
            }
            txtIdentificacion.Text = Session["cedula"].ToString();
            int cedula = Convert.ToInt32(Session["cedula"]);
            txtNombre.Text = Session["user"].ToString();

            ClinicaWebEntities db = new ClinicaWebEntities();

            if (IsPostBack==false)
            {
                string apellido = (from c in db.Usuario
                                   where c.Cedula == cedula
                                   select c.ApellidoUsuario).FirstOrDefault();
                txtApellidos.Text = apellido;
                int edad = (from c in db.Usuario
                            where c.Cedula == cedula
                            select c.Edad).FirstOrDefault();
                txtEdad.Text = edad.ToString();
                string direccion = (from c in db.Usuario
                                    where c.Cedula == cedula
                                    select c.Direccion).FirstOrDefault();
                txtDireccion.Text = direccion;
                string telefono = (from c in db.Usuario
                                   where c.Cedula == cedula
                                   select c.Telefono).FirstOrDefault().ToString();
                txtTelefono.Text = telefono;
                string username = (from c in db.Usuario
                                   where c.Cedula == cedula
                                   select c.Username).FirstOrDefault();
                txtUserName.Text = username;
                string correo = (from c in db.Usuario
                                 where c.Cedula == cedula
                                 select c.Email).FirstOrDefault();
                txtEmail.Text = correo;
            }
            //if (Session["pass"] != null)
            //{
            //    txtPass.Text = Session["pass"].ToString();
            //}
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            //Boton Actualizar información
            int cedula = Convert.ToInt32(Session["cedula"]);

            using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
            {
                var user = (from u in oConexion.Usuario
                            where u.Cedula == cedula
                            select u).First();
                user.Edad = Convert.ToInt32(txtEdad.Text);
                user.Telefono = Convert.ToInt32(txtTelefono.Text);
                user.Email = txtEmail.Text;
                user.Direccion = txtDireccion.Text;
                user.NombreUsuario = txtNombre.Text;
                user.ApellidoUsuario = txtApellidos.Text;
                user.Username = txtUserName.Text;

                try
                {
                    oConexion.SaveChanges();
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Cambios realizados exitosamente')</script>");
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Error!')</script>");
                }
            }
        }

        protected void btnCambiarPass_Click(object sender, EventArgs e)
        {
                LabelMensajePass.Text = "";
                string passss = EncriptacionMD5(txtPass.Text);
                int cedula = Convert.ToInt32(Session["cedula"]);

                ClinicaWebEntities db = new ClinicaWebEntities();

                string cambiarpass = (from c in db.Usuario
                                      where c.Cedula == cedula
                                      select c.contrasena).FirstOrDefault();
                if (cambiarpass == passss.ToUpper())
                {
                    if ((EncriptacionMD5(txtNewPass.Text).Equals(EncriptacionMD5(txtValidarPass.Text))) && (txtValidarPass.Text != ""))
                    {
                        using (ClinicaWebEntities oConexion = new ClinicaWebEntities())
                        {
                        var User = (from c in oConexion.Usuario
                                    where c.Cedula == cedula
                                    select c).SingleOrDefault();

                        User.contrasena = (EncriptacionMD5(txtNewPass.Text));

                        try
                        {
                            oConexion.SaveChanges();
                            Response.Write("<script LANGUAGE='JavaScript' >alert('La contraseña ha sido cambiada correctamente')</script>");
                        }
                        catch (Exception ex)
                        {
                            Label1.Text = ex.Message;
                            Response.Write("<script LANGUAGE='JavaScript' >alert('Error!')</script>");
                        }
                        }
                    }
                    else
                    {
                        //Mensaje encima o debajo del campo Verificar Contraseña
                        LabelMensajeValidorPass.Text = "No coicide la contraseña ingresada";
                    }
                }
                else
                {
                    LabelMensajePass.Text = "Contraseña Incorrecta";
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