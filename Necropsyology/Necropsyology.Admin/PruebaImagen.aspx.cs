using System;
using System.Collections;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin
{
    public partial class PruebaImagen : System.Web.UI.Page
    {
        ArrayList aListaDisp = new ArrayList();
        ArrayList aListaSel = new ArrayList();
        static int IdUsuario = 1575;
        static String sRutaTrab = Properties.Settings.Default.CarTrabajoNecros + IdUsuario + "/";

        protected void Page_Load(object sender, EventArgs e)
        {
            //CargaPaneles();
        }


        protected void BtnCarga_Click(object sender, EventArgs e)
        {
            if (FupImg.HasFiles)
            {
                foreach (HttpPostedFile pFile in FupImg.PostedFiles)
                {
                    CargaArchivo(pFile);
                }
            }
            CargaPaneles();
        }


        private void CargaArchivo(HttpPostedFile pFile)
        {
            aListaDisp = (ArrayList)Session["ImgDisp"];
            aListaSel = (ArrayList)Session["ImgSel"];
            if (aListaDisp == null)
                aListaDisp = new ArrayList();
            if (aListaSel == null)
                aListaSel = new ArrayList();
            String sArchivo = Path.GetFileName(pFile.FileName);
            String sURL = sRutaTrab + sArchivo;
            String sRuta = Server.MapPath(sURL);

            if (!Directory.Exists(Server.MapPath(sRutaTrab)))
                Directory.CreateDirectory(Server.MapPath(sRutaTrab));
            if (aListaDisp.LastIndexOf(sArchivo) == -1 && aListaSel.LastIndexOf(sArchivo) == -1)
            {
                pFile.SaveAs(sRuta);
                aListaDisp.Add(sArchivo);
            }
            Session["ImgDisp"] = aListaDisp;
        }



        protected void CargaPaneles()
        {
            aListaDisp = (ArrayList)Session["ImgDisp"];
            aListaSel = (ArrayList)Session["ImgSel"];
            if (aListaDisp == null)
                aListaDisp = new ArrayList();
            if (aListaSel == null)
                aListaSel = new ArrayList();

            int nFile = 1;
            for (int nContDis = 1; nContDis < 31; nContDis++)
            {
                ImageButton ImgBtn = (ImageButton)FindControlRecursive(PnlDis, "ImgBtn_" + nContDis);
                ImgBtn.Visible = false;
                ImgBtn.ImageUrl = "";
            }
            foreach (String sFile in aListaDisp)
            {
                ImageButton ImgBtn = (ImageButton)FindControlRecursive(PnlDis, "ImgBtn_" + nFile);
                ImgBtn.Height = Unit.Pixel(100);
                ImgBtn.Width = Unit.Pixel(100);
                ImgBtn.Visible = true;
                ImgBtn.ImageUrl = sRutaTrab + sFile;
                ImgBtn.Click += ImgBtn_Click;
                nFile++;
            }
            PnlDis.GroupingText = "Imagenes Disponibles: " + aListaDisp.Count.ToString();




            nFile = 1;
            for (int nContSel = 1; nContSel < 31; nContSel++)
            {
                ImageButton ImgBtn = (ImageButton)FindControlRecursive(PnlSel, "ImgBtnSel_" + nContSel);
                ImgBtn.Visible = false;
                ImgBtn.ImageUrl = "";
            }
            foreach (String sFile in aListaSel)
            {
                ImageButton ImgBtn = (ImageButton)FindControlRecursive(PnlSel, "ImgBtnSel_" + nFile);
                ImgBtn.Visible = true;
                ImgBtn.Height = Unit.Pixel(100);
                ImgBtn.Width = Unit.Pixel(100);
                ImgBtn.ImageUrl = sRutaTrab + aListaSel[nFile - 1].ToString();
                ImgBtn.Click += ImgBtn_Click;
                nFile++;
            }
            PnlSel.GroupingText = "Imagenes Seleccionadas: " + aListaSel.Count.ToString();
        }


        protected void ImgBtn_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            aListaDisp = (ArrayList)Session["ImgDisp"];
            aListaSel = (ArrayList)Session["ImgSel"];
            if (aListaDisp == null)
                aListaDisp = new ArrayList();
            if (aListaSel == null)
                aListaSel = new ArrayList();
            ImageButton oBtnImg = (ImageButton)sender;
            String[] sANombre = oBtnImg.ImageUrl.Split('/');
            String sFileSel = sANombre[sANombre.Length - 1].ToString();
            Boolean lSel = aListaSel.LastIndexOf(sFileSel) > -1 ? true : false;
            if (!lSel)
            {
                aListaSel.Add(sFileSel);
                int nDis = aListaDisp.LastIndexOf(sFileSel);
                aListaDisp.RemoveAt(nDis);
            }
            else
            {
                aListaDisp.Add(sFileSel);
                int nDis = aListaSel.LastIndexOf(sFileSel);
                aListaSel.RemoveAt(nDis);
            }
            Session["ImgDisp"] = aListaDisp;
            Session["ImgSel"] = aListaSel;
            CargaPaneles();
        }


        public static Control FindControlRecursive(Control root, string id)
        {
            if (root.ID == id)
            {
                return root;
            }
            foreach (Control c in root.Controls)
            {
                Control t = FindControlRecursive(c, id);
                if (t != null)
                {
                    return t;
                }
            }
            return null;
        }
    }
}