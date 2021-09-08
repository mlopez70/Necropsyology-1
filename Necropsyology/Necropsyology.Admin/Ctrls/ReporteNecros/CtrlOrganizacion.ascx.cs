using Necropsyology.Core.Recurso;
using Necropsyology.Datos.Models;
using System;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin.Ctrls
{
    public partial class CtrlOrganizacion : System.Web.UI.UserControl
    {
        public String Conexion { get; set; }
        public String ValorRef { get; set; }

        Organizacion oOrg = new Organizacion();
        Usuario oUser = new Usuario();
        Necropsia oCaso = new Necropsia();




        protected void Page_Load(object sender, EventArgs e)
        {
            oUser = (Usuario)Session["Usuario"]==null ? new Usuario(): (Usuario)Session["Usuario"];
            oCaso = (Necropsia)Session["Caso"] == null ? new Necropsia() : (Necropsia)Session["Caso"];
            BuscaOrg(int.Parse(oCaso.IdOrganizacion.ToString()));
            if (!IsPostBack)
            {
                CargaCombo();
            }
        }


        private void CargaCombo()
        {
            oOrg = new Organizacion
            {
                Conexion = Conexion,
                ValorRef = ValorRef,
                Id_Usuario = oUser.IdUsuario,
            };
            DDLOrg.DataSource = oOrg.Listar_UsrOrg();
            DDLOrg.DataTextField = "Descripcion";
            DDLOrg.DataValueField = "Id_Organizacion";
            DDLOrg.DataBind();            
            DDLOrg.Items.Insert(0, new ListItem(RecursoNecropsia.LblItemSel, "-1"));
        }


       


        protected void BuscaOrg(int IdOrg)
        {
            oOrg = new Organizacion
            {
                Conexion = Conexion,
                ValorRef = ValorRef,
                Id_Organizacion = IdOrg,
            };
            oOrg.Buscar();
            CargaOrg(oOrg);
        }


        protected void CargaOrg(Organizacion oOrg)
        {
            LblValNomOrg.Text = oOrg.Descripcion;
            LblValDomOrg.Text = oOrg.Ubicacion;
            LblValPropOrg.Text = oOrg.Propietario;
            LblValTelOrg.Text = oOrg.Telefono;
            LblValMailOrg.Text = oOrg.Email;
        }

        protected void DDLOrg_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedText = DDLOrg.SelectedItem.Text;
            string selectedValue = DDLOrg.SelectedItem.Value;

            int iIdOrg= int.Parse(selectedValue);

            BuscaOrg(iIdOrg);
        }
    }
}