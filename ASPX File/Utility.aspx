<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Utility.aspx.cs" Inherits="Utility" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
    <link href="StyleSheet_obs.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 351px;
        }
        .auto-style3 {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
<h1 style="margin-left:30px">Utility</h1>
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

 <div id="section">
	 <div id="Big_block">
     

         <table class="auto-style2">
             <tr>
                 <td class="auto-style3" colspan="3">
                     <asp:Label ID="welcomeMsgLabel" runat="server" Font-Bold="True" Text="Label" style="font-size: xx-large; background-color: #FF6666"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3" colspan="3">
                     <asp:Button ID="bcheckButton" runat="server" BorderColor="White" BorderStyle="Ridge" ForeColor="White" PostBackUrl="~/balanceCheck.aspx" style="font-size: medium; font-weight: 700; background-color: #0000FF" Text="Balance Check" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3" colspan="3">
                     <asp:Button ID="transactionButton" runat="server" BorderColor="White" BorderStyle="Ridge" PostBackUrl="~/Transaction.aspx" style="color: #FFFFFF; font-weight: 700; font-size: medium; background-color: #0000FF" Text="Transaction" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3" colspan="3">
                     <asp:Button ID="statementButton2" runat="server" BorderStyle="Ridge" PostBackUrl="~/pdfDownload.aspx" style="color: #FFFFFF; font-weight: 700; font-size: medium; background-color: #0000FF" Text="Download Bank Statement" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3" colspan="3">
                     <asp:Button ID="cuslogoutButton" runat="server" BackColor="#0066FF" BorderStyle="Ridge" ForeColor="White" OnClick="cuslogoutButton_Click" Text="Logout" Width="84px" style="font-size: medium; font-weight: 700; background-color: #0000FF" />
                 </td>
             </tr>
         </table>
     

     </div>
</div>

<div id="lower">
    <div style="margin-left: 183px">
        <asp:Label ID="visitCounter" runat="server" Font-Bold="True"></asp:Label>
    </div>
</div>

<div id="footer">
All rights reserved.
</div>

    </form>
</body>
</html>
