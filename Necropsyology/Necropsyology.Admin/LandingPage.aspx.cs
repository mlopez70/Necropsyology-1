using Necropsyology.Core;
using System;

namespace Necropsyology.Admin
{
    public partial class LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblIntro.Text = Recurso.Intro.ToString();
        }
    }
}