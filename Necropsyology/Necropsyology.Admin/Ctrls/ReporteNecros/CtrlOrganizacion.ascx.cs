using Necropsyology.Datos.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin.Ctrls
{
    public partial class CtrlOrganizacion : System.Web.UI.UserControl
    {
        public String Conexion { get; set; }
        public String ValorRef { get; set; }

        Organizacion oOrg = new Organizacion();
        Usuario oUser = new Usuario();




        protected void Page_Load(object sender, EventArgs e)
        {
            oUser = (Usuario)Session["Usuario"];
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
            DDLOrg.Items.Insert(0, new ListItem(" Seleccione uno.....", "-1"));
        }

        protected void DDLOrg_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedText = DDLOrg.SelectedItem.Text;
            string selectedValue = DDLOrg.SelectedItem.Value;

            String sDat = DDLOrg.SelectedItem.Value;
            oOrg = new Organizacion
            {
                Conexion = Conexion,
                ValorRef = ValorRef,
                Id_Organizacion = int.Parse(DDLOrg.SelectedValue),
            };
            oOrg.Buscar();
            LblValNomOrg.Text = oOrg.Descripcion;
            LblValDomOrg.Text = oOrg.Ubicacion;
            LblValPropOrg.Text = oOrg.Propietario;
            LblValTelOrg.Text = oOrg.Telefono;
            LblValMailOrg.Text = oOrg.Email;
        }
    }
}