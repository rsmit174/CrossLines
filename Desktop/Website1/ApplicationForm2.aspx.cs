using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            Label29.Text = ("The " + SLastName.Text + " Family has been successfully entered!");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection ChristmasStore = new SqlConnection(connectionString);

        SqlCommand first = new SqlCommand("Insert into Client_Info(Spouse_FirstName, Spouse_LastName, Spouse_DOB, Spouse_Age, Spouse_Gender, Spouse_Pant_Size, Spouse_Shirt_Size, Spouse_Coat_Size, Other_1_FirstName, Other_1_LastName, Other_1_DOB, Other_1_Age, Other_1_Gender, Other_1_Pant_Size, Other_1_Shirt_Size, Other_1_Coat_Size, Other_2_FirstName, Other_2_LastName, Other_2_DOB, Other_2_Age, Other_2_Gender, Other_2_Pant_Size, Other_2_Shirt_Size, Other_2_Coat_Size, Other_3_FirstName, Other_3_LastName, Other_3_DOB, Other_3_Age, Other_3_Gender, Other_3_Pant_Size, Other_3_Shirt_Size, Other_3_Coat_Size, Other_4_FirstName, Other_4_LastName, Other_4_DOB, Other_4_Age, Other_4_Gender, Other_4_Pant_Size, Other_4_Shirt_Size, Other_4_Coat_Size, Other_5_FirstName, Other_5_LastName, Other_5_DOB, Other_5_Age, Other_5_Gender, Other_5_Pant_Size, Other_5_Shirt_Size, Other_5_Coat_Size, Other_6_FirstName, Other_6_LastName, Other_6_DOB, Other_6_Age, Other_6_Gender, Other_6_Pant_Size, Other_6_Shirt_Size, Other_6_Coat_Size, Other_7_FirstName, Other_7_LastName, Other_7_DOB, Other_7_Age, Other_7_Gender, Other_7_Pant_Size, Other_7_Shirt_Size, Other_7_Coat_Size, Other_8_FirstName, Other_8_LastName, Other_8_DOB, Other_8_Age, Other_8_Gender, Other_8_Pant_Size, Other_8_Shirt_Size, Other_8_Coat_Size) Values(@Spouse_FirstName, @Spouse_LastName, @Spouse_DOB, @Spouse_Age, @Spouse_Gender, @Spouse_Pant_Size, @Spouse_Shirt_Size, @Spouse_Coat_Size, @Other_1_FirstName, @Other_1_LastName, @Other_1_DOB, @Other_1_Age, @Other_1_Gender, @Other_1_Pant_Size, @Other_1_Shirt_Size, @Other_1_Coat_Size, @Other_1_FirstName, @Other_2_LastName, @Other_2_DOB, @Other_2_Age, @Other_2_Gender, @Other_2_Pant_Size, @Other_2_Shirt_Size, @Other_2_Coat_Size, @Other_3_FirstName, @Other_3_LastName, @Other_3_DOB, @Other_3_Age, @Other_3_Gender, @Other_3_Pant_Size, @Other_3_Shirt_Size, @Other_3_Coat_Size, @Other_4_FirstName, @Other_4_LastName, @Other_4_DOB, @Other_4_Age, @Other_4_Gender, @Other_4_Pant_Size, @Other_4_Shirt_Size, @Other_4_Coat_Size, @Other_5_FirstName, @Other_5_LastName, @Other_5_DOB, @Other_5_Age, @Other_5_Gender, @Other_5_Pant_Size, @Other_5_Shirt_Size, @Other_5_Coat_Size, @Other_6_FirstName, @Other_6_LastName, @Other_6_DOB, @Other_6_Age, @Other_6_Gender, @Other_6_Pant_Size, @Other_6_Shirt_Size, @Other_6_Coat_Size, @Other_7_FirstName, @Other_7_LastName, @Other_7_DOB, @Other_7_Age, @Other_7_Gender, @Other_7_Pant_Size, @Other_7_Shirt_Size, @Other_7_Coat_Size, @Other_8_FirstName, @Other_8_LastName, @Other_8_DOB, @Other_8_Age, @Other_8_Gender, @Other_8_Pant_Size, @Other_8_Shirt_Size, @Other_8_Coat_Size)", ChristmasStore);
        first.Parameters.AddWithValue("@Spouse_FirstName", SFirstName.Text);
        first.Parameters.AddWithValue("@Spouse_LastName", SLastName.Text);
        first.Parameters.AddWithValue("@Spouse_DOB", SDoB.Text);
        first.Parameters.AddWithValue("@Spouse_Age", SAge.Text);
        first.Parameters.AddWithValue("@Spouse_Gender", SGender.Text);
        first.Parameters.AddWithValue("@Spouse_Shirt_Size", SShirtSize.Text);
        first.Parameters.AddWithValue("@Spouse_Pant_Size", SPantSize.Text);
        first.Parameters.AddWithValue("@Spouse_Coat_Size", SCoatSize.Text);
        first.Parameters.AddWithValue("@Other_1_FirstName", OneFirstName.Text);
        first.Parameters.AddWithValue("@Other_1_LastName", OneLastName.Text);
        first.Parameters.AddWithValue("@Other_1_DOB", OneDoB.Text);
        first.Parameters.AddWithValue("@Other_1_Age", OneAge.Text);
        first.Parameters.AddWithValue("@Other_1_Gender", OneGender.Text);
        first.Parameters.AddWithValue("@Other_1_Shirt_Size", OneShirtSize.Text);
        first.Parameters.AddWithValue("@Other_1_Pant_Size", OnePantSize.Text);
        first.Parameters.AddWithValue("@Other_1_Coat_Size", OneCoatSize.Text);
        first.Parameters.AddWithValue("@Other_2_FirstName", TwoFirstName.Text);
        first.Parameters.AddWithValue("@Other_2_LastName", TwoLastName.Text);
        first.Parameters.AddWithValue("@Other_2_DOB", TwoDoB.Text);
        first.Parameters.AddWithValue("@Other_2_Age", TwoAge.Text);
        first.Parameters.AddWithValue("@Other_2_Gender", TwoGender.Text);
        first.Parameters.AddWithValue("@Other_2_Shirt_Size", TwoShirtSize.Text);
        first.Parameters.AddWithValue("@Other_2_Pant_Size", TwoPantSize.Text);
        first.Parameters.AddWithValue("@Other_2_Coat_Size", TwoCoatSize.Text);
        first.Parameters.AddWithValue("@Other_3_FirstName", ThreeFirstName.Text);
        first.Parameters.AddWithValue("@Other_3_LastName", ThreeLastName.Text);
        first.Parameters.AddWithValue("@Other_3_DOB", ThreeDoB.Text);
        first.Parameters.AddWithValue("@Other_3_Age", ThreeAge.Text);
        first.Parameters.AddWithValue("@Other_3_Gender", ThreeGender.Text);
        first.Parameters.AddWithValue("@Other_3_Shirt_Size", ThreeShirtSize.Text);
        first.Parameters.AddWithValue("@Other_3_Pant_Size", ThreePantSize.Text);
        first.Parameters.AddWithValue("@Other_3_Coat_Size", ThreeCoatSize.Text);
        first.Parameters.AddWithValue("@Other_4_FirstName", FourFirstName.Text);
        first.Parameters.AddWithValue("@Other_4_LastName", FourLastName.Text);
        first.Parameters.AddWithValue("@Other_4_DOB", FourDoB.Text);
        first.Parameters.AddWithValue("@Other_4_Age", FourAge.Text);
        first.Parameters.AddWithValue("@Other_4_Gender", FourGender.Text);
        first.Parameters.AddWithValue("@Other_4_Shirt_Size", FourShirtSize.Text);
        first.Parameters.AddWithValue("@Other_4_Pant_Size", FourPantSize.Text);
        first.Parameters.AddWithValue("@Other_4_Coat_Size", FourCoatSize.Text);
        first.Parameters.AddWithValue("@Other_5_FirstName", FiveFirstName.Text);
        first.Parameters.AddWithValue("@Other_5_LastName", FiveLastName.Text);
        first.Parameters.AddWithValue("@Other_5_DOB", FiveDoB.Text);
        first.Parameters.AddWithValue("@Other_5_Age", FiveAge.Text);
        first.Parameters.AddWithValue("@Other_5_Gender", FiveGender.Text);
        first.Parameters.AddWithValue("@Other_5_Shirt_Size", FiveShirtSize.Text);
        first.Parameters.AddWithValue("@Other_5_Pant_Size", FivePantSize.Text);
        first.Parameters.AddWithValue("@Other_5_Coat_Size", FiveCoatSize.Text);
        first.Parameters.AddWithValue("@Other_6_FirstName", SixFirstName.Text);
        first.Parameters.AddWithValue("@Other_6_LastName", SixLastName.Text);
        first.Parameters.AddWithValue("@Other_6_DOB", SixDoB.Text);
        first.Parameters.AddWithValue("@Other_6_Age", SixAge.Text);
        first.Parameters.AddWithValue("@Other_6_Gender", SixGender.Text);
        first.Parameters.AddWithValue("@Other_6_Shirt_Size", SixShirtSize.Text);
        first.Parameters.AddWithValue("@Other_6_Pant_Size", SixPantSize.Text);
        first.Parameters.AddWithValue("@Other_6_Coat_Size", SixCoatSize.Text);
        first.Parameters.AddWithValue("@Other_7_FirstName", SevenFirstName.Text);
        first.Parameters.AddWithValue("@Other_7_LastName", SevenLastName.Text);
        first.Parameters.AddWithValue("@Other_7_DOB", SevenSDoB.Text);
        first.Parameters.AddWithValue("@Other_7_Age", SevenAge.Text);
        first.Parameters.AddWithValue("@Other_7_Gender", SevenGender.Text);
        first.Parameters.AddWithValue("@Other_7_Shirt_Size", SevenShirtSize.Text);
        first.Parameters.AddWithValue("@Other_7_Pant_Size", SevenPantSize.Text);
        first.Parameters.AddWithValue("@Other_7_Coat_Size", SevenCoatSize.Text);
        first.Parameters.AddWithValue("@Other_8_FirstName", EightFirstName.Text);
        first.Parameters.AddWithValue("@Other_8_LastName", EightLastName.Text);
        first.Parameters.AddWithValue("@Other_8_DOB", EightDoB.Text);
        first.Parameters.AddWithValue("@Other_8_Age", EightAge.Text);
        first.Parameters.AddWithValue("@Other_8_Gender", EightGender.Text);
        first.Parameters.AddWithValue("@Other_8_Shirt_Size", EightShirtSize.Text);
        first.Parameters.AddWithValue("@Other_8_Pant_Size", EightPantSize.Text);
        first.Parameters.AddWithValue("@Other_8_Coat_Size", EightCoatSize.Text);

        ChristmasStore.Open();
        first.ExecuteNonQuery();
        ChristmasStore.Close();
    }
}