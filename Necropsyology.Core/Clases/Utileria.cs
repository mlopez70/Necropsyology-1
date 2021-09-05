using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Necropsyology.Core
{
    public class Utileria
    {
        public static HtmlControl FindHtmlControlByIdInControl(Control control, string id)
        {
            foreach (Control childControl in control.Controls)
            {
                if (childControl.ID != null && childControl.ID.Equals(id, StringComparison.OrdinalIgnoreCase) && childControl is HtmlControl)
                {
                    return (HtmlControl)childControl;
                }

                if (childControl.HasControls())
                {
                    HtmlControl result = FindHtmlControlByIdInControl(childControl, id);
                    if (result != null) return result;
                }
            }

            return null;
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

        public static void ValorRecurso(String ObjRecurso,String Llave,String Control,Control objCtrl)
        {
            String sValor = String.Empty;
            Label oLbl = (Label)FindControlRecursive(objCtrl, Control);
            if(oLbl!=null)
            {
                switch(ObjRecurso)
                {
                    case "RecursoNecropsia":
                        sValor=Recurso.RecursoNecropsia.ResourceManager.GetString(Llave);
                        break;
                }
                oLbl.Text = sValor;
            }
        }

        public static void ValorCampo(String Valor, String Control, Control objCtrl)
        {
            Label oLbl = (Label)FindControlRecursive(objCtrl, Control);
            if(oLbl!=null)
            {
                oLbl.Text = Valor;
            }
        }
    }
}
