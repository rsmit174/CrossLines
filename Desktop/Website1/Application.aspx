<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="_Default"  MasterPageFile="~/MasterPage.master"%>


<asp:Content runat="server" ID="head" ContentPlaceHolderId="head">
    <title></title>
	<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content> 

<asp:Content runat="server" ID="Application" ContentPlaceHolderId="body">
    
    <div>
		<h2>Enter Family Information</h2>
		<p>
			<asp:Label ID="Label3" runat="server" Text="Last Name" CssClass="left"></asp:Label>
			<asp:TextBox ID="TextBox2" runat="server" CssClass="right"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter last name" Visible="true" ForeColor="Red">Please enter last name</asp:RequiredFieldValidator>
            <br />

		</p>
		<p>
			<asp:Label ID="Label4" runat="server" Text="First Name" CssClass="left"></asp:Label>
			<asp:TextBox ID="TextBox3" runat="server" CssClass="right"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
		</p>
		<p>
			<asp:Label ID="Label5" runat="server" Text="Date of Birth" CssClass="left"></asp:Label>
			<asp:TextBox ID="DateOfBirthTextBox" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:Label ID="Label6" runat="server" Text="Gender" CssClass="leftSecondColumn"></asp:Label>
			<asp:DropDownList ID="GenderDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="DateOfBirthTextBox" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
            <br />
		</p>
		<p>
			<asp:Label ID="Label7" runat="server" Text="Pant Size" CssClass="left"></asp:Label>
			<asp:TextBox ID="TextBox6" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:Label ID="Label8" runat="server" Text="Shirt Size" CssClass="leftSecondColumn"></asp:Label>
			<asp:DropDownList ID="ShirtSizeDropDown" runat="server" Width="150px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem>Please Select Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter pants" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
		</p>
        <p>
			<asp:Label ID="Label31" runat="server" Text="Coat Size" CssClass="left"></asp:Label>
			<asp:DropDownList ID="CoatSizeDropDown" runat="server" Width="150px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem>Please Select Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <br />
		</p>
		<p>
			<asp:Label ID="Label9" runat="server" Text="Address" CssClass="left"></asp:Label>
			<asp:TextBox ID="TextBox8" runat="server" CssClass="right"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please enter address" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
		</p>
		<p>
			<asp:Label ID="Label10" runat="server" Text="City" CssClass="left"></asp:Label>
			<asp:TextBox ID="TextBox9" runat="server" CssClass="right"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter city" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
		</p>

		<p>
			<asp:Label ID="Label11" runat="server" Text="State" CssClass="left"></asp:Label>
			<asp:DropDownList ID="StateDropDownList" runat="server" CssClass="rightSmall">
				<asp:ListItem>Select State</asp:ListItem>
				<asp:ListItem Value="KS">Kansas</asp:ListItem>
				<asp:ListItem Value="MI">Missouri</asp:ListItem>
			</asp:DropDownList>
			<asp:Label ID="Label12" runat="server" Text="Zip Code" CssClass="leftSecondColumn"></asp:Label>
			<asp:TextBox ID="ZipcodeTextBox" runat="server" CssClass="rightSmall"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ZipcodeTextBox" ErrorMessage="Please enter zipcode" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            <br />
		</p>
		<p>
			<asp:Label ID="Label13" runat="server" Text="Phone" CssClass="left"></asp:Label>
			<asp:TextBox ID="PhoneTextBox" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="PhoneTextBox" ErrorMessage="Please enter phone number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            <br />
		</p>
        <!--SPOUSE TEXT BOXES-->
            <p>
			<asp:Label ID="LabelS1" runat="server" Text="Spouse Last Name" CssClass="left"></asp:Label>
			<asp:TextBox ID="SpouseTextBox2" runat="server" CssClass="right"></asp:TextBox><br />

		</p>
		<p>
			<asp:Label ID="LabelS4" runat="server" Text="Spouse First Name" CssClass="left"></asp:Label>
			<asp:TextBox ID="SpouseTextBox3" runat="server" CssClass="right"></asp:TextBox><br />
		</p>
		<p>
			<asp:Label ID="LabelS5" runat="server" Text="Spouse Date of Birth" CssClass="left"></asp:Label>
			<asp:TextBox ID="SpouseDateOfBirthTextBox" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:Label ID="LabelS6" runat="server" Text="Spouse Gender" CssClass="leftSecondColumn"></asp:Label>
			<asp:DropDownList ID="SpouseGenderDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unsepcified">Unsepcified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SpouseDateOfBirthTextBox" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
            <br />
		</p>
		<p>
			<asp:Label ID="LabelS7" runat="server" Text="Spouse Pant Size" CssClass="left"></asp:Label>
			<asp:TextBox ID="SpouseTextBox6" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:Label ID="LabelS8" runat="server" Text="Spouse Shirt Size" CssClass="leftSecondColumn"></asp:Label>
			<asp:DropDownList ID="SpouseShirtSizeDropDown" runat="server" Width="150px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <br />
		</p>
        <p>
			<asp:Label ID="LabelS31" runat="server" Text="Spouse Coat Size" CssClass="left"></asp:Label>
			<asp:DropDownList ID="SpouseCoatSizeDropDown" runat="server" Width="150px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <br />
		</p>
        <p>
			<asp:Label ID="ZLabel1" runat="server" Text="House Hold Size" CssClass="left"></asp:Label>
			<asp:DropDownList ID="HouseHoldSizeDropDownList" runat="server" CssClass="rightSmall">
				<asp:ListItem>Select Size</asp:ListItem>
				<asp:ListItem Value="1">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
			    <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
			</asp:DropDownList>
			<!--<asp:Label ID="ZLabel2" runat="server" Text="Zipcode" CssClass="leftSecondColumn"></asp:Label>
			<asp:TextBox ID="TextBox1" runat="server" CssClass="rightSmall"></asp:TextBox><br />-->
		</p>
    </div>
	<div>
        <p><br /></p>
	<h2>Income</h2><br />
        <!-- INCOME SOURCES & INCOME AMOUNTS NO LONGER USED
		 <p>
			<asp:Label ID="Label16" runat="server" Text="Income Amount" CssClass="left"></asp:Label>
			<asp:TextBox ID="IncomeAmount1" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:Label ID="Label15" runat="server" Text="Income Source" CssClass="leftSecondColumn"></asp:Label>
			<asp:TextBox ID="IncomeSource1" runat="server" CssClass="rightSmall"></asp:TextBox><br />
		</p>
		  <p>
			 <asp:Label ID="Label2" runat="server" Text="Income Amount" CssClass="left"></asp:Label>
			<asp:TextBox ID="IncomeAmount2" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:Label ID="Label1" runat="server" Text="Income Source" CssClass="leftSecondColumn"></asp:Label>
			<asp:TextBox ID="IncomeSource2" runat="server" CssClass="rightSmall"></asp:TextBox><br />
		  </p>
	   <p>
			 <asp:Label ID="Label20" runat="server" Text="Income Amount" CssClass="left"></asp:Label>
			<asp:TextBox ID="IncomeAmount3" runat="server" CssClass="rightSmall"></asp:TextBox>
			<asp:Label ID="Label19" runat="server" Text="Income Source" CssClass="leftSecondColumn"></asp:Label>
			<asp:TextBox ID="IncomeSource3" runat="server" CssClass="rightSmall"></asp:TextBox><br />
		  </p>
        -->
		<p>
			<asp:Label ID="Label17" runat="server" Text="Total Income" CssClass="left"></asp:Label>
			<asp:TextBox ID="TotalIncomeTextBox" runat="server" CssClass="rightSmall"></asp:TextBox><br />
		</p>

        
    <div>
        <h2>Relatives and Children Information</h2>   
    </div>
        
    <div style="text-align: center;">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client_Info]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        <asp:DropDownList ID="ChlidrenAmountDropDownList" runat="server" OnSelectedIndexChanged="ChlidrenAmountDropDownList_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="0">Amount of Relatives &amp; Children</asp:ListItem>
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
        </asp:DropDownList>
        <!-- CHILDREN SECTION-->
        <!--OLD SPOUSE LINE, NOT USED ANYMORE
    <p>
            <asp:Label ID="Label21" runat="server" Text="Spouse" CssClass="AppForm2_Col" ></asp:Label>
            <asp:TextBox ID="SFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="SLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="SDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="SAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="SGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="SShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="SPantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="SCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
            -->
        <asp:Panel ID="Panel1" runat="server" >
        <p>
            <asp:Label ID="LabelChild1" runat="server" Text="Relative 1" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild11" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild12" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild13" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
          <!--  <asp:TextBox ID="OneAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>-->
            <asp:DropDownList ID="ChildGenderDropDown1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown1" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild16" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown1" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxChild13" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
        <p>
            <asp:Label ID="LabelChild2" runat="server" Text="Relative 2" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild21" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild22" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild23" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:DropDownList ID="ChildGenderDropDown2" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown2" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild26" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown2" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxChild23" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        <p>
            <asp:Label ID="LabelChild3" runat="server" Text="Relative 3" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild31" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild32" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild33" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:DropDownList ID="ChildGenderDropDown3" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown3" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild36" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown3" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBoxChild33" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <p>
            <asp:Label ID="LabelChild4" runat="server" Text="Relative 4" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild41" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild42" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild43" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:DropDownList ID="ChildGenderDropDown4" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown4" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild46" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown4" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBoxChild43" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
        <p>
            <asp:Label ID="LabelChild5" runat="server" Text="Relative 5" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild51" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild52" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild53" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:DropDownList ID="ChildGenderDropDown5" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown5" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild56" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown5" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBoxChild53" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server">
        <p>
            <asp:Label ID="LabelChild6" runat="server" Text="Relative 6" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild61" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild62" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild63" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:DropDownList ID="ChildGenderDropDown6" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown6" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild66" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown6" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBoxChild63" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <asp:Panel ID="Panel7" runat="server">
        <p>
            <asp:Label ID="LabelChild7" runat="server" Text="Relative 7" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild71" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild72" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild73" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:DropDownList ID="ChildGenderDropDown7" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown7" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild76" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown7" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="TextBoxChild73" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <asp:Panel ID="Panel8" runat="server">
        <p>
            <asp:Label ID="LabelChild8" runat="server" Text="Relative 8" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TextBoxChild81" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild82" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TextBoxChild83" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth" OnTextChanged="TextBoxChild83_TextChanged"></asp:TextBox>
            <asp:DropDownList ID="ChildGenderDropDown8" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Unspecified">Unspecified</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ChildSSDropDown8" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Shirt Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBoxChild86" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:DropDownList ID="ChildCSDropDown8" runat="server" Width="160px">
                <asp:ListItem>Please Select Gender</asp:ListItem>
                <asp:ListItem Enabled="False">Please Select Coat Size</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men S">Men S</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men M">Men M</asp:ListItem>
                <asp:ListItem Enabled="False" Value="Men L">Men L</asp:ListItem>
                <asp:ListItem Enabled="False">Men XL</asp:ListItem>
                <asp:ListItem Enabled="False">Boy S</asp:ListItem>
                <asp:ListItem Enabled="False">Boy M</asp:ListItem>
                <asp:ListItem Enabled="False">Boy L</asp:ListItem>
                <asp:ListItem Enabled="False">Boy XL</asp:ListItem>
                <asp:ListItem Enabled="False">Women S</asp:ListItem>
                <asp:ListItem Enabled="False">Women M</asp:ListItem>
                <asp:ListItem Enabled="False">Women L</asp:ListItem>
                <asp:ListItem Enabled="False">Women XL</asp:ListItem>
                <asp:ListItem Enabled="False">Girl S</asp:ListItem>
                <asp:ListItem Enabled="False">Girl M</asp:ListItem>
                <asp:ListItem Enabled="False">Girl L</asp:ListItem>
                <asp:ListItem Enabled="False">Girl XL</asp:ListItem>
            </asp:DropDownList>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="TextBoxChild83" ErrorMessage="Please enter valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
        </p>
        </asp:Panel>
        <!--OLD CHILDREN INFO, OTHERs, NOT USED ANYMORE
        <p>
            <asp:Label ID="Label23" runat="server" Text="Child 2" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="TwoFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TwoLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="TwoDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="TwoAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="TwoGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="TwoShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="TwoPantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="TwoCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label24" runat="server" Text="Child 3"></asp:Label>
            <asp:TextBox ID="ThreeFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="ThreeLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="ThreeDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="ThreeAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="ThreeGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="ThreeShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="ThreePantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="ThreeCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label25" runat="server" Text="Child 4"></asp:Label>
            <asp:TextBox ID="FourFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="FourLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="FourDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="FourAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="FourGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="FourShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="FourPantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="FourCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label26" runat="server" Text="Child 5"></asp:Label>
            <asp:TextBox ID="FiveFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="FiveLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="FiveDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="FiveAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="FiveGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="FiveShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="FivePantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="FiveCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label27" runat="server" Text="Child 6"></asp:Label>
            <asp:TextBox ID="SixFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="SixLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="SixDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="SixAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="SixGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="SixShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="SixPantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="SixCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label28" runat="server" Text="Child 7"></asp:Label>
            <asp:TextBox ID="SevenFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="SevenLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="SevenSDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="SevenAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="SevenGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="SevenShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="SevenPantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="SevenCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label29" runat="server" Text="Child 8"></asp:Label>
            <asp:TextBox ID="EightFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="EightLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="EightDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="EightAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="EightGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="EightShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="EightPantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="EightCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            
            &nbsp;</p>-->
        </div>
    <div style="text-align:center;">

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert Family and Children" style="height: 2%; width: 20%; font: bold 14px Helvetica, Ariel;"/>
        <asp:Label ID="Label30" runat="server" Text=""></asp:Label>        
    </div>

    <div style="text-align: center">
        <asp:Button ID="ApptNav" runat="server" OnClick="ApptNav_Click" Text="Create Appointment" style="height: 2%; width: 20%; font: bold 14px Helvetica, Ariel;"/>
        <asp:Label ID="FIDSaved" runat="server" Text=""></asp:Label>
    </div>
	
   </div>
		<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client_Info]"></asp:SqlDataSource>
    <br />
    <br />
    <br />

</asp:Content>

