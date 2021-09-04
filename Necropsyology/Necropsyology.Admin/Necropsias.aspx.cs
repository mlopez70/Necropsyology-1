using Necropsyology.Datos.Models;
using NecropsyOlogy.Datos.Models;
using System;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin
{
    public partial class Necropsias : System.Web.UI.Page
    {
        static Usuario oUser = new Usuario();
        static String sFolio;
        static Boolean lGeneral = false;


        protected void Page_Load(object sender, EventArgs e)
        {
            oUser = (Usuario)Session["Usuario"];
            if(oUser==null)
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            Carga_Info();
        }


        private void Carga_Info()
        {
            Necropsia oNecropsia = new Necropsia
            {
                Conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString(),
                ValorRef = Properties.Settings.Default.CadenaPri,
                IdCliente = oUser.IdUsuario,
                IdUsuario = oUser.IdUsuario,
            };
            GrdNecros.DataSource = oNecropsia.Listado();
            GrdNecros.DataBind();
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

                if (lGeneral)
                    Response.Redirect("NecroGeneral.aspx", false);
                else
                    Response.Redirect("NecroBovino.aspx", false);

                Context.ApplicationInstance.CompleteRequest();
            }
        }
    }
}