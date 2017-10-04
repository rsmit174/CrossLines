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
       /* Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;*/


        {
            int caseSwitch = Convert.ToInt32(ChlidrenAmountDropDownList.Text);
            switch (caseSwitch)
            {
                case 0:
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Panel6.Visible = false;
                    Panel7.Visible = false;
                    Panel8.Visible = false;
                    break;
                case 1:
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Panel6.Visible = false;
                    Panel7.Visible = false;
                    Panel8.Visible = false;
                    break;
                case 2:
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Panel6.Visible = false;
                    Panel7.Visible = false;
                    Panel8.Visible = false;
                    break;
                case 3:
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Panel6.Visible = false;
                    Panel7.Visible = false;
                    Panel8.Visible = false;
                    break;
                case 4:
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = true;
                    Panel5.Visible = false;
                    Panel6.Visible = false;
                    Panel7.Visible = false;
                    Panel8.Visible = false;
                    break;
                case 5:
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = true;
                    Panel5.Visible = true;
                    Panel6.Visible = false;
                    Panel7.Visible = false;
                    Panel8.Visible = false;
                    break;
                case 6:
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = true;
                    Panel5.Visible = true;
                    Panel6.Visible = true;
                    Panel7.Visible = false;
                    Panel8.Visible = false;
                    break;
                case 7:
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = true;
                    Panel5.Visible = true;
                    Panel6.Visible = true;
                    Panel7.Visible = true;
                    Panel8.Visible = false;
                    break;
                case 8:
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = true;
                    Panel5.Visible = true;
                    Panel6.Visible = true;
                    Panel7.Visible = true;
                    Panel8.Visible = true;
                    break;
                default:
                    break;
            }
        }




        //BEFORE PASTE

        if (Page.IsPostBack == true)
        {
            //Label30.Text = ("The information has been successfully entered");
        }
        //dropdownlist visibilities
        {
            //main(not spouse) shirt dropdown list item visibility
            {
                if (GenderDropDownList.Text == "Male")
                {
                    ShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
                if (GenderDropDownList.Text == "Female")
                {
                    ShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                }
                if (GenderDropDownList.Text == "Unspecified")
                {
                    ShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
            }

            //main(not spouse) coat dropdown list item visibility
            {
                if (GenderDropDownList.Text == "Male")
                {
                    CoatSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Men S").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Men M").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Men L").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Men XL").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Boy S").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Boy M").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Boy L").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Boy XL").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
                if (GenderDropDownList.Text == "Female")
                {
                    CoatSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Women S").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Women M").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Women L").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Women XL").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Girl S").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Girl M").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Girl L").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Girl XL").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                }
                if (GenderDropDownList.Text == "Unspecified")
                {
                    CoatSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = true;
                    CoatSizeDropDown.Items.FindByValue("Please Select Size").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    CoatSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
            }

            {
                if (GenderDropDownList.Text == "Male")
                {
                    ShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
                if (GenderDropDownList.Text == "Female")
                {
                    ShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                }
                if (GenderDropDownList.Text == "Unspecified")
                {
                    ShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = true;
                    ShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    ShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
            }

            //spouse coat dropdown list item visibility
            {
                if (SpouseGenderDropDownList.Text == "Male")
                {
                    SpouseCoatSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men S").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men M").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men L").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men XL").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy S").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy M").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy L").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy XL").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
                if (SpouseGenderDropDownList.Text == "Female")
                {
                    SpouseCoatSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women S").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women M").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women L").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women XL").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl S").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl M").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl L").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl XL").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                }
                if (SpouseGenderDropDownList.Text == "Unspecified")
                {
                    SpouseCoatSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = true;
                    SpouseCoatSizeDropDown.Items.FindByValue("Please Select Size").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                    SpouseCoatSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
                }
            }//end of spouse coat
            if (SpouseGenderDropDownList.Text == "Male")
            {
                SpouseShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Men S").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Men M").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Men L").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (SpouseGenderDropDownList.Text == "Female")
            {
                SpouseShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Women S").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Women M").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Women L").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (SpouseGenderDropDownList.Text == "Unspecified")
            {
                SpouseShirtSizeDropDown.Items.FindByValue("Please Select Gender").Enabled = true;
                SpouseShirtSizeDropDown.Items.FindByValue("Please Select Size").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Men S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Men M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Men L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Men XL").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Boy XL").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Women S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Women M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Women L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Women XL").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl S").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl M").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl L").Enabled = false;
                SpouseShirtSizeDropDown.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of spuse shirt zie
         //child 1 dropdowns
        {
            if (ChildGenderDropDown1.Text == "Unspecified")
            {
                //shirt size 1 unspec
                ChildSSDropDown1.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 1 unspec
                ChildCSDropDown1.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown1.Text == "Female")
            {
                //shirt size1 female
                ChildSSDropDown1.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 1 female
                ChildCSDropDown1.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown1.Text == "Male")
            {
                //shirt size 1 male
                ChildSSDropDown1.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown1.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown1.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 1 male
                ChildCSDropDown1.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown1.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown1.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 1 dropdowns
         //child 2 dropdowns
        {
            if (ChildGenderDropDown2.Text == "Unspecified")
            {
                //shirt size 2 unspec
                ChildSSDropDown2.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 2 uspec
                ChildCSDropDown2.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown2.Text == "Female")
            {
                //shirt size2 female
                ChildSSDropDown2.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 2 female
                ChildCSDropDown2.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown2.Text == "Male")
            {
                //shirt size 2 male
                ChildSSDropDown2.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown2.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown2.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 2 m2le
                ChildCSDropDown2.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown2.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown2.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 2 dropdowns
         //child 3 dropdowns
        {
            if (ChildGenderDropDown3.Text == "Unspecified")
            {
                //shirt size 3 unspec
                ChildSSDropDown3.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 3 u3pec
                ChildCSDropDown3.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown3.Text == "Female")
            {
                //shirt size 3f3male
                ChildSSDropDown3.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 3 fe3ale
                ChildCSDropDown3.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown3.Text == "Male")
            {
                //shirt size 3 male
                ChildSSDropDown3.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown3.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown3.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 3 m2le
                ChildCSDropDown3.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown3.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown3.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 3 dropdowns
         //child 3 dropdowns
        {
            if (ChildGenderDropDown4.Text == "Unspecified")
            {
                //shirt size 4 4nspec
                ChildSSDropDown4.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 4 unpes
                ChildCSDropDown4.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown4.Text == "Female")
            {
                //shirt size 4f4male
                ChildSSDropDown4.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 4 fe4ale
                ChildCSDropDown4.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown4.Text == "Male")
            {
                //shirt size 4 male
                ChildSSDropDown4.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown4.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown4.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 4 m2le
                ChildCSDropDown4.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown4.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown4.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 4 dropdowns
         //child 5 dropdowns
        {
            if (ChildGenderDropDown5.Text == "Unspecified")
            {
                //shirt size 5 5nspec
                ChildSSDropDown5.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 5 unpes
                ChildCSDropDown5.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown5.Text == "Female")
            {
                //shirt size 5f4male
                ChildSSDropDown5.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 5 fe4ale
                ChildCSDropDown5.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown5.Text == "Male")
            {
                //shirt size 5 male
                ChildSSDropDown5.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown5.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown5.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 5 m2le
                ChildCSDropDown5.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown5.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown5.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 5 dropdowns
        //child 6 dropdowns
        {
            if (ChildGenderDropDown6.Text == "Unspecified")
            {
                //shirt size 6 5nspec
                ChildSSDropDown6.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 6 unpes
                ChildCSDropDown6.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown6.Text == "Female")
            {
                //shirt size 6f6male
                ChildSSDropDown6.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 6 fe4ale
                ChildCSDropDown6.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown6.Text == "Male")
            {
                //shirt size 6 male
                ChildSSDropDown6.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown6.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown6.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 6 m2le
                ChildCSDropDown6.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown6.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown6.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 6 dropdowns
        //child 7 dropdowns
        {
            if (ChildGenderDropDown7.Text == "Unspecified")
            {
                //shirt size 7 5nspec
                ChildSSDropDown7.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 7 u7pes
                ChildCSDropDown7.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown7.Text == "Female")
            {
                //shirt size 7f7male
                ChildSSDropDown7.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 7 fe4ale
                ChildCSDropDown7.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown7.Text == "Male")
            {
                //shirt size 7 7ale
                ChildSSDropDown7.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown7.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown7.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 7 m2le
                ChildCSDropDown7.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown7.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown7.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 7 dropdowns
        //child 8 dropdowns
        {
            if (ChildGenderDropDown8.Text == "Unspecified")
            {
                //shirt size 8 8nspec
                ChildSSDropDown8.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Please Select Shirt Size").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy XL").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl XL").Enabled = false;
                //coat size 8 unpes
                ChildCSDropDown8.Items.FindByValue("Please Select Gender").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Please Select Coat Size").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy XL").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl XL").Enabled = false;
            }
            if (ChildGenderDropDown8.Text == "Female")
            {
                //shirt size 8f8male
                ChildSSDropDown8.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Women S").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Women M").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Women L").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Women XL").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Girl S").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Girl M").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Girl L").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Girl XL").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Men S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Men M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Men L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Men XL").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Boy XL").Enabled = false;
                //coatsize 8 fe8ale
                ChildCSDropDown8.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Women S").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Women M").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Women L").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Women XL").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Girl S").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Girl M").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Girl L").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Girl XL").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Men S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Men M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Men L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Men XL").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Boy XL").Enabled = false;
            }
            if (ChildGenderDropDown8.Text == "Male")
            {
                //shirt size 8 8ale
                ChildSSDropDown8.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Please Select Shirt Size").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Men S").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Men M").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Men L").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Men XL").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Boy S").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Boy M").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Boy L").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Boy XL").Enabled = true;
                ChildSSDropDown8.Items.FindByValue("Women S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Women M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Women L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Women XL").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl S").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl M").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl L").Enabled = false;
                ChildSSDropDown8.Items.FindByValue("Girl XL").Enabled = false;
                //Coat size 8 m8le
                ChildCSDropDown8.Items.FindByValue("Please Select Gender").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Please Select Coat Size").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Men S").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Men M").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Men L").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Men XL").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Boy S").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Boy M").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Boy L").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Boy XL").Enabled = true;
                ChildCSDropDown8.Items.FindByValue("Women S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Women M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Women L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Women XL").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl S").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl M").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl L").Enabled = false;
                ChildCSDropDown8.Items.FindByValue("Girl XL").Enabled = false;
            }
        }//end of child 8 dropdowns
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection ChristmasStore = new SqlConnection(connectionString);
        {
            //controls input for everything buy children, includes spouse
            SqlCommand first = new SqlCommand("Insert into Family(LastName, FirstName, DOB, Gender, Pant_Size, Shirt_Size, Coat_Size, Address1, City, State, ZIP, Phone, Total_Income, House_Hold_Size, Spouse_FirstName, Spouse_LastName, Spouse_DOB, Spouse_Gender, Spouse_Pant_Size, Spouse_Shirt_Size, Spouse_Coat_Size) "
                                                              + "OUTPUT INSERTED.FID "
                                                              + "Values(@LastName, @FirstName, @DOB, @Gender, @Pant_Size, @Shirt_Size, @Coat_Size, @Address1, @City, @State, @ZIP, @Phone, @Total_Income, @House_Hold_Size, @Spouse_FirstName, @Spouse_LastName, @Spouse_DOB, @Spouse_Gender, @Spouse_Pant_Size, @Spouse_Shirt_Size, @Spouse_Coat_Size)", ChristmasStore);

            first.Parameters.AddWithValue("@LastName", TextBox2.Text);
            first.Parameters.AddWithValue("@FirstName", TextBox3.Text);
            first.Parameters.AddWithValue("@DOB", DateOfBirthTextBox.Text);
            first.Parameters.AddWithValue("@Gender", GenderDropDownList.Text);
            first.Parameters.AddWithValue("@Pant_Size", TextBox6.Text);
            first.Parameters.AddWithValue("@Shirt_Size", ShirtSizeDropDown.Text);
            first.Parameters.AddWithValue("@Coat_Size", CoatSizeDropDown.Text);
            first.Parameters.AddWithValue("@Spouse_LastName", SpouseTextBox2.Text);
            first.Parameters.AddWithValue("@Spouse_FirstName", SpouseTextBox3.Text);
            first.Parameters.AddWithValue("@Spouse_DOB", SpouseDateOfBirthTextBox.Text);
            first.Parameters.AddWithValue("@Spouse_Gender", SpouseGenderDropDownList.Text);
            first.Parameters.AddWithValue("@Spouse_Pant_Size", SpouseTextBox6.Text);
            first.Parameters.AddWithValue("@Spouse_Shirt_Size", SpouseShirtSizeDropDown.Text);
            first.Parameters.AddWithValue("@Spouse_Coat_Size", SpouseCoatSizeDropDown.Text);
            first.Parameters.AddWithValue("@Address1", TextBox8.Text);
            first.Parameters.AddWithValue("@City", TextBox9.Text);
            first.Parameters.AddWithValue("@State", StateDropDownList.Text);
            first.Parameters.AddWithValue("@ZIP", ZipcodeTextBox.Text);
            first.Parameters.AddWithValue("@Phone", PhoneTextBox.Text);
            first.Parameters.AddWithValue("@Total_Income", TotalIncomeTextBox.Text);
            first.Parameters.AddWithValue("@House_Hold_Size", HouseHoldSizeDropDownList.Text);

            ChristmasStore.Open();
            var primarykey = first.ExecuteScalar();
            // Label18.Text = Convert.ToString(primarykey);

            // DO NOT DELETE
            // saves FID for appointment page
            Session["fid"] = Convert.ToString(primarykey);
            ChristmasStore.Close();

            SqlCommand second = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            second.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            second.Parameters.AddWithValue("@Child_FirstName", TextBoxChild11.Text);
            second.Parameters.AddWithValue("@Child_LastName", TextBoxChild12.Text);
            second.Parameters.AddWithValue("@Child_DOB", TextBoxChild13.Text);
            second.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown1.Text);
            second.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown1.Text);
            second.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild16.Text);
            second.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown1.Text);
            

            ChristmasStore.Open();
            if (TextBoxChild11.Text != "")
            {
                second.ExecuteNonQuery();
            }
            ChristmasStore.Close();

            SqlCommand third = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            third.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            third.Parameters.AddWithValue("@Child_FirstName", TextBoxChild21.Text);
            third.Parameters.AddWithValue("@Child_LastName", TextBoxChild22.Text);
            third.Parameters.AddWithValue("@Child_DOB", TextBoxChild23.Text);
            third.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown2.Text);
            third.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown2.Text);
            third.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild26.Text);
            third.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown2.Text);

            ChristmasStore.Open();
            if (TextBoxChild21.Text != "")
            {
                third.ExecuteNonQuery();
            }
            ChristmasStore.Close();

            SqlCommand fourth = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            fourth.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            fourth.Parameters.AddWithValue("@Child_FirstName", TextBoxChild31.Text);
            fourth.Parameters.AddWithValue("@Child_LastName", TextBoxChild32.Text);
            fourth.Parameters.AddWithValue("@Child_DOB", TextBoxChild33.Text);
            fourth.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown3.Text);
            fourth.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown3.Text);
            fourth.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild36.Text);
            fourth.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown3.Text);

            ChristmasStore.Open();
            if (TextBoxChild31.Text != "")
            {
                fourth.ExecuteNonQuery();
            }
            ChristmasStore.Close();

            SqlCommand fifth = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            fifth.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            fifth.Parameters.AddWithValue("@Child_FirstName", TextBoxChild41.Text);
            fifth.Parameters.AddWithValue("@Child_LastName", TextBoxChild42.Text);
            fifth.Parameters.AddWithValue("@Child_DOB", TextBoxChild43.Text);
            fifth.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown4.Text);
            fifth.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown4.Text);
            fifth.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild46.Text);
            fifth.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown4.Text);

            ChristmasStore.Open();
            if (TextBoxChild41.Text != "")
            {
                fifth.ExecuteNonQuery();
            }
            ChristmasStore.Close();

            SqlCommand sixth = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            sixth.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            sixth.Parameters.AddWithValue("@Child_FirstName", TextBoxChild51.Text);
            sixth.Parameters.AddWithValue("@Child_LastName", TextBoxChild52.Text);
            sixth.Parameters.AddWithValue("@Child_DOB", TextBoxChild53.Text);
            sixth.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown5.Text);
            sixth.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown5.Text);
            sixth.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild56.Text);
            sixth.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown5.Text);

            ChristmasStore.Open();
            if (TextBoxChild51.Text != "")
            {
                sixth.ExecuteNonQuery();
            }
            ChristmasStore.Close();

            SqlCommand seventh = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            seventh.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            seventh.Parameters.AddWithValue("@Child_FirstName", TextBoxChild61.Text);
            seventh.Parameters.AddWithValue("@Child_LastName", TextBoxChild62.Text);
            seventh.Parameters.AddWithValue("@Child_DOB", TextBoxChild63.Text);
            seventh.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown6.Text);
            seventh.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown6.Text);
            seventh.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild66.Text);
            seventh.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown6.Text);

            ChristmasStore.Open();
            if (TextBoxChild61.Text != "")
            {
                seventh.ExecuteNonQuery();
            }
            ChristmasStore.Close();

            SqlCommand eighth = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            eighth.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            eighth.Parameters.AddWithValue("@Child_FirstName", TextBoxChild71.Text);
            eighth.Parameters.AddWithValue("@Child_LastName", TextBoxChild72.Text);
            eighth.Parameters.AddWithValue("@Child_DOB", TextBoxChild73.Text);
            eighth.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown7.Text);
            eighth.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown7.Text);
            eighth.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild76.Text);
            eighth.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown7.Text);

            ChristmasStore.Open();
            if (TextBoxChild71.Text != "")
            {
                eighth.ExecuteNonQuery();
            }
            ChristmasStore.Close();

            SqlCommand nineth = new SqlCommand("Insert into Children(FK_Family_FID, Child_FirstName, Child_LastName, Child_DOB, Child_Gender, Child_Pant_Size, Child_Shirt_Size, Child_Coat_Size) Values(@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)", ChristmasStore);
            nineth.Parameters.AddWithValue("@FK_Family_FID", primarykey);
            nineth.Parameters.AddWithValue("@Child_FirstName", TextBoxChild81.Text);
            nineth.Parameters.AddWithValue("@Child_LastName", TextBoxChild82.Text);
            nineth.Parameters.AddWithValue("@Child_DOB", TextBoxChild83.Text);
            nineth.Parameters.AddWithValue("@Child_Gender", ChildGenderDropDown8.Text);
            nineth.Parameters.AddWithValue("@Child_Shirt_Size", ChildSSDropDown8.Text);
            nineth.Parameters.AddWithValue("@Child_Pant_Size", TextBoxChild86.Text);
            nineth.Parameters.AddWithValue("@Child_Coat_Size", ChildCSDropDown8.Text);

            ChristmasStore.Open();
            if (TextBoxChild81.Text != "")
            {
                nineth.ExecuteNonQuery();
            }
            ChristmasStore.Close();

        }
    }    

    protected void ApptNav_Click(Object sender, EventArgs e)
    {

        Server.Transfer("Appointments.aspx", true);
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void ChlidrenAmountDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
    }

    protected void TextBoxChild83_TextChanged(object sender, EventArgs e)
    {

    }
}

//<add name="ChristmasStore4ConnectionString" connectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ChristmasStore4.mdf&quot;;Integrated Security=True;Connect Timeout=30"
//providerName="System.Data.SqlClient" />