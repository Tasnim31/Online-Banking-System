using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DefaultTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            loaddropdown();
        }
    }

    private void loaddropdown()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("XMLFile.xml"));
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "sex";
        DropDownList1.DataBind();

    }
  
  
 
}
 
 