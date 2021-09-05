using Necropsyology.Core;
using System;

namespace Necropsyology.Admin
{
    public partial class Encrytacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String sControl1 = Seguridad.EncriptarCadenaDeCaracteres(TxtValor.Text, TxtLlave.Text);
            TxtResult.Text = sControl1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String sControl1 = Seguridad.DesencriptarCadenaDeCaracteres(TxtControl.Text, TxtLlave.Text);
            string sControl2 = Seguridad.DesencriptarCadenaDeCaracteres(TxtValor.Text, sControl1);
            TxtResult.Text = sControl2;
        }
    }
}