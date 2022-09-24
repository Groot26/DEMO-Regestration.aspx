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
            
            SqlCommand dataEntry = new SqlCommand("insert into data values('"+TextBox_name.Text+ "','" + TextBox_email.Text + "','" + Convert.ToInt32(TextBox_number.Text) + "','" + Convert.ToInt32(TextBox_age.Text) + "','" + TextBox_username.Text + "','" + TextBox_pwd.Text + "') ", con);
            con.Open();
            dataEntry.ExecuteNonQuery();
            con.Close();
            Session["LoggedIn"] = "1";
            Session["uname"] = TextBox_username.Text;
            Response.Redirect("~/Site1/homePage.aspx");
        }

        protected void TextBox_username_TextChanged(object sender, EventArgs e)
        {
            SqlCommand checkUN = new SqlCommand("select * from data where Username='" + TextBox_username.Text + "' ", con);
            con.Open();
            SqlDataReader sdr = checkUN.ExecuteReader();
            {
                sdr.Read();

                if (sdr.HasRows)
                {
                    Label_checkUN.ForeColor = System.Drawing.Color.Red;
                    Label_checkUN.Text = "Username Already Exist!!";
                    Button_submit.Enabled = false;
                }
                else
                {
                    Label_checkUN.ForeColor = System.Drawing.Color.Green;
                    Label_checkUN.Text = "UserName Available";
                    Button_submit.Enabled = true;

                }
            }
            con.Close();
        }
    }
}