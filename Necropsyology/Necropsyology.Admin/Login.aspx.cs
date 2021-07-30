using Necropsyology.Core.Recurso;
using System;

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
            RFVUser.ErrorMessage = RecursoGral.CampoRequerido.ToString();
            ValSum.HeaderText = RecursoGral.SumarioError.ToString();
        }
    }
}