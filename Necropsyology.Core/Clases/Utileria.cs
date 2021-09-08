using AjaxControlToolkit;
using Necropsyology.Core.Recurso;
using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Necropsyology.Core
{
    public class Utileria
    {
        public enum TipoCtrl { Fecha,Libre,RadioBSiNo,Memo}

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


        public static void GeneraCtrl(Control oCtrl,String sIdent,String sValor,TipoCtrl TCtrl)
        {
            String sIdPnl = "Pnl" + sIdent;
            String sIdTxt = "TxtVal" + sIdent;
            String sIdLlave = "TxtPH" + sIdent;
                
            Panel oPnl = (Panel)Utileria.FindControlRecursive(oCtrl, sIdPnl);
            if (oPnl != null)
            {
               
                if(TCtrl==TipoCtrl.Fecha)
                {
                    Literal Literal1 = new Literal();
                    Literal1.Text = @"<a href=""#"" alt=""" + RecursoNecropsia.ResourceManager.GetString(sIdLlave) + @""" class=""tooltipDemo"" />";
                    oPnl.Controls.Add(Literal1);
                    TextBox TxtCtrl = new TextBox();
                    TxtCtrl.CssClass = "LeftGetValorFec";
                    TxtCtrl.ID = sIdTxt;
                    TxtCtrl.Text = sValor;
                    TxtCtrl.Attributes.Add("placeholder", RecursoNecropsia.ResourceManager.GetString(sIdLlave));
                    CalendarExtender myCalExt = new CalendarExtender
                    {
                        Animated = true,
                        CssClass = "CalendarCSS",
                        StartDate = DateTime.Parse("01/01/1900"),
                        SelectedDate = DateTime.Parse(sValor),
                        TargetControlID = TxtCtrl.ID,
                        DaysModeTitleFormat = "MMMM yyyy",
                    };                   
                    oPnl.Controls.Add(TxtCtrl);
                    oPnl.Controls.Add(myCalExt);
                }
                else if(TCtrl==TipoCtrl.RadioBSiNo)
                {
                    RadioButtonList RBList = new RadioButtonList();
                    ListItem ItemSi = new ListItem("Si", "0");
                    ListItem ItemNo = new ListItem("No", "1");
                    RBList.Items.Add(ItemSi);
                    RBList.Items.Add(ItemNo);
                    RBList.RepeatDirection = System.Web.UI.WebControls.RepeatDirection.Horizontal;
                    RBList.CssClass = "LeftGetValor";
                    RBList.Attributes.Add("placeholder", RecursoNecropsia.ResourceManager.GetString(sIdLlave));
                    Literal Literal1 = new Literal();
                    Literal1.Text = @"<a href=""#"" alt=""" + RecursoNecropsia.ResourceManager.GetString(sIdLlave) + @""" class=""tooltipDemo"" />";
                    oPnl.Controls.Add(Literal1);
                    oPnl.Controls.Add(RBList);
                }
                else if(TCtrl==TipoCtrl.Libre)
                {
                    Literal Literal1 = new Literal();
                    Literal1.Text = @"<a href=""#"" alt=""" + RecursoNecropsia.ResourceManager.GetString(sIdLlave) + @""" class=""tooltipDemo"" />";
                    oPnl.Controls.Add(Literal1);
                    TextBox TxtCtrl = new TextBox();
                    TxtCtrl.ID = sIdTxt;
                    TxtCtrl.Text = sValor;
                    TxtCtrl.CssClass = "LeftGetValor";
                    TxtCtrl.Attributes.Add("placeholder", RecursoNecropsia.ResourceManager.GetString(sIdLlave));
                    oPnl.Controls.Add(TxtCtrl);
                }
                else if(TCtrl==TipoCtrl.Memo)
                {
                    Literal Literal1 = new Literal();
                    Literal1.Text = @"<a href=""#"" alt=""" + RecursoNecropsia.ResourceManager.GetString(sIdLlave) + @""" class=""tooltipDemo"" />";
                    oPnl.Controls.Add(Literal1);
                    TextBox TxtCtrl = new TextBox();
                    TxtCtrl.ID = sIdTxt;
                    TxtCtrl.Text = sValor;
                    TxtCtrl.CssClass = "LeftGetValor";
                    TxtCtrl.TextMode = TextBoxMode.MultiLine;
                    TxtCtrl.Attributes.Add("placeholder", RecursoNecropsia.ResourceManager.GetString(sIdLlave));
                    oPnl.Controls.Add(TxtCtrl);
                }
               
            }
        }


        public static void RecursoPlaceHolder(String ObjRecurso, String Llave, String Control, Control objCtrl)
        {
            String sValor = String.Empty;
            TextBox oTxt = (TextBox)FindControlRecursive(objCtrl, Control);
            if (oTxt != null)
            {
                switch (ObjRecurso)
                {
                    case "RecursoNecropsia":
                        sValor = Recurso.RecursoNecropsia.ResourceManager.GetString(Llave);
                        break;
                }
                oTxt.Attributes.Add("placeholder", sValor);
                //oTxt.ToolTip = sValor;
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
