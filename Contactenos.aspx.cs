using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using System.Text;

namespace Funlam_2015_02_Clinica_Web
{
    public partial class Contactenos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
           try
           {
               txtMensaje.Text = "Nombre: " + txtNombre.Text + "\n" + "Correo de Contacto: " +txtCorreoE.Text + "\n" + "Mensaje: " + txtMensaje.Text;

                //Configuración del Mensaje
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                //Especificamos el correo desde el que se enviará el Email y el nombre de la persona que lo envía
                mail.From = new MailAddress("contactosclinicaweb@gmail.com", txtAsunto.Text, Encoding.UTF8);
                //Aquí ponemos el asunto del correo
                mail.Subject = txtAsunto.Text;
                //Aquí ponemos el mensaje que incluirá el correo
                mail.Body = txtMensaje.Text;
                //Especificamos a quien enviaremos el Email, no es necesario que sea Gmail, puede ser cualquier otro proveedor
                mail.To.Add("clinicawebcorreo@gmail.com");
                //Se le enviara una copia del mensaje al correo del usuario si escribio su correo en su respectivo campo.
                if (txtCorreoE.Text!=string.Empty)
                {
                    mail.CC.Add(txtCorreoE.Text);
                }
                //Si queremos enviar archivos adjuntos tenemos que especificar la ruta en donde se encuentran
                //mail.Attachments.Add(new Attachment(@"C:\Documentos\carta.docx"));
 
                //Configuracion del SMTP
                SmtpServer.Port = 587; //Puerto que utiliza Gmail para sus servicios
                //Especificamos las credenciales con las que enviaremos el mail
                SmtpServer.Credentials = new System.Net.NetworkCredential("contactosclinicaweb@gmail.com", "contactos2030");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);

                txtCorreoE.Text = "";
                txtMensaje.Text = "";
                txtNombre.Text = "";
                txtAsunto.Text = "";
                lblResultado.Text = "Mensaje enviado exitosamente";
                bool n = true;

                if (n == true)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert(' Su Mensaje ha Sido Enviado Correctamente')</script>");
                }
              
            }
            catch (Exception ex)
            {
                lblResultado.Text = "Error: "+ex.Message;
            } 
        }
    }
}