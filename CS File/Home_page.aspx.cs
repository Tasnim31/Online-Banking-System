using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        msgLabel1.Text = "";
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM visitcount", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();

        int coun = Convert.ToInt32(reader["count"].ToString());
        objsqlconn.Close();
        objsqlconn.Open();

        coun++;
        SqlCommand cd = new SqlCommand("update visitcount set count = @count  where id = @id ", objsqlconn);

        cd.Parameters.AddWithValue("@count", coun.ToString());
        cd.Parameters.AddWithValue("@id", "id");
        cd.ExecuteNonQuery();

        objsqlconn.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void loginButton1_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT pin FROM custinfo where email =" + "'" + emailBox1.Text + "'", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();

            string mainpin = reader["pin"].ToString();

            if (mainpin == passwordBox1.Text)
            {
                if (loginCheckBox1.Enabled)
                {
                    HttpCookie userInfoCookie = new HttpCookie("userInfo");

                    userInfoCookie["email"] = emailBox1.Text;
                    userInfoCookie.Expires = DateTime.Now.AddDays(1d);

                    Response.Cookies.Add(userInfoCookie);
                }

                Session["email"] = emailBox1.Text;
                Session["password"] = passwordBox1.Text; 

                Response.Redirect("Utility.aspx");

                // or onno kono page e gele oi page e redirect
            }
            else
            {
                msgLabel1.Text = "Incorrect email or password";
            }
        }
        else
        {
            msgLabel1.Text = "Incorrect email or password";
        }


        objsqlconn.Close();
    }
    
}