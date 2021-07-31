using Necropsyology.Core.Recurso;
using NecropsyOlogy.Datos.Models;
using System;
using System.Configuration;
using System.Threading;
using System.Web.UI;

namespace Necropsyology.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            String selectedLanguage = String.Empty;
            if (Session["Cultura"] == null)
                selectedLanguage = "en-US";
            else
                selectedLanguage = Session["Cultura"].ToString();
            UICulture = selectedLanguage;
            Culture = selectedLanguage;
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ConfiguraCTRL();
        }

        protected void ConfiguraCTRL()
        {
            LblCtrlAcceso.Text = RecursoLogin.LblCtrlAcceso.ToString();
            LblAccSeguro.Text = RecursoLogin.LblAccSeguro.ToString();
            TxtUsuario.Attributes.Add("placeholder", RecursoLogin.PHolderTxtUsuario.ToString());
            TxtPass.Attributes.Add("placehoolder", RecursoLogin.PHolderTxtContra.ToString());
            RFVUser.ErrorMessage = RecursoGral.UsuarioReq.ToString();
            ValSum.HeaderText = RecursoGral.SumarioError.ToString();
            BtnLogin.Text = RecursoLogin.BtnLogin.ToString();
            BtnCancelar.Text = RecursoLogin.BTnCancelar.ToString();
            RFVPass.ErrorMessage = RecursoGral.PassReq.ToString();
            REXUser.ErrorMessage = RecursoGral.CorreoNoValido.ToString();
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LandingPage.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            BtnLogin.Visible = false;
            try
            {

                Thread.Sleep(2000);
                Usuario oUser = new Usuario
                {
                    Conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString(),
                    ValorRef = Properties.Settings.Default.CadenaPri,
                    Email = TxtUsuario.Text,
                    Password = TxtPass.Text,

                };
                if (oUser.Login())
                {

                }
                else
                    Error(RecursoGral.UserNoExiste.ToString());

            }
            catch (Exception Ex)
            {
                String Sdat = string.Empty;
            }
            BtnLogin.Visible = true;
        }

        private void Mensaje(String Mensaje)
        {
            lblModalBody.Text = Mensaje;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }


        private void Aviso(String Mensaje)
        {
            LblAviso.Text = Mensaje;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "MyMensaje", "$('#MyMensaje').modal();", true);
            upModal1.Update();
        }


        private void Error(String Mensaje)
        {
            LblEror.Text = Mensaje;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myError", "$('#myError').modal();", true);
            UPError.Update();
        }
    }
}