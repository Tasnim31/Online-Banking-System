using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
}