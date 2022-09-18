using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Regestration_DEMO.Site1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\.net projects\Regestration DEMO\App_Data\userDatebase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
                Response.Redirect("~/auth/404/index.html");
            
            else
            {
                SqlCommand bio = new SqlCommand("select * from data where Username='" + Session["uname"].ToString() + "'", con);

                con.Open();
                SqlDataReader sdr = bio.ExecuteReader();
                {
                    sdr.Read();
                    TextBox_name.Text = sdr["Name"].ToString();
                    TextBox_email.Text = sdr["Email"].ToString();
                    TextBox_number.Text = sdr["Number"].ToString();
                    TextBox_age.Text = sdr["Age"].ToString();
                    TextBox_dob.Text = Convert.ToDateTime(sdr["DOB"]).ToString("dd/MM/yyyy");
                    TextBox_username.Text = sdr["Username"].ToString();
                    TextBox_pwd.Text = sdr["Password"].ToString();
                }
                con.Close();
            }

        }

        protected void Button_update_Click(object sender, EventArgs e)
        {
            SqlCommand update = new SqlCommand("update data Set Name ='" + TextBox_name + "', Email ='" + TextBox_email + "', Number ='" + TextBox_number + "', Age ='" + TextBox_age + "', DOB ='" + Convert.ToDateTime(TextBox_dob.Text).ToString("MM/dd/yyyy") + "', Username ='" + TextBox_username + "', Password ='" + TextBox_pwd + "' where Username ='" + Session["uname"].ToString() + "' ", con);
            con.Open();
            update.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Label_updateSucess.Text = ("Update Sucessfull");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("homePage.aspx");
        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/auth/login.aspx");
        }
    }
}