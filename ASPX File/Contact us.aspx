<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact us.aspx.cs" Inherits="Contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
</head>
<body>
    <form id="form1" runat="server">
          <div id="header">
<h1 style="margin-left:20px">Contact Us</h1>
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
      <p>You can easily contact with us through our hotline.We have different branches all over the country.You can also find us through email.</p>
     <pre>
         <h3>    Email : admin@onlinebankingsystem.com</h3>
         <h3>    Call : +880-1700000000</h3>
         </pre>

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
