using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cusDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]

    public static string[] GetCompletionList(string prefixText, int count)
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection cn = new SqlConnection(con);
        cn.Open();
        string sql = string.Format("select name from custinfo where name like '{0}%'", prefixText);
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "name");
        int rcount, size;
        rcount = ds.Tables[0].Rows.Count;
        if (rcount >= count)
            size = count;

        else
            size = rcount;

        string[] pnames = new string[size];
        for (int i = 0; i < size; i++)
        {
            DataRow row = ds.Tables[0].Rows[i];
            pnames[i] = row["name"].ToString();
        }

        return pnames;

        cn.Close();
    }
 
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}