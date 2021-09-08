using Necropsyology.Core;
using Necropsyology.Datos.Models;
using System;

namespace Necropsyology.Admin.Ctrls.ReporteNecros
{
    public partial class CtrlHallazgo : System.Web.UI.UserControl
    {

        Necropsia oCaso = new Necropsia();


        protected void Page_Load(object sender, EventArgs e)
        {
            oCaso = (Necropsia)Session["Caso"] == null ? new Necropsia() : (Necropsia)Session["Caso"];
            ConfiguraCTRL();
        }


        protected void ConfiguraCTRL()
        {

            Utileria.ValorRecurso("RecursoNecropsia", "LblTitHallazgo", "LblTitHallazgo", this);
        }
    }
}