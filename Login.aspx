<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap1.css" rel="stylesheet" type="text/css" />
   <link href="css/style.css" rel="stylesheet" type="text/css" /><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
    <form id="login" runat="server">
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

<center><br /><br /><br />
   <b style="font-size:21px;font-family:Times New Roman;"> &nbsp; Email :</b> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="log_email1" CssClass="form-control" style="display:inline" 
                  Font-Size="Medium" Font-Bold="true" runat="server" Width="224px"></asp:TextBox>
   <br /><br /><br />
   <b style="font-size:21px;font-family:Times New Roman;">Password:</b> 
           &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="log_pass1" CssClass="form-control" style="display:inline" 
                  Font-Size="Medium" Font-Bold="true" runat="server" Width="224px" 
        TextMode="Password"></asp:TextBox>
          <br /><br /> Not Registered  ? 
             <a href="registration.aspx">Sign up</a></center> <br /> 
             <div>   <br /><center><asp:Button ID="log" runat="server" CssClass="btn btn-success"  
                        Text="Login" onclick="log_Click" /></center> 
                 <asp:Label ID="Alert" runat="server" Text=""></asp:Label>
                        </div>
</div>
</div>
    </form>
</body>
</html>
