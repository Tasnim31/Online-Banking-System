<%@ Page Language="C#" AutoEventWireup="true" CodeFile="balanceCheck.aspx.cs" Inherits="balanceCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Balance Check</title>
    <link href="StyleSheet_obs.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style10 {
            font-size: x-large;
            color: blue;
            font-weight: 700;
        }
        .auto-style13 {
            width: 100%;
            height: 352px;
        }
        .auto-style14 {
            height: 39px;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
            font-weight: bold;
        }
        .auto-style17 {
            text-align: center;
            font-weight: bold;
            font-size: x-large;
            color: blue;
        }
        .auto-style18 {
            font-size: x-large;
            color: blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="header">
<h1 style="margin-left:30px">Balance Check</h1>
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
       
       <table class="auto-style13">
           <tr>
               <td class="auto-style14"></td>
           </tr>
           <tr>
               <td class="auto-style17">Hi</td>
           </tr>
           <tr>
               <td class="auto-style15">
      <asp:Label ID="nameLabel" runat="server" CssClass="auto-style10" Width="437px"></asp:Label>

               </td>
           </tr>
           <tr>
               <td class="auto-style17">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style17">You Have</td>
           </tr>
           <tr>
               <td class="auto-style16">

      <asp:Label ID="balanceLabel" runat="server" CssClass="auto-style18"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="auto-style17">Taka In Your Account.</td>
           </tr>
           <tr>
               <td class="auto-style17">&nbsp;</td>
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
