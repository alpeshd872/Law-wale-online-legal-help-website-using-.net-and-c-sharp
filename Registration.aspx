<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="css/bootstrap1.css" rel="stylesheet" type="text/css" /><meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/><link href="css/style.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #89cff0;
}

li {
    float: left;
}

li a {
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: white;
    color:black
    
}

</style>
</head>
<body>
    <form id="registration" runat="server">
    <div class="jumbotronBlue">
    <fieldset>
 
  
	<ul>
  <li><a class="active" href="#">Home</a></li>
  <li><a href="#">Need help?</a></li>
  <li><a href="#">About us</a></li>
  <li><a href="#">Contact us</a></li>
   <li><a href="#">Hire an attorney</a></li>
   

</ul>

</fieldset>
</div>
<div class="container-fluid">
    <div class="jumbotron">
  &nbsp;&nbsp;<b style="font-size:21px;font-family:Times New Roman;">First Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="fs_name" CssClass="form-control" style="display:inline" 
            Font-Size="Medium" Font-Bold="true" runat="server" Width="224px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="f_name_valid" runat="server" 
            ErrorMessage="Please enter your first name" ControlToValidate="fs_name" 
            ForeColor="Red"></asp:RequiredFieldValidator>
     <br /><br /><br />&nbsp; <b style="font-size:21px;font-family:Times New Roman;">Last Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="Ls_name" CssClass="form-control" style="display:inline" 
            Font-Size="Medium" Font-Bold="true" runat="server" Width="224px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="l_name_valid" runat="server" 
            ErrorMessage="Please enter your last name" ControlToValidate="Ls_name" 
            ForeColor="Red"></asp:RequiredFieldValidator>
     <br /><br /><br />&nbsp;  
     <b style="font-size:21px;font-family:Times New Roman;">Password:</b> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <asp:TextBox ID="pass" CssClass="form-control" style="display:inline" 
                  Font-Size="Medium" Font-Bold="true" runat="server" Width="224px" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="pass_valid" runat="server" 
            ErrorMessage="6 to 10 characters which contain only characters, numeric digits, underscore and first character must be a letter" 
            ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
         <br /><br /><br />&nbsp;   
     <b style="font-size:21px;font-family:Times New Roman;">Confirm-password:</b> 
     <b style="font-size:21px;font-family:Times New Roman;"> 
        <asp:TextBox ID="cn_pass" 
            CssClass="form-control" style="display:inline" Font-Size="Medium" 
            Font-Bold="true" runat="server" Width="224px" TextMode="Password"></asp:TextBox>
        </b> 
        <asp:CompareValidator ID="cn_valid" runat="server" 
            ControlToCompare="pass" ControlToValidate="cn_pass" 
            ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator><asp:RequiredFieldValidator ID="cn_valid2" runat="server" ControlToValidate="email"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please re-enter your password" />
        <br /><br /><br />&nbsp;   
     <b style="font-size:21px;font-family:Times New Roman;">Email:</b> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <asp:TextBox ID="email" CssClass="form-control" style="display:inline" 
                  Font-Size="Medium" Font-Bold="true" runat="server" Width="224px" 
            TextMode="Email"></asp:TextBox>
        <asp:RegularExpressionValidator ID="email_valid" runat="server" ControlToValidate="email"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
<asp:RequiredFieldValidator ID="email_valid2" runat="server" ControlToValidate="email"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please enter your email id" />
   <br /><br /><br />&nbsp;
   <b style="font-size:21px;font-family:Times New Roman;">Phone No:</b> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ph_no" CssClass="form-control" style="display:inline" 
                  Font-Size="Medium" Font-Bold="true" runat="server" Width="224px" 
            TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ph_valid" runat="server" ErrorMessage="Please Enter your phone Number"
    Display="Dynamic" ForeColor="Red" ControlToValidate="ph_no"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="ph_valid2" runat="server" ErrorMessage="Invalid Mobile Number."
    ValidationExpression="^([0-9]{10})$" ControlToValidate="ph_no" 
    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
   <br /><br /><br />&nbsp;
    <br /><center><asp:Button ID="reg1" runat="server" CssClass="btn btn-success"  
                        Text="Register" onclick="reg1_Click" />
            </center> 
            </div> 
        
   
    </div>
    </form>
</body>
</html>
