<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MasterSchedule.aspx.cs" Inherits="MasterSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
	<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="PrintStyles.css" media="print" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2>Master Schedule</h2>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Appoint" DataValueField="Appoint" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="MasterScheduleSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM
((SELECT [Appointment], [FID], [FirstName], [LastName], CONVERT(VARCHAR(10),[DOB],110) AS 'DOB', DATEDIFF(year, DOB, GETDATE()) AS 'Age', [Gender], [Pant_Size], [Shirt_Size], [Coat_Size], [Address1], [City], [State], [ZIP], [Phone], [Total_Income], [House_Hold_Size] FROM [Family] WHERE (CONVERT(varchar(22), CONVERT(date, Family.Appointment, 101)) = @Appointment)) 
    UNION
(SELECT NULL as 'Appointment', [FID], [Spouse_FirstName], [Spouse_LastName], CONVERT(VARCHAR(10),[Spouse_DOB],110), DATEDIFF(year, Spouse_DOB, GETDATE()) AS 'Age', [Spouse_Gender], [Spouse_Pant_Size], [Spouse_Shirt_Size], [Spouse_Coat_Size], '' as 'Address1', '' as 'City', '' as 'State', '' as 'ZIP', '' as Phone, '' as 'Total_Income', '' as 'House_Hold_Size' FROM [Family] WHERE (CONVERT(varchar(22), CONVERT(date, Family.Appointment, 101)) = @Appointment) AND [Spouse_FirstName] != '') 
    UNION
(SELECT NULL as 'Appointment', [FK_Family_FID], [Child_FirstName], [Child_LastName], CONVERT(VARCHAR(10),[Child_DOB],110), DATEDIFF(year, Child_DOB, GETDATE()) AS 'Age', [Child_Gender], [Child_Pant_Size], [Child_Shirt_Size], [Child_Coat_Size], '' as 'Address1', '' as 'City', '' as 'State', '' as 'ZIP', '' as Phone, '' as 'Total_Income', '' as 'House_Hold_Size' FROM [Children] INNER JOIN [Family] ON Family.FID = Children.FK_Family_FID WHERE (CONVERT(varchar(22), CONVERT(date, Family.Appointment, 101)) = @Appointment))) FamInfo
ORDER BY FID, Appointment DESC, Age DESC
">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Appointment" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="MasterScheduleGrid" runat="server" AutoGenerateColumns="False" DataSourceID="MasterScheduleSQL" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="Appointment" HeaderText="Appointment" ReadOnly="True" SortExpression="Appointment" />
            <asp:BoundField DataField="FID" HeaderText="FID" SortExpression="FID" ReadOnly="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" ReadOnly="True" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" ReadOnly="True" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" ReadOnly="True" />
            <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="True" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ReadOnly="True" />
            <asp:BoundField DataField="Pant_Size" HeaderText="Pant_Size" SortExpression="Pant_Size" ReadOnly="True" />
            <asp:BoundField DataField="Shirt_Size" HeaderText="Shirt_Size" SortExpression="Shirt_Size" ReadOnly="True" />
            <asp:BoundField DataField="Coat_Size" HeaderText="Coat_Size" SortExpression="Coat_Size" ReadOnly="True" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" ReadOnly="True" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" ReadOnly="True" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" ReadOnly="True" />
            <asp:BoundField DataField="ZIP" HeaderText="ZIP" SortExpression="ZIP" ReadOnly="True" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" ReadOnly="True" />
            <asp:BoundField DataField="Total_Income" HeaderText="Total_Income" SortExpression="Total_Income" ReadOnly="True" />
            <asp:BoundField DataField="House_Hold_Size" HeaderText="House_Hold_Size" ReadOnly="True" SortExpression="House_Hold_Size" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT CONVERT(varchar(22), CONVERT(date, Family.Appointment, 101)) as 'Appoint' FROM Family WHERE Appointment IS NOT NULL"></asp:SqlDataSource>
    </asp:Content>

