using ClosedXML.Excel;
using DocumentFormat.OpenXml.Spreadsheet;
using System;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Web;

public partial class ExportToExcel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button1_Click(object sender, EventArgs e)
    {

        //Create the data set and table
        DataSet ds = new DataSet("New_DataSet");
        DataTable dt = new DataTable("New_DataTable");

        //Set the locale for each
        ds.Locale = System.Threading.Thread.CurrentThread.CurrentCulture;
        dt.Locale = System.Threading.Thread.CurrentThread.CurrentCulture;


        string conString = null;
        string sql = "SELECT * FROM Client_Info;";
        conString = "Server= sqlserver\\crosslines; Database=CrossLinesDB;Integrated Security=true;";

        

        using (SqlConnection cnn = new SqlConnection(conString))
        using (SqlDataAdapter sda = new SqlDataAdapter(sql, cnn))
        {
            try
            {
                cnn.Open();
                Response.Write("Connection Open ! ");
      
                sda.Fill(dt);

                XLWorkbook wb = new XLWorkbook();
                             
                wb.Worksheets.Add(dt);

                //wb.SaveAs("test123.xlsx");
                Response.Write("Data written");

                HttpResponse httpResponse = Response;
                httpResponse.Clear();
                httpResponse.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                httpResponse.AddHeader("content-disposition", "attachment;filename=\"Excel_Export_" + System.DateTime.Now.ToString() + ".xlsx\"");

                // Flush the workbook to the Response.OutputStream
                using (MemoryStream memoryStream = new MemoryStream())
                {
                    wb.SaveAs(memoryStream);
                    memoryStream.WriteTo(httpResponse.OutputStream);
                    memoryStream.Close();
                }

                httpResponse.End();

                cnn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Can not open connection ! ");
            }
        }
    }
       

    
}