using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin.Ctrls.ReporteNecros
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblFecha.Text = "Fecha: "+DateTime.Now.ToShortDateString();
            LblFolio.Text = "# Folio: MGHHGM000003";
        }
    }
}