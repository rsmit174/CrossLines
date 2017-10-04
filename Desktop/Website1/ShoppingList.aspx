<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingList.aspx.cs" Inherits="ShoppingList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
	<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="PrintStyles.css" media="print" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <!-- Should collect all the families scheduled for a certain time slot and give the option to print their shopping lists -->
    <h2>Shopping List</h2>

    <asp:GridView ID="AppointmentGrid" runat="server" AutoGenerateColumns="False" DataSourceID="AppointmentSQL">
        <Columns>
            <asp:BoundField DataField="Appointment" HeaderText="Appointment" SortExpression="Appointment" />
        </Columns>
        <FooterStyle CssClass="GridViewFooterStyle" />
        <HeaderStyle CssClass="GridViewHeaderStyle" />
        <PagerStyle CssClass="GridViewPagerStyle" />
        <RowStyle CssClass="GridViewRowStyle" />
        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
        <SortedAscendingCellStyle CssClass="GridViewSortedAscendingCellStyle" />
        <SortedAscendingHeaderStyle CssClass="GridViewSortedAscendingHeaderStyle" />
        <SortedDescendingCellStyle CssClass="GridViewSortedDescendingCellStyle" />
        <SortedDescendingHeaderStyle CssClass="GridViewSortedDescendingHeaderStyle" />
    </asp:GridView>
    <asp:SqlDataSource ID="AppointmentSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Appointment] FROM [Family] WHERE ([FID] = @FID)">
        <SelectParameters>
            <asp:SessionParameter Name="FID" SessionField="fid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <p>Adults may choose either a shirt or one pair of pants.</p>
    <p>Children get one shirt, one pair of pants, and one coat.</p><br />

    <asp:GridView ID="InfoGrid" runat="server" DataSourceID="InfoSQL" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="First Name" HeaderText="First Name" ReadOnly="True" SortExpression="First Name" />
            <asp:BoundField DataField="Last Name" HeaderText="Last Name" ReadOnly="True" SortExpression="Last Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="True" SortExpression="Age" />
            <asp:BoundField DataField="Pant Size" HeaderText="Pant Size" ReadOnly="True" SortExpression="Pant Size" />
            <asp:BoundField DataField="Shirt Size" HeaderText="Shirt Size" ReadOnly="True" SortExpression="Shirt Size" />
            <asp:BoundField DataField="Coat Size" HeaderText="Coat Size" ReadOnly="True" SortExpression="Coat Size" />
        </Columns>
        <FooterStyle CssClass="GridViewFooterStyle" />
        <HeaderStyle CssClass="GridViewHeaderStyle" />
        <PagerStyle CssClass="GridViewPagerStyle" />
        <RowStyle CssClass="GridViewRowStyle" />
        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
        <SortedAscendingCellStyle CssClass="GridViewSortedAscendingCellStyle" />
        <SortedAscendingHeaderStyle CssClass="GridViewSortedAscendingHeaderStyle" />
        <SortedDescendingCellStyle CssClass="GridViewSortedDescendingCellStyle" />
        <SortedDescendingHeaderStyle CssClass="GridViewSortedDescendingHeaderStyle" />
    </asp:GridView>
    <asp:SqlDataSource ID="InfoSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM
(SELECT [FirstName] AS 'First Name', [LastName] AS 'Last Name', DATEDIFF(year, DOB, GETDATE()) AS 'Age', [Pant_Size] AS 'Pant Size', [Shirt_Size] AS 'Shirt Size', [Coat_Size] AS 'Coat Size'
FROM [Family] 
WHERE ([FID] = @FID)
    UNION
SELECT [Spouse_FirstName], [Spouse_LastName], DATEDIFF(year, DOB, GETDATE()) AS 'Age', [Spouse_Shirt_Size], [Spouse_Pant_Size], [Spouse_Coat_Size]
FROM [Family] 
WHERE ([FID] = @FID)
    UNION
SELECT [Child_FirstName], [Child_LastName], DATEDIFF(year, Child_DOB, GETDATE()) AS 'Age', [Child_Shirt_Size], [Child_Pant_Size], [Child_Coat_Size]
FROM [Children]
WHERE ([FK_Family_FID] = @FK_Family_FID)) T
ORDER BY Age DESC">
        <SelectParameters>
            <asp:SessionParameter Name="FID" SessionField="fid" />
            <asp:SessionParameter Name="FK_Family_FID" SessionField="fid" />
        </SelectParameters>
    </asp:SqlDataSource>

    </asp:Content>

