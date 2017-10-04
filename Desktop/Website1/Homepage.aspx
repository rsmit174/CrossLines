<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" MasterPageFile="~/MasterPage.Master"%>

<asp:Content runat="server" ID="head" ContentPlaceHolderId="head">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content> 

<asp:Content runat="server" ID="content" ContentPlaceHolderId="body">

    <h2>Welcome to the Christmas Store Data System</h2>
    <div id="HomePageButtons1">
        <asp:Button ID="NewFamily" runat="server" OnClick="NewFamily_Click" Text="Enter a New Family" Style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;" />
        <asp:Button ID="GetSchedule" runat="server" Text="Search Families" OnClick="Search_Click" Style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;" />
        <br />
    </div>
    <div id="HomePageButtons2">
        <asp:Button ID="Button4" runat="server" Text="Clothing Size Report" OnClick="ClothingSize_Click" Style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;" />
        <asp:Button ID="Button1" runat="server" OnClick="MasterSchedule_Click" Text="Master Schedule" Style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;" />
        <br />
    </div>
    <div id="HomePageButtons3">
        <asp:Button ID="Button2" runat="server" Text="Family Report" OnClick="FamilyReport_Click" Style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;" />
        <asp:Button ID="Button3" runat="server" Text="Child Gender Report" OnClick="ChildGender_Click" Style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;" />
        <br />
    </div>
    <!--<div id="HomePageButtons4">
            
        <asp:Button ID="ExportToExcel" runat="server" Text="Export Data" OnClick="Export_Click" Style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;" />
    </div>-->
    
</asp:Content>