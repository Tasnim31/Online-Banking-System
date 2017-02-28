<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pdfDownload.aspx.cs" Inherits="pdfDownload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bank Statement Download</title>
    <link href="StyleSheet_obs.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 353px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            font-weight: bold;
            color: blue;
            font-size: large;
        }
        .auto-style5 {
            color: blue;
            font-weight: bold;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="header">
<h1 style="margin-left:30px">Bank Statement Download</h1>
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
                   <table class="auto-style1">
                       <tr>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style2">&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style4">Do You Want To Download Your Bank Statement?</td>
                       </tr>
                       <tr>
                           <td class="auto-style4">&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style4">Click Download Button To Get Your Bankstatement As PDF.</td>
                       </tr>
                       <tr>
                           <td class="auto-style4">&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style2">
                               <asp:Button ID="downloadButton" runat="server"  OnClick="Button1_Click1" BackColor="Blue" CssClass="auto-style5" ForeColor="White" Height="38px" Text="Download" />
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style5">&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
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
