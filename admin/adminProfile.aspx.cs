using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Regestration_DEMO.admin
{
    public partial class adminProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\.net projects\Regestration DEMO\App_Data\userDatebase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
                Response.Redirect("~/auth/index.html");
        }

        protected void Button_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("~/auth/login.aspx");
        }

        protected void Button_update_Click(object sender, EventArgs e)
        {
            SqlCommand update = new SqlCommand("update data set Password='"+TextBox_pwd.Text+"' where Username='admin' ", con);
            con.Open();
            update.ExecuteNonQuery();
            con.Close();
            Label_confirm.Text = "Password Updated!!";
        }
    }
}