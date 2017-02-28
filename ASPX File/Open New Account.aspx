<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Open New Account.aspx.cs" Inherits="Open_New_Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Open New Account</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet_obs.css" />
    
 
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            height: 358px;
        }
        .auto-style6 {
            width: 246px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style7 {
            color: blue;
        }
    </style>
    <script type="text/ecmascript">
        function validateLength(sender, args) {
            debugger;
            if (args.Value.length < 5)
                return args.IsValid = false;
            else
                return args.IsValid = true;
        }
    </script>
</head>
<body>
    
    <form id="form1" runat="server">
    <div id="header">
<h1 style="margin-left:20px">Open New Account</h1>
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



            <table class="auto-style5">
                <tr>
                    <td class="auto-style6">
        
          <asp:Label ID="n_cus_name" runat="server" Text="Name" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_name_TextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="n_name_TextBox" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_father_name" runat="server" Text="Father's Name" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        
                        <asp:TextBox ID="n_father_TextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="n_father_TextBox" ErrorMessage="Father's name required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_address" runat="server" Text="Address" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_address_TextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="n_address_TextBox" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_BD" runat="server" Text="Date of Birth" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_BD_TextBox" runat="server" CausesValidation="True"></asp:TextBox>
 
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="n_BD_TextBox" ErrorMessage="Date of birth Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_age" runat="server" Text="Age" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
 
                    
                        <asp:TextBox ID="n_age_TextBox" runat="server" CausesValidation="True" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="n_age_TextBox" ErrorMessage="Age Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_nationality" runat="server" Text="Nationality" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_nationality_TextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="n_nationality_TextBox" ErrorMessage="Nationality Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_gender" runat="server" Text="Gender" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="173px"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Gender Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_call" runat="server" Text="Call" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_call_TaxtBox" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="n_call_TaxtBox" ErrorMessage="Phn num Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_email" runat="server" Text="Email" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_email_TextBox" runat="server" CausesValidation="True" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="n_accounttype_TextBox" ErrorMessage="Account type Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_accounttype" runat="server" Text="Account Type" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_accounttype_TextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="n_email_TextBox" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_balance" runat="server" Text="Balance" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="n_balance_TextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="n_balance_TextBox" ErrorMessage="Balance Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="n_cus_pin" runat="server" Text="Pin" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="n_pin_TextBox" runat="server" TextMode="Password" CausesValidation="True" > </asp:textbox>
                        <asp:CustomValidator ID="CustomValidator" runat="server" ClientValidationFunction="validateLength" errormessage="Password Too Short." controltovalidate="n_pin_TextBox" ForeColor="Red"></asp:CustomValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                    <asp:Label ID="msgLabel" runat="server" BackColor="Blue" ForeColor="White" CssClass="auto-style7"></asp:Label>
                        </td>
                    <td>
                        <asp:Button ID="n_submit_Button" runat="server" Text="Submit" OnClick="n_submit_Button_Click" style="color: #FFFFFF; font-weight: 700; background-color: #0000FF" Width="100px"  />
                        
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
