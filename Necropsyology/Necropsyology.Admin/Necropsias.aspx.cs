using Necropsyology.Datos.Models;
using System;
using System.Configuration;
using System.Web.UI.WebControls;
using Necropsyology.Core.Recurso;
using Necropsyology.Core;
using Necropsyology.Admin.Properties;

namespace Necropsyology.Admin
{
    public partial class Necropsias : System.Web.UI.Page
    {
        static Usuario oUser = new Usuario();
        static String sFolio;
        static Boolean lGeneral = false;
        Necropsia oCaso = new Necropsia();

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
            oUser = (Usuario)Session["Usuario"];
            if (oUser == null)
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            Carga_Info();
        }


        protected void ConfiguraCTRL()
        {
            LblTitulo.Text = RecursoListadoNecros.TituloPagina;
            BtnNewOrg.Text = RecursoListadoNecros.BtnNewOrg;
            BtnNewRepGral.Text = RecursoListadoNecros.BtnNewRepGral;
            BtnNewRepBov.Text = RecursoListadoNecros.BtnNRepBov;
            GrdNecros.Columns[1].HeaderText = RecursoListadoNecros.HColFolio;
            GrdNecros.Columns[2].HeaderText = RecursoListadoNecros.HColFecha;
            GrdNecros.Columns[3].HeaderText = RecursoListadoNecros.HColOrganizacion;
            GrdNecros.Columns[4].HeaderText = RecursoListadoNecros.HColIdAnimal;
            GrdNecros.Columns[5].HeaderText = RecursoListadoNecros.HColDiagnostico;
            GrdNecros.Columns[0].HeaderText = RecursoListadoNecros.HColAccion;
            Button Btn = (Button)Utileria.FindControlRecursive(GrdNecros, "BtnAcciom");
            if (Btn != null)
                Btn.Text = RecursoListadoNecros.BtnAccion;
        }


        private void Carga_Info()
        {
            Necropsia oNecropsia = new Necropsia
            {
                Conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString(),
                ValorRef = Settings.Default.CadenaPri,
                IdCliente = oUser.IdUsuario,
                IdUsuario = oUser.IdUsuario,
            };
            GrdNecros.DataSource = oNecropsia.ListadoCorto();
            GrdNecros.DataBind();

            Button Btn = (Button)GrdNecros.FindControl("BtnAccion_1");
            if (Btn != null)
                Btn.Text = RecursoListadoNecros.BtnAccion + "Carga";
        }


        protected void GrdNecros_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            GrdNecros.PageIndex = e.NewPageIndex;
            GrdNecros.DataBind();
        }


        protected void BtnEditGral_Click(object sender, EventArgs e)
        {
            lGeneral = true;
        }


        protected void BtnEditBov_Click(object sender, EventArgs e)
        {
            lGeneral = false;
        }


        protected void GrdNecros_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GrdNecros.SelectedRow.RowType == DataControlRowType.DataRow)
            {
                sFolio = ((Label)GrdNecros.SelectedRow.FindControl("LblFolio")).Text;
                oCaso = new Necropsia
                {
                    Conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString(),
                    ValorRef = Settings.Default.CadenaPri,
                    Folio = sFolio,
                };

                oCaso.ConsCasoFolio();
                Session["Caso"] = oCaso;
                if (lGeneral)
                    Response.Redirect("NecroGeneral.aspx", false);
                else
                    Response.Redirect("NecroBovino.aspx", false);

                Context.ApplicationInstance.CompleteRequest();
            }
        }
    }
}