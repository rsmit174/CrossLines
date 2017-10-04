using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    String fidString = "A";

    protected void Page_Load(object sender, EventArgs e)
    {        

    }

    public void SearchResults_SelectedIndexChanged(Object sender, EventArgs e)
    {
        GridViewRow row = SearchResults.SelectedRow;
        fidString = row.Cells[1].Text;
        //testLabel.Text = fidString;
        Session["fid"] = fidString;
    }

    public void EditFamButton_Click(Object sender, EventArgs e)
    {
        Response.Redirect("EditFamilyInfo.aspx");
    }

    public void EditApptButton_Click(Object sender, EventArgs e)
    {
        Response.Redirect("Appointments.aspx");
    }

    public void ShoppingListButton_Click(Object sender, EventArgs e)
    {
        Response.Redirect("ShoppingList.aspx");
    }

    public void nameSubmitButton_Click(Object sender, EventArgs e)
    {
        // Submit to database to search
        // Use wildcards to account for partial name searches
        /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT [UID], [FirstName], [LastName], [Address1], [City], [State], [ZIP] FROM [Client_Info] WHERE LastName LIKE '*@Name*'", conn);
        try
        {
            using (conn)
            {
                conn.Open();
                SqlParameter Name = new SqlParameter();
                Name.ParameterName = "@Name";
                Name.SqlDbType = System.Data.SqlDbType.VarChar;
                Name.Value = searchBox.Text.Trim();
                cmd.Parameters.Add(Name);
                SearchResults.DataSource = cmd.ExecuteReader();
                SearchResults.DataBind();
                SearchResults.Visible = true;
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }*/
    }    
}