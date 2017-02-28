using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class balanceCheck : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM custinfo where email =" + "'" + Session["email"].ToString() + "'", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();

        int balance = Convert.ToInt32(reader["balance"].ToString());
        string name = reader["name"].ToString();
        objsqlconn.Close();

        nameLabel.Text = name;

        balanceLabel.Text = balance.ToString();
    }
}