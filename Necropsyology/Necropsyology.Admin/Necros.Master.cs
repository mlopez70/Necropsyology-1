using Necropsyology.Datos.Models;
using System;

namespace Necropsyology.Admin
{
    public partial class Necros : System.Web.UI.MasterPage
    {
        Usuario oUser = new Usuario();




        protected void Page_Load(object sender, EventArgs e)
        {
            LblIdoma.Text = Session["Cultura"]!=null?Session["Cultura"].ToString():"es-MX";
        }


        private void Page_Init()
        {
            oUser = (Usuario)Session["Usuario"];
            if (oUser == null)
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
                LblNameUser.Text = oUser.Nombre;
        }
    }
}