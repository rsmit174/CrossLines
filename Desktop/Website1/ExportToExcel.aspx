<%@ Page Title="" Language="C#" debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ExportToExcel.aspx.cs" Inherits="ExportToExcel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <div id="HomePageButtons" style="text-align:center;">
    
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
    
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="button1_Click" style="height: 80px; width: 300px; font: bold 24px Helvetica, Ariel;"/>
        </div>
</asp:Content>

