<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditFamilyInfo.aspx.cs" Inherits="EditFamilyInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <!-- Read this manual page about putting asp controls into Gridviews.
            It'll help a lot.
            https://msdn.microsoft.com/en-us/library/ms178294.aspx -->
    <h2>Edit Family Info</h2>
        <asp:GridView ID="FamilyInfoGrid" runat="server" AutoGenerateColumns="False" DataSourceID="FamilyInfoSQL" AutoGenerateEditButton="True">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" ReadOnly="True" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Pant_Size" HeaderText="Pant_Size" SortExpression="Pant_Size" />
                <asp:BoundField DataField="Shirt_Size" HeaderText="Shirt_Size" SortExpression="Shirt_Size" />
                <asp:BoundField DataField="Coat_Size" HeaderText="Coat_Size" SortExpression="Coat_Size" />
                <asp:BoundField DataField="Spouse_FirstName" HeaderText="Spouse_FirstName" SortExpression="Spouse_FirstName" />
                <asp:BoundField DataField="Spouse_LastName" HeaderText="Spouse_LastName" SortExpression="Spouse_LastName" />
                <asp:BoundField DataField="Spouse_DOB" HeaderText="Spouse_DOB" SortExpression="Spouse_DOB" ReadOnly="True" />
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
    </div>
<asp:SqlDataSource ID="FamilyInfoSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], CONVERT(VARCHAR(10),[DOB],110) AS 'DOB', [Gender], [Pant_Size], [Shirt_Size], [Coat_Size], [Spouse_FirstName], [Spouse_LastName], CONVERT(VARCHAR(10),[Spouse_DOB],110) AS 'Spouse_DOB', [Spouse_Gender], [Spouse_Pant_Size], [Spouse_Shirt_Size], [Spouse_Coat_Size], [Address1], [Address2], [City], [State], [ZIP], [Phone], [Total_Income], [House_Hold_Size] FROM [Family] WHERE ([FID] = @FID)">
    <SelectParameters>
        <asp:SessionParameter Name="FID" SessionField="fid" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ChildInfoSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Child_FirstName], [Child_LastName], [Child_DOB], [Child_Gender], [Child_Pant_Size], [Child_Shirt_Size], [Child_Coat_Size] FROM [Children] WHERE ([FK_Family_FID] = @FK_Family_FID)">
        <SelectParameters>
            <asp:SessionParameter Name="FK_Family_FID" SessionField="fid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <h3>Edit Child Info</h3>

    <asp:GridView ID="ChildrenInfoGrid" runat="server" AutoGenerateColumns="False" DataSourceID="ChildInfoSQL" AutoGenerateEditButton="True">
        <Columns>
            <asp:BoundField DataField="Child_FirstName" HeaderText="Child_FirstName" SortExpression="Child_FirstName" />
            <asp:BoundField DataField="Child_LastName" HeaderText="Child_LastName" SortExpression="Child_LastName" />
            <asp:BoundField DataField="Child_DOB" HeaderText="Child_DOB" SortExpression="Child_DOB" />
            <asp:BoundField DataField="Child_Gender" HeaderText="Child_Gender" SortExpression="Child_Gender" />
            <asp:BoundField DataField="Child_Pant_Size" HeaderText="Child_Pant_Size" SortExpression="Child_Pant_Size" />
            <asp:BoundField DataField="Child_Shirt_Size" HeaderText="Child_Shirt_Size" SortExpression="Child_Shirt_Size" />
            <asp:BoundField DataField="Child_Coat_Size" HeaderText="Child_Coat_Size" SortExpression="Child_Coat_Size" />
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
</asp:Content>

