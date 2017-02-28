using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Open_New_Account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        msgLabel.Text = "";
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
        if (!Page.IsPostBack)
        {
            loaddropdown();
        }

        visitCounter.Text = "No. of Time visits : " + coun; 
    }
     private void loaddropdown()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("XMLFile.xml"));
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "sex";
        DropDownList1.DataBind();

    }
    protected void n_submit_Button_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

       /* if (n_pin_TextBox.Text.Length < 8)
        {
            msgLabel.Text = "Pin at least 8 digit long";
        }
        else
        {*/
        SqlCommand cmd = new SqlCommand("insert into custinfo(name, fathername, address,birthday,age,nationality, gender,call,email,type, balance,pin) values ( '" + n_name_TextBox.Text + "', '" + n_father_TextBox.Text + "','" + n_address_TextBox.Text + "','" + n_BD_TextBox.Text + "','" + n_age_TextBox.Text + "','" + n_nationality_TextBox.Text + "','" + DropDownList1.Text + "','" + n_call_TaxtBox.Text + "','" + n_email_TextBox.Text + "','" + n_accounttype_TextBox.Text + "','" + n_balance_TextBox.Text + "','" + n_pin_TextBox.Text + "')", objsqlconn);
            cmd.ExecuteNonQuery();
            objsqlconn.Close();

            n_name_TextBox.Text = "";
            n_father_TextBox.Text = "";
            n_address_TextBox.Text = "";
            n_age_TextBox.Text = "";
            n_nationality_TextBox.Text = "";
            n_BD_TextBox.Text = "";
            //DropDownList1.Text = "";
            n_call_TaxtBox.Text = "";
            n_email_TextBox.Text = "";
            n_accounttype_TextBox.Text = "";
            n_balance_TextBox.Text = "";
            n_pin_TextBox.Text = "";

            Response.Redirect("customer_login.aspx");
       
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}