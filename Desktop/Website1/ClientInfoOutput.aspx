<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClientInfoOutput.aspx.cs" Inherits="Default2" MasterPageFile="~/MasterPage.master"%>

<asp:Content runat="server" ID="head" ContentPlaceHolderId="head">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content> 

<asp:Content runat="server" ID="content" ContentPlaceHolderId="body">

    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="FID" HeaderText="FID" InsertVisible="False" ReadOnly="True" SortExpression="FID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Pant_Size" HeaderText="Pant_Size" SortExpression="Pant_Size" />
                <asp:BoundField DataField="Shirt_Size" HeaderText="Shirt_Size" SortExpression="Shirt_Size" />
                <asp:BoundField DataField="Coat_Size" HeaderText="Coat_Size" SortExpression="Coat_Size" />
                <asp:BoundField DataField="Spouse_FirstName" HeaderText="Spouse_FirstName" SortExpression="Spouse_FirstName" />
                <asp:BoundField DataField="Spouse_LastName" HeaderText="Spouse_LastName" SortExpression="Spouse_LastName" />
                <asp:BoundField DataField="Spouse_DOB" HeaderText="Spouse_DOB" SortExpression="Spouse_DOB" />
                <asp:BoundField DataField="Spouse_Gender" HeaderText="Spouse_Gender" SortExpression="Spouse_Gender" />
                <asp:BoundField DataField="Spouse_Pant_Size" HeaderText="Spouse_Pant_Size" SortExpression="Spouse_Pant_Size" />
                <asp:BoundField DataField="Spouse_Shirt_Size" HeaderText="Spouse_Shirt_Size" SortExpression="Spouse_Shirt_Size" />
                <asp:BoundField DataField="Spouse_Coat_Size" HeaderText="Spouse_Coat_Size" SortExpression="Spouse_Coat_Size" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZIP" HeaderText="ZIP" SortExpression="ZIP" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Total_Income" HeaderText="Total_Income" SortExpression="Total_Income" />
                <asp:BoundField DataField="House_Hold_Size" HeaderText="House_Hold_Size" SortExpression="House_Hold_Size" />
                <asp:BoundField DataField="Appointment" HeaderText="Appointment" SortExpression="Appointment" />
            </Columns>
        </asp:GridView>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Family]" DeleteCommand="DELETE FROM [Family] WHERE [FID] = @FID" InsertCommand="INSERT INTO [Family] ([FirstName], [LastName], [DOB], [Gender], [Pant_Size], [Shirt_Size], [Coat_Size], [Spouse_FirstName], [Spouse_LastName], [Spouse_DOB], [Spouse_Gender], [Spouse_Pant_Size], [Spouse_Shirt_Size], [Spouse_Coat_Size], [Address1], [Address2], [City], [State], [ZIP], [Phone], [Total_Income], [House_Hold_Size], [Appointment]) VALUES (@FirstName, @LastName, @DOB, @Gender, @Pant_Size, @Shirt_Size, @Coat_Size, @Spouse_FirstName, @Spouse_LastName, @Spouse_DOB, @Spouse_Gender, @Spouse_Pant_Size, @Spouse_Shirt_Size, @Spouse_Coat_Size, @Address1, @Address2, @City, @State, @ZIP, @Phone, @Total_Income, @House_Hold_Size, @Appointment)" UpdateCommand="UPDATE [Family] SET [FirstName] = @FirstName, [LastName] = @LastName, [DOB] = @DOB, [Gender] = @Gender, [Pant_Size] = @Pant_Size, [Shirt_Size] = @Shirt_Size, [Coat_Size] = @Coat_Size, [Spouse_FirstName] = @Spouse_FirstName, [Spouse_LastName] = @Spouse_LastName, [Spouse_DOB] = @Spouse_DOB, [Spouse_Gender] = @Spouse_Gender, [Spouse_Pant_Size] = @Spouse_Pant_Size, [Spouse_Shirt_Size] = @Spouse_Shirt_Size, [Spouse_Coat_Size] = @Spouse_Coat_Size, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [ZIP] = @ZIP, [Phone] = @Phone, [Total_Income] = @Total_Income, [House_Hold_Size] = @House_Hold_Size, [Appointment] = @Appointment WHERE [FID] = @FID">
    <DeleteParameters>
        <asp:Parameter Name="FID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Pant_Size" Type="String" />
        <asp:Parameter Name="Shirt_Size" Type="String" />
        <asp:Parameter Name="Coat_Size" Type="String" />
        <asp:Parameter Name="Spouse_FirstName" Type="String" />
        <asp:Parameter Name="Spouse_LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="Spouse_DOB" />
        <asp:Parameter Name="Spouse_Gender" Type="String" />
        <asp:Parameter Name="Spouse_Pant_Size" Type="String" />
        <asp:Parameter Name="Spouse_Shirt_Size" Type="String" />
        <asp:Parameter Name="Spouse_Coat_Size" Type="String" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Address2" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="ZIP" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Total_Income" Type="String" />
        <asp:Parameter Name="House_Hold_Size" Type="String" />
        <asp:Parameter Name="Appointment" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Pant_Size" Type="String" />
        <asp:Parameter Name="Shirt_Size" Type="String" />
        <asp:Parameter Name="Coat_Size" Type="String" />
        <asp:Parameter Name="Spouse_FirstName" Type="String" />
        <asp:Parameter Name="Spouse_LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="Spouse_DOB" />
        <asp:Parameter Name="Spouse_Gender" Type="String" />
        <asp:Parameter Name="Spouse_Pant_Size" Type="String" />
        <asp:Parameter Name="Spouse_Shirt_Size" Type="String" />
        <asp:Parameter Name="Spouse_Coat_Size" Type="String" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Address2" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="ZIP" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Total_Income" Type="String" />
        <asp:Parameter Name="House_Hold_Size" Type="String" />
        <asp:Parameter Name="Appointment" Type="DateTime" />
        <asp:Parameter Name="FID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Children] WHERE [CID] = @CID" InsertCommand="INSERT INTO [Children] ([FK_Family_FID], [Child_FirstName], [Child_LastName], [Child_DOB], [Child_Gender], [Child_Pant_Size], [Child_Shirt_Size], [Child_Coat_Size]) VALUES (@FK_Family_FID, @Child_FirstName, @Child_LastName, @Child_DOB, @Child_Gender, @Child_Pant_Size, @Child_Shirt_Size, @Child_Coat_Size)" SelectCommand="SELECT * FROM [Children]" UpdateCommand="UPDATE [Children] SET [FK_Family_FID] = @FK_Family_FID, [Child_FirstName] = @Child_FirstName, [Child_LastName] = @Child_LastName, [Child_DOB] = @Child_DOB, [Child_Gender] = @Child_Gender, [Child_Pant_Size] = @Child_Pant_Size, [Child_Shirt_Size] = @Child_Shirt_Size, [Child_Coat_Size] = @Child_Coat_Size WHERE [CID] = @CID">
        <DeleteParameters>
            <asp:Parameter Name="CID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FK_Family_FID" Type="Int32" />
            <asp:Parameter Name="Child_FirstName" Type="String" />
            <asp:Parameter Name="Child_LastName" Type="String" />
            <asp:Parameter DbType="Date" Name="Child_DOB" />
            <asp:Parameter Name="Child_Gender" Type="String" />
            <asp:Parameter Name="Child_Pant_Size" Type="String" />
            <asp:Parameter Name="Child_Shirt_Size" Type="String" />
            <asp:Parameter Name="Child_Coat_Size" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FK_Family_FID" Type="Int32" />
            <asp:Parameter Name="Child_FirstName" Type="String" />
            <asp:Parameter Name="Child_LastName" Type="String" />
            <asp:Parameter DbType="Date" Name="Child_DOB" />
            <asp:Parameter Name="Child_Gender" Type="String" />
            <asp:Parameter Name="Child_Pant_Size" Type="String" />
            <asp:Parameter Name="Child_Shirt_Size" Type="String" />
            <asp:Parameter Name="Child_Coat_Size" Type="String" />
            <asp:Parameter Name="CID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
            <asp:BoundField DataField="FK_Family_FID" HeaderText="FK_Family_FID" SortExpression="FK_Family_FID" />
            <asp:BoundField DataField="Child_FirstName" HeaderText="Child_FirstName" SortExpression="Child_FirstName" />
            <asp:BoundField DataField="Child_LastName" HeaderText="Child_LastName" SortExpression="Child_LastName" />
            <asp:BoundField DataField="Child_DOB" HeaderText="Child_DOB" SortExpression="Child_DOB" />
            <asp:BoundField DataField="Child_Gender" HeaderText="Child_Gender" SortExpression="Child_Gender" />
            <asp:BoundField DataField="Child_Pant_Size" HeaderText="Child_Pant_Size" SortExpression="Child_Pant_Size" />
            <asp:BoundField DataField="Child_Shirt_Size" HeaderText="Child_Shirt_Size" SortExpression="Child_Shirt_Size" />
            <asp:BoundField DataField="Child_Coat_Size" HeaderText="Child_Coat_Size" SortExpression="Child_Coat_Size" />
        </Columns>
    </asp:GridView>
</asp:Content>