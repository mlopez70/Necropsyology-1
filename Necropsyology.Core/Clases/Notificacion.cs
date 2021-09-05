using System;

namespace Necropsyology.Core
{
    public static class Notificacion
    {
        public static void NotificacionError(Exception Ex, String Area)
        {
            String sLlamado = String.Empty;
            if (Ex.InnerException != null)
                sLlamado = Ex.InnerException.ToString();
            else
                sLlamado = "No esta definida la llamada";
            Email Correo = new Email
            {

                Asunto = "Error en la plataforma",
                EncCuerpo = "<h1>¡NecropsyOlogy!</h1><br><p>Se a presentado un error en el sitio de Necropsyology por favor notifique </p> <br/>" + Ex.Message+ " Llamado desde "+sLlamado+" El Area es: "+Area,
                Correos = "miguel@reneandco.com",
                Cuerpo = Ex.Message,
            };
            Correo.EnviaCorreoSG();
        }

        public static void NotificacionRegistro(String Cuenta, String Codigo)
        {
            Email Correo = new Email
            {
                Asunto = "Registro de usuario en plataforma NecropsyOlogy",
                EncCuerpo = "<h1>¡NecropsyOlogy!</h1><br><p>Se a registrado en el sitio de Necropsyology por favor visite https://necropsyweb.azurewebsites.net/complete .<br>No dudes en visitarlo completar informacion</p><p> Recuerde este es su codigo de verificacion para poder completar su informacion: " + Codigo + " </p>",
                Correos = "mlopez70@hotmail.com,mlopez70@gmail.com,miguel@reneandco.com," + Cuenta,
                Cuerpo = "<p>Recuerde su codigo de verificacion es <h2><strong>" + Codigo + "</strong></h2></p>",
            };
            Correo.EnviaCorreoSG();

        }
    }
}
