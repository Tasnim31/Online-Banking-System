<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer_login.aspx.cs" Inherits="customer_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Login</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
    <style type="text/css">
        .auto-style3 {
            width: 100%;<a href="customer_login.aspx">customer_login.aspx</a>
            height: 350px;
            height: 364px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
            width: 284px;
        }
        .auto-style8 {
            text-align: right;
            width: 284px;
            color: blue;
            font-weight: bold;
        }
        .auto-style9 {
            color: blue;
        }
        .auto-style10 {
            text-align: center;
            font-weight: bold;
        }
        .auto-style11 {
            text-align: right;
            width: 284px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
<h1 style="margin-left:20px">Customer Login</h1>
</div>
<div id="manu">
     <ul id="nav">
         <li><a href="Home_page.aspx"> Home</a></li>
           <li><a href="admin_login.aspx"> Admin Login</a></li>
           <li><a href="customer_login.aspx">Customer Login</a></li>
           <li><a href="Open New Account.aspx">Open New Account</a></li>
           <li><a href="Our Product and Services.aspx">Our Products & Services</a></li>
           <li><a href="About Us.aspx">About Us</a></li>
           <li><a href="Contact us.aspx">Contact us</a></li>
   </ul>
</div>

<div id="section">
 <div id="Big_block">
     
     
     
        
     <table class="auto-style3">
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">Customer EmailId&nbsp; </td>
             <td>	
                      <asp:TextBox ID="emailBox" runat="server" CausesValidation="True" Width="180px"></asp:TextBox>
                      </td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;</td>
             <td>
                      <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="emailBox" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
         </tr>
         <tr>
             <td class="auto-style8">Password&nbsp; </td>
             <td>
                      <asp:TextBox ID="passBox" runat="server" TextMode="Password" CausesValidation="True" style="margin-bottom: 0px" Width="180px"></asp:TextBox>
                      </td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;</td>
             <td>
                      <asp:RequiredFieldValidator ID="passValidator" runat="server" ControlToValidate="passBox" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
         </tr>
         <tr>
             <td class="auto-style11">
                  <asp:CheckBox ID="remCheckbox" runat="server" Text="Remember Me" Checked="True" style="text-align: right" CssClass="auto-style9" />
                      </td>
             <td class="auto-style5">
                  <asp:Button ID="cusloginButton" runat="server" BackColor="#0066FF" BorderStyle="Solid" ForeColor="White" OnClick="cusloginButton_Click" Text="Login" Width="99px" Height="28px" style="font-weight: 700; font-size: small" />
                  </td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style10" colspan="2">
                      <asp:Label ID="msgLabel" runat="server" CssClass="auto-style9"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;</td>
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
