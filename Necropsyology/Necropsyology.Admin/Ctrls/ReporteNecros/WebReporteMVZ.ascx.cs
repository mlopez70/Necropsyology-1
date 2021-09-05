using Necropsyology.Datos.Models;
using System;

namespace Necropsyology.Admin.Ctrls.ReporteNecros
{
    public partial class WebReporteMVZ : System.Web.UI.UserControl
    {

        Necropsia oCaso = new Necropsia();

        protected void Page_Load(object sender, EventArgs e)
        {
            oCaso = (Necropsia)Session["Caso"] == null ? new Necropsia() : (Necropsia)Session["Caso"];
            LblValNomMVZ.Text = oCaso.NombreMVZ;
            LblValEmailMVZ.Text = oCaso.Email;
            LblValTelMVZ.Text = oCaso.Telefono;
            LblValCedMVZ.Text = oCaso.Cedula;
        }
    }
}