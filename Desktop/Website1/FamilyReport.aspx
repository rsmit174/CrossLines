<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FamilyReport.aspx.cs" Inherits="FamilyReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
	<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="PrintStyles.css" media="print" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    
    <h2>Family Report</h2>
    <br />
    <h3>Totals</h3>
    <br />
    <asp:GridView ID="FamilyReportTotalGrid" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="FamilyReportTotalSQL">

        <Columns>
            <asp:BoundField DataField="Family Size" HeaderText="Family Size" ReadOnly="True" SortExpression="Family Size" />
            <asp:BoundField DataField="# of Families" HeaderText="# of Families" ReadOnly="True" SortExpression="# of Families" />
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
    <asp:SqlDataSource ID="FamilyReportTotalSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT numMembers as 'Family Size', COUNT(*) as '# of Families' FROM
(SELECT F.FID AS 'FamID',  
              ((CASE
                     WHEN F.Spouse_LastName &lt;&gt; ''
                           THEN 2
                      ELSE 1
               END) + ISNULL((SELECT COUNT(*) FROM Children WHERE F.FID = Children.FK_Family_FID GROUP BY Children.FK_Family_FID), 0)) AS 'numMembers'
FROM Children C FULL OUTER JOIN Family F
ON  F.FID = C.FK_Family_FID
GROUP BY F.FID, C.FK_Family_FID, F.Spouse_LastName) T
GROUP BY numMembers"></asp:SqlDataSource>
    <br />
    <h3>By Shift</h3>
    <br />
    <asp:GridView ID="FamilyReportShiftGrid" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="FamilyReportShiftSQL">

        <Columns>
            <asp:BoundField DataField="Appt" HeaderText="Appt" SortExpression="Appt" />
            <asp:BoundField DataField="Family Size" HeaderText="Family Size" ReadOnly="True" SortExpression="Family Size" />
            <asp:BoundField DataField="# of Families" HeaderText="# of Families" ReadOnly="True" SortExpression="# of Families" />
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
    <asp:SqlDataSource ID="FamilyReportShiftSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Appt, numMembers as 'Family Size', COUNT(*) as '# of Families' FROM
(SELECT F.Appointment AS 'Appt', F.FID AS 'FamID',  
              ((CASE
                     WHEN F.Spouse_LastName &lt;&gt; ''
                           THEN 2
                      ELSE 1
               END) + ISNULL((SELECT COUNT(*) FROM Children WHERE F.FID = Children.FK_Family_FID GROUP BY Children.FK_Family_FID), 0)) AS 'numMembers'
FROM Children C FULL OUTER JOIN Family F
ON  F.FID = C.FK_Family_FID
GROUP BY F.Appointment, F.FID, C.FK_Family_FID, F.Spouse_LastName) T
GROUP BY Appt, numMembers
ORDER BY Appt"></asp:SqlDataSource>
</asp:Content>

