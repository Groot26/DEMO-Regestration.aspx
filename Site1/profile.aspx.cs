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
                Response.Redirect("~/auth/index.html");
            
            else
            {
                if (!IsPostBack)
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
                        TextBox_username.Text = sdr["Username"].ToString();
                        TextBox_pwd.Text = sdr["Password"].ToString();
                    }
                    con.Close();
                }
            }

        }

        protected void Button_update_Click(object sender, EventArgs e)
        {
            SqlCommand update = new SqlCommand("update data set Name = '"+TextBox_name.Text+"', Email = '"+TextBox_email.Text+"', Number = "+ Convert.ToInt32(TextBox_number.Text)+", Age = "+Convert.ToInt32(TextBox_age.Text)+", Password = '"+TextBox_pwd.Text+ "' where Username='" + Session["uname"].ToString() + "'", con);
            con.Open();
            update.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Label_updateSucess.Text = ("Update Sucessfull");
            update.Dispose();
        }

        protected void Button_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");

        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("~/auth/login.aspx");
        }

        protected void Button_delete_Click(object sender, EventArgs e)
        {
            SqlCommand delete = new SqlCommand("DELETE FROM data where Username = '" +  Session["uname"].ToString() + "' ", con);
            con.Open();
            delete.ExecuteNonQuery();
            con.Close();
            Session.Abandon();
            Session.RemoveAll();
            delete.Dispose();
            Response.Redirect("~/auth/login.aspx");

        }
    }
}