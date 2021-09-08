using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin.Ctrls
{
    public partial class Pulmon : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChkPul_SelectedIndexChanged(object sender, EventArgs e)
        {
            String sValor = "/Images/Pulmon/P";
            foreach(ListItem item in ChkPul.Items)
            {
                if(item.Selected)
                {
                    sValor += "-" + item.Value.ToString();
                }
            }
            sValor += ".png";
            if (sValor.Length == 21 )
                sValor = "Images/Pulmon/Pulmones.png";
            if (!File.Exists(Server.MapPath(sValor)))
                File.Copy(Server.MapPath("/Images/Pulmon/Pulmones.png"), Server.MapPath(sValor));
            ImgPul.ImageUrl = sValor;
            
        }
    }
}