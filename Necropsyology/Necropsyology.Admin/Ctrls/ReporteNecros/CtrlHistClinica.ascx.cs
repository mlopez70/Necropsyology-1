using Necropsyology.Core;
using Necropsyology.Datos.Models;
using System;

namespace Necropsyology.Admin.Ctrls.ReporteNecros
{
    public partial class CtrlHistClinica : System.Web.UI.UserControl
    {      

        Necropsia oCaso = new Necropsia();

        protected void Page_Load(object sender, EventArgs e)
        {
            oCaso = (Necropsia)Session["Caso"] == null ? new Necropsia() : (Necropsia)Session["Caso"];           
            ConfiguraCTRL();
        }


        protected void ConfiguraCTRL()
        {

            Utileria.ValorRecurso("RecursoNecropsia", "LblTitHistoria", "LblTitHistoria", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiSignos", "LblEtiSignos", this);
            Utileria.GeneraCtrl(this, "Signos", oCaso.SignosEnfer, Utileria.TipoCtrl.Memo);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiTratamiento", "LblEtiTratamiento", this);
            Utileria.GeneraCtrl(this, "Tratamiento", oCaso.Tratamiento, Utileria.TipoCtrl.Memo);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiDiagnostico", "LblEtiDiagnostico", this);
            Utileria.GeneraCtrl(this, "Diagnostico", oCaso.Diagnostico, Utileria.TipoCtrl.Memo);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiHistoria", "LblEtiHistoria", this);
            Utileria.GeneraCtrl(this, "Historia", oCaso.Historia, Utileria.TipoCtrl.Memo);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiDiasEnfer", "LblEtiDiasEnfer", this);
            Utileria.GeneraCtrl(this, "DiasEnfer", oCaso.DiasEnfer, Utileria.TipoCtrl.Libre);
        }
    }
}