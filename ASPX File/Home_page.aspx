<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_page.aspx.cs" Inherits="Home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Banking System</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
    <script language="javascript">
       
        function welcomeFunction() {
            alert("Welcome");<a href="Home_page.aspx">Home_page.aspx</a>
        }
    </script>
    <style type="text/css">
      
        .auto-style1 {
            width: 100%;
           
        }
        .auto-style2 {
            width: 715px;
            font-size: xx-large;
            color: white;
            background-color: dodgerblue;
        }
        .auto-style3 {
            text-align: left;
            background-color: dodgerblue;
            width: 237px;
        }
        .auto-style4 {
            width: 35px;
            color: white;
            background-color: dodgerblue;
        }
        .auto-style7 {
            text-align: center;
            color: white;
            background-color: dodgerblue;
        }
        .auto-style9 {
            width: 158px;
            text-align: center;
            color: white;
            background-color: dodgerblue;
        }
        .auto-style10 {
            color: #0000FF;
            text-align: justify;
        }
        .auto-style11 {
            text-align: center;
            color: white;
            width: 878px;
            background-color: dodgerblue;
        }
        .auto-style12 {
            text-align: center;
            color: white;
            background-color: dodgerblue;
            width: 237px;
        }
        .auto-style13 {
            text-align: center;
            color: white;
            width: 278px;
            background-color: dodgerblue;
        }
        .auto-style14 {
            width: 35px;
            color: white;
            background-color: dodgerblue;
            height: 43px;
        }
        .auto-style15 {
            text-align: center;
            color: white;
            width: 878px;
            background-color: dodgerblue;
            height: 43px;
        }
        .auto-style16 {
            width: 158px;
            text-align: center;
            color: white;
            background-color: dodgerblue;
            height: 43px;
        }
        .auto-style17 {
            text-align: center;
            color: white;
            width: 278px;
            background-color: dodgerblue;
            height: 43px;
        }
        .auto-style18 {
            text-align: center;
            color: white;
            background-color: dodgerblue;
            width: 237px;
            height: 43px;
        }
        .auto-style19 {
            text-align: center;
            color: white;
            background-color: dodgerblue;
            height: 43px;
        }
    </style>
    
</head>
<body style="background-color:silver">
    <form id="form1" runat="server">
    <div style="background-color:dodgerblue">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style2" rowspan="3">Online Banking System</td>
                <td class="auto-style15"></td>
                <td class="auto-style16">Customer Email</td>
                <td class="auto-style17">Password</td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="emailBox1" runat="server" CssClass="auto-style10" CausesValidation="True" TextMode="Email"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="emailValidator1" runat="server" ControlToValidate="emailBox1" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="passwordBox1" runat="server" CssClass="auto-style10" CausesValidation="True" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="passValidator1" runat="server" ControlToValidate="passwordBox1" ErrorMessage="password required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    
                    <asp:Button ID="loginButton1" runat="server" CssClass="auto-style10"  OnClick="loginButton1_Click" Text="Login" OnClientClick="welcomeFunction()" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                    <asp:CheckBox ID="loginCheckBox1" runat="server" Text="Keep me logged in" Checked="True" />
                </td>
                <td class="auto-style13">
                    <asp:Label ID="msgLabel1" runat="server" style="text-align: left"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    
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
<div id="slide" style=" margin-top: 0;">
     <marquee scrollamount="20" direction="left">
 
          <img src="home.jpg" width="380px" height="300px"  />
         <img src="images/im1 (11).jpg" width="380px" height="300px"  />
            <img src="images/im1 (6).jpg" width="380px" height="300px"  />
         <img src="images/img1.jpg" width="380px" height="300px"  />
            <img src="images/im1 (3).jpg" width="380px" height="300px"  />
            <img src="images/im1 (4).jpg" width="380px" height="300px"  />
            <img src="images/im1 (10).jpg" width="380px" height="300px"  />
           
   
    </marquee>
    
   
</div>

<div id="section">
	<div class="block" > <h2 style="text-align:center">Admin Login</h2>
        <p>This portal is only for the admin of this bank.For all imformatin please login with username and password.&nbsp;&nbsp;&nbsp;   
        </p>
         <asp:HyperLink ID="HyperLink1" runat="server" BackColor="DeepSkyBlue" BorderStyle="Ridge" style="margin-left:78px;margin-top:50px; color: #FFFFFF; font-size: medium; font-weight: 700; background-color: #0000FF;" NavigateUrl="~/admin_login.aspx" BorderColor="White">Click Here</asp:HyperLink>
	</div>
	<div class="block" > <h2 style="text-align:center">Customer Login</h2>
        <p>This portal is for customers.Customers who have an account with our bank can only login with username and password.</p>
         <asp:HyperLink ID="HyperLink2" runat="server" BackColor="DeepSkyBlue" BorderStyle="Ridge" style="margin-left:78px;margin-top:50px; color: #FFFFFF; font-weight: 700; font-size: medium; background-color: #0000FF;" NavigateUrl="~/customer_login.aspx" BorderColor="White">Click Here</asp:HyperLink>

	</div>
	<div class="block" > <h2 style="text-align:center">Open New Account</h2>
        <p>If you are a new customer of our bank, this portal is for you.By following some simple steps you can open a accout with us.</p>
         <asp:HyperLink ID="HyperLink3" runat="server" BackColor="DeepSkyBlue" BorderStyle="Ridge" style="margin-left:78px;margin-top:50px; font-weight: 700; font-size: medium; color: #FFFFFF; background-color: #0000FF;" NavigateUrl="~/Open New Account.aspx" BorderColor="White">Click Here</asp:HyperLink>
	</div>
	<div class="block" > <h2 style="text-align:center">About Us</h2>
        <p>We are here to serve you with online banking from anywhere.You can have all your banking experience here with us. </p>
         <asp:HyperLink ID="HyperLink4" runat="server" BackColor="DeepSkyBlue" BorderStyle="Ridge" style="margin-left:78px;margin-top:50px; font-size: medium; color: #FFFFFF; font-weight: 700; background-color: #0000FF;" NavigateUrl="~/About Us.aspx" BorderColor="White">Click Here</asp:HyperLink>
	</div>
	<div class="block"> <h2 style="text-align:center">Contact Us</h2>
        <p>You can easily contact with us through our hotline.We have different branches all over the country.You can also find us through email.</p>
         <asp:HyperLink ID="HyperLink5" runat="server" BackColor="DeepSkyBlue" BorderStyle="Ridge" style="margin-left:78px;margin-top:50px; font-weight: 700; font-size: medium; color: #FFFFFF; background-color: #0000FF;" NavigateUrl="~/Contact us.aspx" BorderColor="White">Click Here</asp:HyperLink>
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
