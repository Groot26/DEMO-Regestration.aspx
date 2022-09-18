using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Regestration_DEMO.Site1
{
    public partial class homePage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void nxt_Click(object sender, EventArgs e)
        {
            Int16 x = Convert.ToInt16( MultiView_image.ActiveViewIndex);
            Int16 y = Convert.ToInt16(MultiView_image.Views.Count);
            if (x < y-1)
                MultiView_image.ActiveViewIndex += 1;
            else
                MultiView_image.SetActiveView(View1);
        }

        protected void prv_Click(object sender, EventArgs e)
        {
            Int16 x = Convert.ToInt16(MultiView_image.ActiveViewIndex);
            Int16 y = Convert.ToInt16(MultiView_image.Views.Count);
            if (x > 0)
                MultiView_image.ActiveViewIndex -= 1;
            else
                MultiView_image.ActiveViewIndex = y-1;
            
        }
    }
}