using Necropsyology.Core;
using Necropsyology.Core.Recurso;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin
{
    public partial class NecroGeneral : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            String selectedLanguage = String.Empty;
            if (Session["Cultura"] == null)
                selectedLanguage = "es-MX";
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
            CtrlOrganizacion.Conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            CtrlOrganizacion.ValorRef = Properties.Settings.Default.CadenaPri;


            Utileria.ValorRecurso("RecursoNecropsia", "LblHeaderTitulo", "LblTitulo", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiFolio", "LblEtiFolio", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiFecha", "LblEtiFecha", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiNomMVZ", "LblEtiNomMVZ", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiEmailMVZ", "LblEtiEmailMVZ", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiTelMVZ", "LblEtiTelMVZ", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiCedMVZ", "LblEtiCedMVZ", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblTitMVZ", "LblTitMVZ", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblTitDatGral", "LblTitDatGral", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiOrg", "LblEtiOrg", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiNomOrg", "LblEtiNomOrg", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiDomOrg", "LblEtiDomOrg", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiPropOrg", "LblEtiPropOrg", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiTelOrg", "LblEtiTelOrg", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiMailOrg", "LblEtiMailOrg", this);
        }

    }
}