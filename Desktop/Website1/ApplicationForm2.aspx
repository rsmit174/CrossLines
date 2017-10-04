<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationForm2.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master"%>

<asp:Content runat="server" ID="head" ContentPlaceHolderId="head">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content> 

<asp:Content runat="server" ID="content" ContentPlaceHolderId="body">

    <div>
    
        <h2>Cross Lines Application Continued</h2>
        <h2>Family Info</h2>
    
    </div>
    <div style="text-align: center;">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client_Info]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

    <p>
            <asp:Label ID="Label20" runat="server" Text="Spouse" CssClass="AppForm2_Col" ></asp:Label>
            <asp:TextBox ID="SFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="SLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="SDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="SAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="SGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="SShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="SPantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="SCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label21" runat="server" Text="Child 1" CssClass="AppForm2_Col"></asp:Label>
            <asp:TextBox ID="OneFirstName" runat="server" CssClass="AppForm2_Col" Placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="OneLastName" runat="server" CssClass="AppForm2_Col" Placeholder="Last Name"></asp:TextBox>
            <asp:TextBox ID="OneDoB" runat="server" CssClass="AppForm2_Col" Placeholder="Date of Birth"></asp:TextBox>
            <asp:TextBox ID="OneAge" runat="server" CssClass="AppForm2_Col" Placeholder="Age"></asp:TextBox>
            <asp:TextBox ID="OneGender" runat="server" CssClass="AppForm2_Col" Placeholder="Gender"></asp:TextBox>
            <asp:TextBox ID="OneShirtSize" runat="server" CssClass="AppForm2_Col" Placeholder="Shirt Size"></asp:TextBox>
            <asp:TextBox ID="OnePantSize" runat="server" CssClass="AppForm2_Col" Placeholder="Pant Size"></asp:TextBox>
            <asp:TextBox ID="OneCoatSize" runat="server" CssClass="AppForm2_Col" Placeholder="Coat Size"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label22" runat="server" Text="Child 2" CssClass="AppForm2_Col"></asp:Label>
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
            <asp:Label ID="Label23" runat="server" Text="Child 3"></asp:Label>
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
            <asp:Label ID="Label24" runat="server" Text="Child 4"></asp:Label>
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
            <asp:Label ID="Label25" runat="server" Text="Child 5"></asp:Label>
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
            <asp:Label ID="Label26" runat="server" Text="Child 6"></asp:Label>
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
            <asp:Label ID="Label27" runat="server" Text="Child 7"></asp:Label>
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
            <asp:Label ID="Label28" runat="server" Text="Child 8"></asp:Label>
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
            &nbsp;</p>
        </div>
    <div style="text-align:center;">

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Complete Application" style="height: 2%; width: 20%; font: bold 14px Helvetica, Ariel;"/>
        <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
