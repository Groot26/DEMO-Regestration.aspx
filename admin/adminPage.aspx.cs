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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\.net projects\Regestration DEMO\App_Data\userDatebase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_delete_Click(object sender, EventArgs e)
        {
            if (TextBox_adminPWD.Text == Session["pwd"].ToString())
            {
                SqlCommand delete = new SqlCommand("DELETE FROM data where Username = '" + TextBox_userID.Text + "' ", con);
                con.Open();
                delete.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
            else
                Label.Text = "Password Incorrect";
        }

        protected void Profile_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminProfile.aspx");
        }
    }
}