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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\.net projects\Regestration DEMO\App_Data\userDatebase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_create_acc_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void Button_signin_Click(object sender, EventArgs e)
        {

           
                SqlCommand authenticate = new SqlCommand("select * from data where Username='" + TextBox_username.Text + "' and Password='" + TextBox_pwd.Text + "'", con);
                con.Open();
                SqlDataReader sdr = authenticate.ExecuteReader();
                {
                    sdr.Read();

                    if (sdr.HasRows)
                    {
                        Session["LoggedIn"] = "1";
                        Session["uname"] = sdr["Username"].ToString();
                        Session["pwd"] = sdr["Password"].ToString();

                    if (Session["uname"].ToString() == "admin")
                        {
                            Response.Redirect("~/admin/adminPage.aspx");
                        }
                        else
                            Response.Redirect("~/Site1/homePage.aspx");
                    }
                    else
                        Label_auth.Text = ("Username Password is Incorrect");

                }
                con.Close();
            
        }
    }
}