<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">            
            <!-- Textbox should query database for matches with first and last names.
                 Results should appear in ListView. -->
            <div>
                  <h2>Search for families</h2>
                <br />
                <br />
                <div style="text-align:center;">
                <asp:Label ID="SearchLabel" runat="server" Text="Enter Family Name" CssClass="left"></asp:Label>
                <asp:TextBox ID="searchBox" runat="server" CssClass="right"></asp:TextBox>
                   <br />
                    <br />
                <asp:Button ID="nameSubmitButton" runat="server" OnClick="nameSubmitButton_Click" Text="Search" style="height: 60px; width: 200px; font: bold 24px Helvetica, Ariel;" />
                    <br />
                    <br />
                </div>
                  <asp:GridView ID="SearchResults" runat="server" OnSelectedIndexChanged="SearchResults_SelectedIndexChanged" AllowPaging="True" HorizontalAlign="Center" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataSourceID="SearchResultsSQL" DataKeyNames="FID">
                      <Columns>
                          <asp:CommandField ShowSelectButton="True" />
                          <asp:BoundField DataField="FID" HeaderText="FID" InsertVisible="False" ReadOnly="True" SortExpression="FID" />
                          <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                          <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                          <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                          <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                          <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                          <asp:BoundField DataField="ZIP" HeaderText="ZIP" SortExpression="ZIP" />
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
                  <br />    
                <div style="text-align: center">      
                    <p>After Selection</p>      
                    <asp:Button ID="EditFamButton" runat="server" Text="Edit Family Info" OnClick="EditFamButton_Click" style="height: 30px; width: 170px; font: 18px Helvetica, Ariel;"/>

                    <br />
                    <br />

                    <asp:Button ID="EditApptButton" runat="server" Text="Edit Appointment" OnClick="EditApptButton_Click" style="height: 30px; width: 170px; font: 18px Helvetica, Ariel;"/>

                    <br />
                    <br />

                    <asp:Button ID="ShoppingListButton" runat="server" Text="See Shopping List" OnClick="ShoppingListButton_Click" style="height: 30px; width: 170px; font: 18px Helvetica, Ariel;"/>
                </div>

                <br />
                  <asp:SqlDataSource ID="SearchResultsSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FID], [FirstName], [LastName], [Address1], [City], [State], [ZIP] FROM [Family] WHERE ([LastName] LIKE '%' + @LastName + '%')">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="searchBox" Name="LastName" PropertyName="Text" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                <br />
            </div>
</asp:Content>

