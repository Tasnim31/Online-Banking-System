<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Our Products and Services.aspx.cs" Inherits="Our_Products_and_Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products and Services</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 327px;
        }
        .auto-style3 {
            width: 145px;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
     <div id="header">
<h1 style="margin-left:20px">Our Products and Services</h1>
</div>
<div id="manu">
     <ul id="nav">
           <li><a href="Home_page.aspx"> Home</a></li>
           <li><a href="admin_login.aspx"> Admin Login</a></li>
           <li><a href="customer_login.aspx">Customer Login</a></li>
           <li><a href="Open New Account.aspx">Open New Account</a></li>
           <li><a href="Our Product and Services.aspx">Our Products & Services</a></li>
           <li><a href="About Us.aspx">About Us</a></li>
           <li><a href="Contact Us.aspx">Contact Us</a></li>
   </ul>
</div>

<div id="section">
 <div id="Big_block">

   
     <table class="auto-style2" style="margin-top:50px">
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>Open New Account</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>Online Money Transection</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>
                 <asp:Label ID="Label9" runat="server" Text="Online Balance Check"></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>
                 <asp:Label ID="Label10" runat="server" Text="Get Email on Withdraw of Money"></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>
                 <asp:Label ID="Label5" runat="server" Text="Get Email on Deposite of Money"></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
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
