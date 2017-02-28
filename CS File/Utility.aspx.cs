using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Utility : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["userInfo"];
        if(cookie!=null)
        {
            welcomeMsgLabel.Text = "Hi " + cookie["email"];
        }
        else
        {
            Response.Redirect("customer_login.aspx");   
        }
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

        visitCounter.Text = "No. of Time visits : " + coun; 
    }
    protected void cuslogoutButton_Click(object sender, EventArgs e)
    {
        //deleting cookie
       

        HttpCookie userInfoCookie = new HttpCookie("userInfo");


        userInfoCookie.Expires = DateTime.Now.AddDays(-1d);

        Response.Cookies.Add(userInfoCookie);

       // Session.Abandon();
        Session["email"] = null;
        Response.Redirect("Home_page.aspx");
    }
}