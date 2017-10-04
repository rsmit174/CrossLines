using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Appointments : System.Web.UI.Page
{
    public DateTime apptDate;
    public TimeSpan apptTime;
    public TimeSpan addForPM = new TimeSpan(12, 0, 0);
    public string FID;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Stores default month for calendar
        int storeMonth = 12;        

        // Defaults calendar display month to storeMonth (that's when the Christmas Store is)
        Calendar1.VisibleDate = new DateTime(Calendar1.TodaysDate.Year, storeMonth, 1);

        FID = Convert.ToString(Session["fid"]);
    }

    //public void Calendar1_OnSelectionChanged(Object sender, EventArgs e)
    //{
    //    apptDate = Calendar1.SelectedDate;
    //    Response.Write(apptDate.ToString());
    //}

    // These three methods control what happens when dropdownlist selections are changed
    public void hourDD_SelectedIndexChanged(Object sender, EventArgs e)
    {
        apptTime = new TimeSpan(Convert.ToInt16(hourDD.SelectedValue), Convert.ToInt16(minDD.SelectedValue), 0);        
    }

    public void minDD_SelectedIndexChanged(Object sender, EventArgs e)
    {
        apptTime = new TimeSpan(Convert.ToInt16(hourDD.SelectedValue), Convert.ToInt16(minDD.SelectedValue), 0);        
    }

    //public void dayOrNightDD_SelectedIndexChanged(Object sender, EventArgs e)
    //{
    //    apptTime = new TimeSpan(Convert.ToInt16(hourDD.SelectedValue), Convert.ToInt16(minDD.SelectedValue), 0);
    //    // If pm is chosen from the drop box, add 12 hours to the hour part of the timespan
    //    if (dayOrNightDD.SelectedIndex == 2)
    //    {
    //        apptTime.Add(new TimeSpan(12, 0, 0));            
    //    }        
    //}

    protected void ClientOutputButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("ClientInfoOutput.aspx", true);
    }

    public void dateSubmitButton_Click(Object sender, EventArgs e)
    {
        DateTime appt;

        //if (Calendar1.SelectedDate.Month == 12)
        //{
            if (dayOrNightDD.SelectedIndex == 2)
            {
                appt = Calendar1.SelectedDate.Add(apptTime.Add(addForPM));
            }
            else
            {
                appt = Calendar1.SelectedDate.Add(apptTime);
            }

            Response.Write(appt + " ");
        //}

        //Response.Write(appt.ToString());
            // Add appointment time to database
            ////This is test data for the time being.
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //// SqlCommand cmd = new SqlCommand("UPDATE [Family] SET [Appointment] = @appt WHERE [FID] = 1003", conn);
            try
            {
                using (conn)
                {
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandText = "UPDATE Family SET Appointment = @appt WHERE FID = @FID";
                        cmd.Parameters.AddWithValue("@appt", appt);
                        cmd.Parameters.AddWithValue("@FID", FID);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    //conn.Open();
                    //SqlParameter apptUpdate = new SqlParameter();
                    //apptUpdate.ParameterName = "@appt";
                    //apptUpdate.SqlDbType = System.Data.SqlDbType.DateTime;
                    //apptUpdate.Value = appt;
                    //cmd.Parameters.Add(apptUpdate);
                    //cmd.ExecuteNonQuery();
                }

                Response.Write("Data entered");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
    }
}