using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
public partial class pdfDownload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM custinfo where email =" + "'" + Session["email"].ToString() + "'", objsqlconn);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();

        int balance = Convert.ToInt32(reader["balance"].ToString());
        string name = reader["name"].ToString();
        string address = reader["address"].ToString();
        string pin = reader["pin"].ToString();
        string type = reader["type"].ToString();
        string email = reader["email"].ToString();


        objsqlconn.Close();

        Document doc = new Document(iTextSharp.text.PageSize.POSTCARD , 10, 10, 10, 30);
       
        PdfWriter pdfWri = PdfWriter.GetInstance(doc, new FileStream( "E:/WebProject/OBS/report/" + name + ".pdf", FileMode.Create));

        doc.Open();

        PdfPCell cell = new PdfPCell(new Phrase("Details of your account"));
        cell.Colspan = 1;
        cell.HorizontalAlignment = 1;
     

        PdfPTable table = new PdfPTable(1);
        table.AddCell(cell);

        table.AddCell("Name : " + name);
        table.AddCell("Address: " + address);
        table.AddCell("Email: " + email);
        table.AddCell("Account Type: " + type);
        table.AddCell("pin:"+ pin);
        table.AddCell("balance: " + balance );


        doc.Add(table);
        doc.Close();

        Response.ContentType = "Application/pdf";
        //Get the physical path to the file.
        string FilePath = MapPath("~/report/" + name + ".pdf");
        //Write the file directly to the HTTP content output stream.
        Response.WriteFile(FilePath);
        Response.End();

    }
}