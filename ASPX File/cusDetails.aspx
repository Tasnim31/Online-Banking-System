<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cusDetails.aspx.cs" Inherits="cusDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer informations</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 537px;
            text-align: right;
            color: #0000FF;
            font-weight: 700;
        }
        .auto-style3 {
            width: 228px;
            text-align: center;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
     <div id="header">
<h1 style="margin-left:20px">Customer Informations</h1>
</div>
<div id="manu">
     <ul id="nav">
         <li><a href="Home_page.aspx"> Home</a></li>
           <li><a href="admin_login.aspx"> Admin Login</a></li>
           <li><a href="customer_login.aspx">Customer Login</a></li>
           <li><a href="Open New Account.aspx">Open New Account</a></li>
           <li><a href="Our Products and Services.aspx">Our Products & Services</a></li>
           <li><a href="About Us.aspx">About Us</a></li>
           <li><a href="Contact Us.aspx">Contact Us</a></li>
   </ul>
</div>

        <div style="background-color:silver;height:50px">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Find Customers</td>
                    <td class="auto-style3">
                         <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
                        <asp:TextBox ID="searchTextBox" runat="server" Width="171px"></asp:TextBox>
                         <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" MinimumPrefixLength="1" ServiceMethod="GetCompletionList" TargetControlID="searchTextBox" CompletionInterval="500"></asp:AutoCompleteExtender>
                    </td>
                    <td>
                        <asp:Button ID="searchButton" runat="server" Text="Search" Width="77px" style="color: #FFFFFF; font-weight: 700; font-size: small; background-color: #0000FF" />
                    </td>
                </tr>
            </table>

        </div>

<div id="section">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="Welcome Admin !!!    Please Search the Customer by Name." GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="fathername" HeaderText="fathername" SortExpression="fathername" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="call" HeaderText="call" SortExpression="call" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance" />
            <asp:BoundField DataField="pin" HeaderText="pin" SortExpression="pin" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [custinfo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [custinfo] ([name], [fathername], [address], [birthday], [age], [nationality], [gender], [call], [email], [type], [balance], [pin]) VALUES (@name, @fathername, @address, @birthday, @age, @nationality, @gender, @call, @email, @type, @balance, @pin)" SelectCommand="SELECT [Id], [name], [fathername], [address], [birthday], [age], [nationality], [gender], [call], [email], [type], [balance], [pin] FROM [custinfo] WHERE ([name] LIKE '%' + @name + '%')" UpdateCommand="UPDATE [custinfo] SET [name] = @name, [fathername] = @fathername, [address] = @address, [birthday] = @birthday, [age] = @age, [nationality] = @nationality, [gender] = @gender, [call] = @call, [email] = @email, [type] = @type, [balance] = @balance, [pin] = @pin WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="fathername" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="birthday" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="nationality" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="call" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="balance" Type="String" />
            <asp:Parameter Name="pin" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="searchTextBox" Name="name" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="fathername" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="birthday" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="nationality" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="call" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="balance" Type="String" />
            <asp:Parameter Name="pin" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
        <div id="lower">
    <div style="margin-left: 183px">
        <asp:Label ID="visitCounter" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
    </div>
</div>

<div id="footer">
All rights reserved.
</div>
    </form>
</body>
</html>
