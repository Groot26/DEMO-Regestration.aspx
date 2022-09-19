using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WildForm
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\.net projects\Regestration DEMO\App_Data\userDatebase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_submit_Click(object sender, EventArgs e)
        {
            
            SqlCommand dataEntry = new SqlCommand("insert into data values('"+TextBox_name.Text+ "','" + TextBox_email.Text + "','" + Convert.ToInt32(TextBox_number.Text) + "','" + Convert.ToInt32(TextBox_age.Text) + "','"+ Convert.ToDateTime(TextBox_dob.Text).ToString("MM/dd/yyyy") + "','" + TextBox_username.Text + "','" + TextBox_pwd.Text + "') ", con);
            con.Open();
            dataEntry.ExecuteNonQuery();
            con.Close();
            Session["LoggedIn"] = "1";
            Session["uname"] = TextBox_username.Text;
            Response.Redirect("~/Site1/homePage.aspx");
        }
    }
}