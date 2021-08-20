using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Necropsyology.Admin.Ctrls
{
    public partial class Imagenes : System.Web.UI.UserControl
    {

        ArrayList aListaDisp = new ArrayList();
        ArrayList aListaSel = new ArrayList();
        
        public String sRutaTrab { get; set; }
        public int IdUsuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

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
                if (aListaSel.Count < 10)
                {
                    aListaSel.Add(sFileSel);
                    int nDis = aListaDisp.LastIndexOf(sFileSel);
                    aListaDisp.RemoveAt(nDis);
                    LblError.Visible = false;
                }
               else
                {
                    LblError.Visible = true;
                    LblError.Text = "Recuerde solo puede seleccionar 10 imagenes";
                }
            }
            else
            {
                aListaDisp.Add(sFileSel);
                int nDis = aListaSel.LastIndexOf(sFileSel);
                aListaSel.RemoveAt(nDis);
                LblError.Visible = false;
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