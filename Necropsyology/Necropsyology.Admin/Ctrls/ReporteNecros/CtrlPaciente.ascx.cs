using Necropsyology.Core;
using Necropsyology.Core.Recurso;
using Necropsyology.Datos.Models;
using System;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin.Ctrls.ReporteNecros
{
    public partial class CtrlPaciente : System.Web.UI.UserControl
    {
        public String Conexion { get; set; }
        public String ValorRef { get; set; }

        Necropsia oCaso = new Necropsia();
        Especie oEspecie = new Especie();


        protected void Page_Load(object sender, EventArgs e)
        {
            oCaso = (Necropsia)Session["Caso"] == null ? new Necropsia() : (Necropsia)Session["Caso"];
           
            if (!IsPostBack)
            {
                CargaCombo();                
            }
            ConfiguraCTRL();
        }

    

        private void CargaCombo()
        {
            oEspecie = new Especie
            {
                Conexion = oCaso.Conexion,
                ValorRef = oCaso.ValorRef,
              
            };
            DDLEspecie.DataSource = oEspecie.Listar();
            DDLEspecie.DataTextField = "Descripcion";
            DDLEspecie.DataValueField = "Id_Especie";
            DDLEspecie.DataBind();
            DDLEspecie.Items.Insert(0, new ListItem(RecursoNecropsia.LblItemSel, "-1"));
            DDLSexo.Items.Insert(0, new ListItem(RecursoNecropsia.LblItemSel, "-1"));
        }


        protected void ConfiguraCTRL()
        {

            Utileria.ValorRecurso("RecursoNecropsia", "LblTitPaciente", "LblTitPaciente", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiIdAnimal", "LblEtiIdAnimal", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiEspecie", "LblEtiEspecie", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiSexo", "LblEtiSexo", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiEdad", "LblEtiEdad", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiPeso", "LblEtiPeso", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiColor", "LblEtiColor", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiLugMue", "LblEtiLugMue", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiLugMue", "LblEtiLugMue", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiEut", "LblEtiEut", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiFecMue", "LblEtiFecMue", this);
            Utileria.ValorRecurso("RecursoNecropsia", "LblEtiCond", "LblEtiCond", this);

            LblValEtiIdAnimal.Text = oCaso.IdAnimal;            
           

            Utileria.GeneraCtrl(this, "Edad", oCaso.Edad,Utileria.TipoCtrl.Libre);
            Utileria.GeneraCtrl(this, "Peso", oCaso.Peso,Utileria.TipoCtrl.Libre);
            Utileria.GeneraCtrl(this, "Color", oCaso.Color,Utileria.TipoCtrl.Libre);
            Utileria.GeneraCtrl(this, "LugMue", oCaso.LugarMuerte,Utileria.TipoCtrl.Libre);
            Utileria.GeneraCtrl(this, "Eut", oCaso.Eutanacia.ToString(), Utileria.TipoCtrl.RadioBSiNo);
            Utileria.GeneraCtrl(this, "FecMue", oCaso.FechaMuerte.ToString(),Utileria.TipoCtrl.Fecha);
            Utileria.GeneraCtrl(this, "Condicion", oCaso.CondCorporal, Utileria.TipoCtrl.Memo);
        }


        protected void DDLEspecie_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}