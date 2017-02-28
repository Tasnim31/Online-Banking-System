using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        msgLabel.Text = "";
        
        /*if (Request.Cookies["userInfo"] != null)
        {
            Session["email"] = Response.Cookies["userInfo"].Value;
            Response.Redirect("Utility.aspx");
        }
         */
        

        //fo r counting visit
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
        SqlCommand cd = new SqlCommand("update visitcount set count = @count  where id = @id " , objsqlconn);

        cd.Parameters.AddWithValue("@count", coun.ToString());
        cd.Parameters.AddWithValue("@id","id");
        cd.ExecuteNonQuery();

        objsqlconn.Close();

        visitCounter.Text = "No. of Time visits : " + coun; 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void cusloginButton_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT pin FROM custinfo where email =" + "'" + emailBox.Text + "'", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();

            string mainpin = reader["pin"].ToString();

            if (mainpin == passBox.Text)
            {
                if(remCheckbox.Enabled)
                {
                    HttpCookie userInfoCookie = new HttpCookie("userInfo");

                    userInfoCookie["email"] = emailBox.Text;
                    userInfoCookie.Expires = DateTime.Now.AddDays(1d);
                    Response.Cookies.Add(userInfoCookie);
                }

                Session["email"] = emailBox.Text; 

                Response.Redirect("Utility.aspx");

                // or onno kono page e gele oi page e redirect
            }
            else
            {
                msgLabel.Text = "Incorrect email or password";
            }
        }
        else
        {
            msgLabel.Text = "Incorrect email or password";
        }


        objsqlconn.Close();
    }
}