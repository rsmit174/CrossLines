<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChildGenderReport.aspx.cs" Inherits="ChildGenderReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
	<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="PrintStyles.css" media="print" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2>Child Gender Report</h2>
    <br />
    <h3>Totals</h3>
    <asp:GridView ID="ChildGenderTotalsGrid" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="ChildGenderTotalsSQL">
        <Columns>
            <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="True" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="# of Children" HeaderText="# of Children" ReadOnly="True" SortExpression="# of Children" />
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
    <br />
    <asp:SqlDataSource ID="ChildGenderTotalsSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DATEDIFF(year, Child_DOB, GETDATE()) AS 'Age', Child_Gender AS 'Gender', COUNT(*) AS '# of Children'
FROM Children 
GROUP BY DATEDIFF(year, Child_DOB, GETDATE()), Child_Gender 
ORDER BY DATEDIFF(year, Child_DOB, GETDATE())"></asp:SqlDataSource>
    <br />
    <br />
    <h3>By Shift</h3>
    <asp:GridView ID="ChildGenderShiftsGrid" runat="server" HorizontalAlign="Center" DataSourceID="ChildGenderShiftsSQL" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Appointment" HeaderText="Appointment" SortExpression="Appointment" />
            <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="True" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="# of Children" HeaderText="# of Children" ReadOnly="True" SortExpression="# of Children" />
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
    <asp:SqlDataSource ID="ChildGenderShiftsSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT F.Appointment, DATEDIFF(year, C.Child_DOB, GETDATE()) AS 'Age', C.Child_Gender AS 'Gender', COUNT(*) AS '# of Children'
FROM Children C INNER JOIN Family F
ON C.FK_Family_FID = F.FID
GROUP BY F.Appointment, DATEDIFF(year, Child_DOB, GETDATE()), Child_Gender 
ORDER BY F.Appointment"></asp:SqlDataSource>
<br />
    <br />
    <br />
</asp:Content>

