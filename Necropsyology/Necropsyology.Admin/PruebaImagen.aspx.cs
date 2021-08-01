using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin
{
    public partial class PruebaImagen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCarga_Click(object sender, EventArgs e)
        {
            if (FupImg.HasFiles)
            {
                String sDat = String.Empty;
                Table Tbl = new Table();
                int nRenglones = FupImg.PostedFiles.Count / 3;
                for (int nCRen = 0; nCRen < nRenglones; nCRen++)
                {
                    TableRow TRow = new TableRow();
                    for (int nCCol = 0; nCCol < 3; nCCol++)
                    {
                        TableCell TCel = new TableCell();
                        ImageButton ImgBtn = new ImageButton();
                        ImgBtn.ImageUrl = "images/icons/FAVICON.png";
                        ImgBtn.Width = Unit.Pixel(100);
                        ImgBtn.Height = Unit.Pixel(100);
                        TCel.Controls.Add(ImgBtn);
                        TRow.Cells.Add(TCel);
                    }
                    Tbl.Rows.Add(TRow);
                }
                PnlFotos.Controls.Add(Tbl);
            }
        }
    }
}