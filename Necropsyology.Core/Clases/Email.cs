using System;
using System.Collections;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;

namespace Necropsyology.Core
{
    public class Email
    {
        #region Propiedades
        public String Correos;
        public String Asunto;
        public String Cuerpo;
        public String EncCuerpo;
        public ArrayList Adjuntos = new ArrayList();
        public String Copia_Oculta;
        public String Cuenta_Remitente;
        public String Usuario_Remitente;
        public String Password_Remitente;
        public int Puerto_Remitente;
        public String Servidor_Remitente;
        public String Server_KEY = "AAAAB_MNkoY:APA91bFm7OzyhyNf7udoNbIRq9exgF2SAM4eWgUyVoTe-GjETrCPfxvmhZHq9FqvNwhaDQbE6USZdGqhfccZ3xSpQb1BehZ-Z7WTf8jPN_dSK4na39308T96FbFrc1Wxhlib4doIc48s ";
        public String Sender_ID = "genco-notifier";
        #endregion

        #region Metodos Publicos
        public void Envia_Correo_Error(Exception Ex, String Lista_Correos, String Grupo, String Titulo, String Mens, String Clase_Origen, String Detalle)
        {

            MailMessage Mensaje = new MailMessage();
            Char delimiter = ';';
            String[] substrings = Lista_Correos.Split(delimiter);
            foreach (var Correo in substrings)
            {
                Mensaje.To.Add(Correo);
            }
            foreach (String Archivos in Adjuntos)
            {
                Mensaje.Attachments.Add(new Attachment(Archivos));
            }
            Mensaje.Subject = "Se ah Presentado el siguiente Error en la plataforma";
            Mensaje.SubjectEncoding = System.Text.Encoding.UTF8;
            //Mensaje.Bcc.Add("miguelo@gencoconsulting.com");
            //Mensaje.Body = "Mensaje de Error: "+Ex.Message+" Llamado desde: "+Ex.StackTrace;
            Mensaje.BodyEncoding = System.Text.Encoding.UTF8;
            Mensaje.IsBodyHtml = true;
            Mensaje.From = new MailAddress("miguel@reneandco.com");
            SmtpClient Cliente = new SmtpClient();
            Cliente.Credentials = new System.Net.NetworkCredential("mlopez70@gmail.com", "707303loom");
            Cliente.Port = 587;
            Cliente.EnableSsl = true;
            Cliente.Host = "smtp.gmail.com";
            Cliente.Send(Mensaje);
            //Notificacion.SendNotificationByTopic(Grupo, Titulo, Mens, Clase_Origen, Detalle);
        }

        public void EnviaCorreo()
        {
            MailMessage Mensaje = new MailMessage();
            Char delimiter = ';';
            String[] substrings = Correos.Split(delimiter);
            foreach (var Correo in substrings)
            {
                if (!Correo.Equals(String.Empty))
                    Mensaje.To.Add(Correo);
            }
            foreach (String Archivos in Adjuntos)
            {
                Mensaje.Attachments.Add(new Attachment(Archivos));
            }
            Mensaje.Subject = Asunto;
            Mensaje.SubjectEncoding = Encoding.UTF8;
            //Mensaje.Bcc.Add(Copia_Oculta);
            Mensaje.Body = Cuerpo;
            Mensaje.BodyEncoding = Encoding.UTF8;
            Mensaje.IsBodyHtml = true;
            Mensaje.From = new MailAddress("miguelo@reneandco.com");
            SmtpClient Cliente = new SmtpClient
            {
                Credentials = new System.Net.NetworkCredential("mlopez70@gmail.com", "707303loom"),
                Port = 587,
                EnableSsl = true,
                Host = "smtp.gmail.com"
            };
            Cliente.Send(Mensaje);
        }

        public void EnviaCorreoSG()
        {
            var message = new MailMessage
            {
                From = new MailAddress("azure_27d84b2b38c19473d8f6e577e0465d3c@azure.com")
            };
            message.To.Add(Correos);
            message.Subject = Asunto;
            message.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(EncCuerpo, null, MediaTypeNames.Text.Html));
            message.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(Cuerpo, null, MediaTypeNames.Text.Html));
            var credentials = new NetworkCredential("azure_27d84b2b38c19473d8f6e577e0465d3c@azure.com", "707303loom");
            SmtpClient smtpClient = new SmtpClient("smtp.sendgrid.net", Convert.ToInt32(587))
            {
                Credentials = credentials
            };
            smtpClient.Send(message);

        }
        #endregion
    }
}
