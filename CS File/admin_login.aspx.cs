using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "ADMIN" && TextBox2.Text == "1307031" )
            Response.Write("<script>alert('Login Successful')</script>");

        else
            Response.Write("<script>alert('Unsuccessful')</script>");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "ADMIN" && TextBox2.Text == "1307031")
        {
            Response.AppendHeader("Refresh", "2;url=cusDetails.aspx");
            Label3.Text = "Login Successful!!!  You will now be redirected in 2 seconds";
           /* Response.Write("<script>alert('Login Successful')</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Login Successful');window.location='cusDetails.aspx';", true);*/
        }

        else

            Response.Write("<script>alert('Login Failed')</script>");
    }
}