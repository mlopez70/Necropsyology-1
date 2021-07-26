using Necropsyology.Core.Recurso;
using System.ComponentModel;
using System.Threading;
using Xamarin.Forms;

namespace Necropsyology
{
    // Learn more about making custom code visible in the Xamarin.Forms previewer
    // by visiting https://aka.ms/xamarinforms-previewer
    [DesignTimeVisible(false)]
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            System.Globalization.CultureInfo infCul = new System.Globalization.CultureInfo("pt");
            Thread.CurrentThread.CurrentCulture = infCul;
            Thread.CurrentThread.CurrentUICulture = infCul;

            LblInicio.Text = Recursos.Promo1.ToString();
        }
    }
}
