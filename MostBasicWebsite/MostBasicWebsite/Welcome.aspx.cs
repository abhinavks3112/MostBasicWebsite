using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MostBasicWebsite
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(HttpContext.Current.User != null && HttpContext.Current.User.Identity.IsAuthenticated)
            {
                lblUserName.Text = HttpContext.Current.User.Identity.Name;
            }
        }
    }
}