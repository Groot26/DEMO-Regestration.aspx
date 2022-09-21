using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Regestration_DEMO.Site1
{
    public partial class master_page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Profile_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Site1/profile.aspx");
        }

        protected void Wildsnap_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }
    }
}