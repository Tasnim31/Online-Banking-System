<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About Us.aspx.cs" Inherits="About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div id="header">
<h1 style="margin-left:20px">About Us</h1>
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
     <pre style="height: 7px;margin-top:0"> <h3>       Why apply online?</h3>
            1. Complete your application anytime anywhere.
            2. Get Chaque book and Debit Card in 48 hours at your doorstep.
            3. Online tracking of your application status.
              <h3>      What you need to complete your application?</h3>
            1. Applicant and co-applicant's address details.
            2. Pin code of available.
            3. Scanned copy of your identity and address proof of available.
            4. Details entered in application should match your documents.
        </pre>
  
	
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
