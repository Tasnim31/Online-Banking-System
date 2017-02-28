<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 352px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 279px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style7 {
            color: blue;
        }
        .auto-style8 {
            width: 279px;
            text-align: right;
            color: blue;
            font-weight: bold;
        }
    </style>
    
    <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
    
</head>
<body style="width:100%">
    <form id="form1" runat="server">
   <div id="header">
<h1 style="margin-left:20px">Admin Login</h1>
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
                          <table class="auto-style4">
                         <tr>
                             <td class="auto-style5">&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style5">&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style5">&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style6">
      
   
   
    
      
                     <asp:Label ID="Label1" runat="server" Text="User Name" CssClass="auto-style7"></asp:Label>
                             </td>
                             <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style8">&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style6">
                     <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style7"></asp:Label>
                             </td>
                             <td>
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5">&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td colspan="2" style="text-align: center">
                 <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click1" Height="30px" style="text-align: center; color: #FFFFFF; font-weight: 700; font-size: small; background-color: #0000FF" Width="100px" />
      
    
      
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5" colspan="2">
                                 <asp:Label ID="Label3" runat="server" style="text-align: center; font-weight: 700; font-size: medium; color: #0000FF" Text="Label1"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5">&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
      
    
      
    </div>	
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
