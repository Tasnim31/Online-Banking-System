using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Transaction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   /* protected void dipositeButton_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM custinfo where email =" + "'" + Session["email"].ToString() + "'", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();

        double userAmmount = Convert.ToDouble(withdrawbox.Text.ToString());
        double balance = Convert.ToDouble(reader["balance"].ToString());

        reader.Close();
        balance = balance + userAmmount;

        withdrawLabel.Text = "Successfully updated the balance.Current balance: " + balance.ToString();

        objsqlconn.Close();

        objsqlconn.Open();
        string temp = balance.ToString();
       cmd = new SqlCommand(String.Format("update custinfo set balance = {0} where email ='{1}'",temp,Session["email"].ToString()), objsqlconn);
       cmd.ExecuteNonQuery();
       objsqlconn.Close();

    }
    protected void withdrawButton_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM custinfo where email =" + "'" + Session["email"].ToString() + "'", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();

        double userAmmount = Convert.ToDouble(withdrawbox.Text.ToString());
        double balance = Convert.ToDouble(reader["balance"].ToString());

        reader.Close();
        balance = balance - userAmmount;

        if(balance < 0.0)
        {
            withdrawLabel.Text = "Low balance" + balance.ToString();
            objsqlconn.Close();
            return;
        }
        withdrawLabel.Text = "Successfully updated the balance.Current balance: " + balance.ToString();

        objsqlconn.Close();

        objsqlconn.Open();
        string temp = balance.ToString();
        cmd = new SqlCommand(String.Format("update custinfo set balance = {0} where email ='{1}'", temp, Session["email"].ToString()), objsqlconn);
        cmd.ExecuteNonQuery();
        objsqlconn.Close();
    }*/
    protected void sendButton_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM custinfo where email =" + "'" + Session["email"].ToString() + "'", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();

        double userAmmount = Convert.ToDouble(sendBox.Text.ToString());
        double balance = Convert.ToDouble(reader["balance"].ToString());

        reader.Close();
        balance = balance - userAmmount;

        if (balance < 0.0)
        {
            sendLabel.Text = "Low balance" + balance.ToString();
            objsqlconn.Close();
            return;
        }
        objsqlconn.Close();

        objsqlconn.Open();

        cmd = new SqlCommand("SELECT * FROM custinfo where email =" + "'" + emailBox.Text + "'", objsqlconn);
        reader = cmd.ExecuteReader();
        double personToSendBalance = 0;
        int noCount = 0;
        while(reader.Read())
        {
            noCount ++;
            personToSendBalance = Convert.ToDouble(reader["balance"].ToString());
            break;
        }
        reader.Close();

        if(noCount==0)
        {
            sendLabel.Text = "User to send is not valid" + balance.ToString();
            objsqlconn.Close();
            return;
        }

        objsqlconn.Close();
        objsqlconn.Open();
        string temp = balance.ToString();
        cmd = new SqlCommand(String.Format("update custinfo set balance = {0} where email ='{1}'", temp, Session["email"].ToString()), objsqlconn);
        cmd.ExecuteNonQuery();

        //cmd = new SqlCommand(String.Format("update custinfo set balance = {0} where email ='{1}'", temp, Session["email"].ToString()), objsqlconn);
        
        objsqlconn.Close();


        objsqlconn.Open();
        balance = personToSendBalance + userAmmount;
        temp = balance.ToString();
        cmd = new SqlCommand(String.Format("update custinfo set balance = {0} where email ='{1}'", temp,emailBox.Text.ToString()), objsqlconn);
        cmd.ExecuteNonQuery();

        //cmd = new SqlCommand(String.Format("update custinfo set balance = {0} where email ='{1}'", temp, Session["email"].ToString()), objsqlconn);

        objsqlconn.Close();
        sendLabel.Text = "Successfully Transfered the ammount"; 
    }
}