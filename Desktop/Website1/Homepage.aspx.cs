using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void NewFamily_Click(object sender, EventArgs e)
    {
        Response.Redirect("Application.aspx");
    }

    protected void Search_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx");
    }


    protected void Export_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExportToExcel.aspx");
    }

    protected void MasterSchedule_Click(object sender, EventArgs e)
    {
        Response.Redirect("MasterSchedule.aspx");
    }

    protected void FamilyReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("FamilyReport.aspx");
    }

    protected void ChildGender_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChildGenderReport.aspx");
    }

    protected void ClothingSize_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClothingSizeReport.aspx");
    }
}