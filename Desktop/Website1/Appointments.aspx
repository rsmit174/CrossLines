<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="Appointments" MasterPageFile="~/MasterPage.master" %>

<asp:Content runat="server" ID="head" ContentPlaceHolderId="head">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content> 

<asp:Content runat="server" ID="content" ContentPlaceHolderId="body">

        <div>
            <br />

            <h2>Make Appointments</h2>

            <div id="takenAppts">

                <p style="text-decoration: underline">Taken Appointments</p>

                <asp:GridView ID="TakenApptsGridView" runat="server" DataSourceID="TakenApptsSQL" AutoGenerateColumns="False">

                    <Columns>
                        <asp:BoundField DataField="Appointment" HeaderText="Appointment" SortExpression="Appointment" />
                        <asp:BoundField DataField="# of appts" HeaderText="# of appts" ReadOnly="True" SortExpression="# of appts" />
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

                <asp:SqlDataSource ID="TakenApptsSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Appointment], COUNT(*) AS '# of appts' FROM [Family] GROUP BY [Appointment]"></asp:SqlDataSource>

            </div>

            <div id="currentFamily">
                <p style="text-decoration: underline">Current Family</p>

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="CurrentFamilySQL">

                    <Columns>
                        <asp:BoundField DataField="Appointment" HeaderText="Appointment" SortExpression="Appointment" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
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

                <asp:SqlDataSource ID="CurrentFamilySQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Appointment], [FirstName], [LastName], [Address1], [City], [State] FROM [Family] WHERE ([FID] = @FID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="FID" SessionField="fid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <!-- For choosing an appointment date -->
            <div id="timeSelect">                
                <!-- So the user can choose a month, day, and year -->
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="12pt" ForeColor="Black" Height="375px" Width="495px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#666666" ForeColor="White" />
                    <TitleStyle BackColor="#990000" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>                

                <br />

                <!-- hours -->
                <asp:DropDownList ID="hourDD" runat="server" OnSelectedIndexChanged="hourDD_SelectedIndexChanged">                                    
                    <asp:ListItem Value="0">hh</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>

                <!-- minutes -->
                <asp:DropDownList ID="minDD" runat="server" OnSelectedIndexChanged="minDD_SelectedIndexChanged">
                    <asp:ListItem Value="0">:mm</asp:ListItem>
                    <asp:ListItem Value="0">:00</asp:ListItem>
                    <asp:ListItem Value="30">:30</asp:ListItem>                
                </asp:DropDownList>

                <!-- am or pm -->
                <asp:DropDownList ID="dayOrNightDD" runat="server">
                    <asp:ListItem Value="0">am/pm</asp:ListItem>
                    <asp:ListItem Value="1">am</asp:ListItem>
                    <asp:ListItem Value="2">pm</asp:ListItem>                
                </asp:DropDownList>

                <br />
                <br />
                <asp:Button ID="dateSubmitButton" runat="server" OnClick="dateSubmitButton_Click" Text="Submit Date" style="height: 15%; width: 40%; font: bold 18px Helvetica"/>
                <!-- <asp:SqlDataSource ID="ApptSubmitSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource> -->
                <br />
                <br />

                <div id="ClientInsertButtons" style="text-align:center;">
			        <asp:Button ID="ClientOutputButton" runat="server" OnClick="ClientOutputButton_Click" Text="To Output Page" style="height: 2%; width: 30%; font: bold 14px Helvetica, Ariel;"/>			
		        </div>
            </div>
        </div>
</asp:Content>
