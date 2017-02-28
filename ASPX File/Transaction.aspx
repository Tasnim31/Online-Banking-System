<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transactions</title>
    <link href="StyleSheet_obs.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style8 {
            width: 90%;
            height: 351px;
        }
        .auto-style11 {
            width: 65px;
        }
        .auto-style12 {
            text-align: center;
            width: 57px;
        }
        .auto-style17 {
            font-weight: bold;
            font-size: medium;
            color: white;
            background-color: #0000FF;
        }
        .auto-style21 {
            text-align: center;
            font-weight: bold;
            font-size: medium;
            color: blue;
        }
        .auto-style23 {
            color: blue;
        }
        .auto-style24 {
            width: 173px;
            text-align: center;
        }
        .auto-style25 {
            font-weight: bold;
            font-size: medium;
            color: blue;
            width: 57px;
            text-align: center;
        }
        .auto-style29 {
            height: 25px;
            width: 791px;
        }
        .auto-style30 {
            text-align: center;
            font-weight: bold;
            font-size: medium;
            width: 57px;
            height: 25px;
        }
        .auto-style32 {
            text-align: center;
            font-weight: bold;
            font-size: medium;
            color: blue;
            height: 25px;
            width: 98px;
        }
        .auto-style33 {
            width: 173px;
        }
        .auto-style34 {
            height: 22px;
            width: 791px;
        }
        .auto-style35 {
            text-align: center;
            font-weight: bold;
            font-size: medium;
            width: 57px;
            height: 22px;
            color: #0000FF;
        }
        .auto-style36 {
            width: 65px;
            text-align: center;
            font-weight: bold;
            font-size: medium;
            height: 22px;
        }
        .auto-style37 {
            text-align: center;
            font-weight: bold;
            font-size: medium;
            color: blue;
            height: 22px;
            width: 98px;
        }
        .auto-style42 {
            text-align: center;
            width: 98px;
        }
        .auto-style43 {
            text-align: center;
            font-weight: bold;
            font-size: medium;
            color: blue;
            width: 98px;
        }
        .auto-style44 {
            width: 98px;
        }
        .auto-style45 {
            width: 791px;
        }
        .auto-style46 {
            text-align: center;
            width: 65px;
        }
        .auto-style47 {
            text-align: center;
            font-weight: bold;
            font-size: medium;
            width: 65px;
            height: 25px;
        }
        .auto-style48 {
            font-weight: bold;
            font-size: medium;
            color: blue;
            width: 65px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="header">
<h1 style="margin-left:30px">Transactions</h1>
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
            <table class="auto-style8">
                <tr>
                    <td class="auto-style45">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style46">&nbsp;</td>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style45">&nbsp;</td>
                    <td class="auto-style21" colspan="3">Enter The Account Id You Want To Send Taka</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"><span class="auto-style23"></td>
                    <td class="auto-style47"></td>
                    <td class="auto-style32"></span></td>
                    <td class="auto-style33" rowspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style35">Customer Id</td>
                    <td class="auto-style36"></td>
                    <td class="auto-style37">Ammount&nbsp; TK</span></td>
                </tr>
                <tr>
                    <td class="auto-style45">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="emailBox" runat="server" CssClass="auto-style17" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style48">&nbsp;</td>
                    <td class="auto-style42">
                        <asp:TextBox ID="sendBox" runat="server" CssClass="auto-style17" Width="168px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style46">
                        <asp:Button ID="sendButton" runat="server" CssClass="auto-style17" OnClick="sendButton_Click" Text="Send" Width="139px" />
                    </td>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style45">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="sendLabel" runat="server" style="color: #0000FF; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style44">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
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
