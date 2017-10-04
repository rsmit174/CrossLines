<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClothingSizeReport.aspx.cs" Inherits="ClothingSizeReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
	<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="PrintStyles.css" media="print" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2>Clothing Sizes Report</h2>
    <br />
    <h3>Totals</h3>
    <asp:GridView ID="ClothingSizeTotalsGrid" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="ClothingSizeTotalsSQL">
        <Columns>
            <asp:BoundField DataField="Clothing Size" HeaderText="Clothing Size" ReadOnly="True" SortExpression="Clothing Size" />
            <asp:BoundField DataField="Count" HeaderText="Count" ReadOnly="True" SortExpression="Count" />
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
    <asp:SqlDataSource ID="ClothingSizeTotalsSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Pant_Size AS 'Clothing Size', COUNT(*) AS 'Count'
FROM Family
GROUP BY Pant_Size
  UNION
SELECT Shirt_Size, COUNT(*)
FROM Family
GROUP BY Shirt_Size
  UNION
SELECT Coat_Size, COUNT(*)
FROM Family
GROUP BY Coat_Size
  UNION
SELECT Spouse_Shirt_Size, COUNT(*)
FROM Family
GROUP BY Spouse_Shirt_Size
  UNION
SELECT Spouse_Coat_Size, COUNT(*)
FROM Family
GROUP BY Spouse_Coat_Size
  UNION
SELECT Child_Pant_Size, COUNT(*)
FROM Children
GROUP BY Child_Pant_Size
  UNION
SELECT Child_Shirt_Size, COUNT(*)
FROM Children
GROUP BY Child_Shirt_Size
  UNION
SELECT Child_Coat_Size, COUNT(*)
FROM Children
GROUP BY Child_Coat_Size"></asp:SqlDataSource>
    <br />
    <h3>By Shift</h3>
    <asp:GridView ID="ClothingSizeShiftsGrid" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="ClothingSizeShiftsSQL">
        <Columns>
            <asp:BoundField DataField="Appointment" HeaderText="Appointment" ReadOnly="True" SortExpression="Appointment" />
            <asp:BoundField DataField="Clothing Size" HeaderText="Clothing Size" ReadOnly="True" SortExpression="Clothing Size" />
            <asp:BoundField DataField="Count" HeaderText="Count" ReadOnly="True" SortExpression="Count" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="ClothingSizeShiftsSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Appointment, Pant_Size AS 'Clothing Size', COUNT(*) AS 'Count'
FROM Family
GROUP BY Appointment, Pant_Size
  UNION
SELECT Appointment, Shirt_Size, COUNT(*)
FROM Family
GROUP BY Appointment, Shirt_Size
  UNION
SELECT Appointment, Coat_Size, COUNT(*)
FROM Family
GROUP BY Appointment, Coat_Size
  UNION
SELECT Appointment, Spouse_Shirt_Size, COUNT(*)
FROM Family
GROUP BY Appointment, Spouse_Shirt_Size
  UNION
SELECT Appointment, Spouse_Coat_Size, COUNT(*)
FROM Family
GROUP BY Appointment, Spouse_Coat_Size
  UNION
SELECT F.Appointment, C.Child_Pant_Size, COUNT(*)
FROM Children C JOIN Family F
 ON C.FK_Family_FID = F.FID
GROUP BY F.Appointment, Child_Pant_Size
  UNION
SELECT F.Appointment, C.Child_Shirt_Size, COUNT(*)
FROM Children C JOIN Family F
 ON C.FK_Family_FID = F.FID
GROUP BY F.Appointment,Child_Shirt_Size
  UNION
SELECT F.Appointment, C.Child_Coat_Size, COUNT(*)
FROM Children C JOIN Family F
 ON C.FK_Family_FID = F.FID
GROUP BY F.Appointment, Child_Coat_Size"></asp:SqlDataSource>
<br />
    <br />
    <br />
</asp:Content>

