using Necropsyology.Core;
using Necropsyology.Core.Recurso;
using System;
using System.Globalization;
using System.Threading;

namespace Necropsyology.Admin
{
    public partial class LandingPage : System.Web.UI.Page
    {

        protected override void InitializeCulture()
        {
            if (Request.Form["ddlidioma"] != null)
            {
                String selectedLanguage = Request.Form["ddlidioma"];
                UICulture = selectedLanguage;
                Culture = selectedLanguage;
                Session["Cultura"] = selectedLanguage;
            }
            base.InitializeCulture();
        }


        protected void Page_Load(object sender, EventArgs e)
        {            
            LblIntro.Text = Recursos.Intro.ToString();
            LblPromo1.Text = Recursos.Promo1.ToString();
            LblAcerca.Text = Recursos.Acerca.ToString();
            LblDescarga.Text = Recursos.Descarga.ToString();
            LblMejoras.Text = Recursos.Mejoras.ToString();
            LblPrecio.Text = Recursos.Precio.ToString();
            LnkLogin.Text = Recursos.Acceso.ToString();
            LnkRegistro.Text = Recursos.Registro.ToString();
            LblGetApp.Text = Recursos.ObtenApp.ToString();
            LblAcercaDetalle.Text = Recursos.AcercaDetalle.ToString();
        }
    }
}