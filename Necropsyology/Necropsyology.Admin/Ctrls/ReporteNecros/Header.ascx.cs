using Necropsyology.Core;
using Necropsyology.Core.Recurso;
using Necropsyology.Datos.Models;
using System;

namespace Necropsyology.Admin.Ctrls.ReporteNecros
{
    public partial class Header : System.Web.UI.UserControl
    {
        Necropsia oCaso = new Necropsia();

       

        protected void Page_Load(object sender, EventArgs e)
        {
            oCaso = (Necropsia)Session["Caso"] == null ? new Necropsia() : (Necropsia)Session["Caso"];
            ConfiguraCTRL();
        }


        protected void ConfiguraCTRL()
        {         
            LblValFolio.Text = oCaso.Folio;         
            LblValFecha.Text = oCaso.FechaCaso.ToString("d");          
        }
    }
}