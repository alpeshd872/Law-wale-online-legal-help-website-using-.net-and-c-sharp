<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap1.css" rel="stylesheet" type="text/css" /><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> <link href="css/style.css" rel="stylesheet" type="text/css" />
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
    <form id="about" runat="server">
   <div class="jumbotronBlue">
    <fieldset>

  
	<ul>
  <li><a class="active" href="Home.aspx">Home</a></li>
  <li><a href="Need.aspx">Need help?</a></li>
  <li><a href="About.aspx">About us</a></li>
  <li><a href="Contact.aspx">Contact us</a></li>
   <li><a href="Hire.aspx">Hire an attorney</a></li>
 <li><a href="Login.aspx">[Log Out]</a></li>

    </ul> 
   
    </fieldset>
    </div>
  
   <div class="container-fluid">
<div class="jumbotron">
 <div><h2>Why Lawwale?</h2><br />
<h3>We’re more than just a Legal help company.<br /> We’ve got goals, hopes, and dreams, just like you. <br />We want to serve a better solution to a centuries old profession and do some good in the world while we’re at it—permanently.

<br />We know our technology changes lives. <br />If that’s something that speaks to you—you belong here, too.</h3></div>

<div class="progress">
				<div class="progress-bar progress-bar-striped active"  style="width:50%">
				Adoption Law 50%
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-striped active"  style="width:80%">
				Family Law 80%
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-striped active" style="width:70%">
				Real Estate Law 70%
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-striped active" style="width:40%">
				Personal Injury Law 40%
				</div></div>
                <p>
						<asp:hyperlink id="facebook" runat="server" href="http://www.facebook.com/">
                          <asp:image id="img" runat="server" imageurl="icon/facebook.png" />
                          </asp:hyperlink>
                          <asp:hyperlink id="twitter" runat="server" href="http://www.twitter.com/">
                          <asp:image id="img1" runat="server" imageurl="icon/twitter.png" />
                          </asp:hyperlink>
                          <asp:hyperlink id="linkedin" runat="server" href="http://www.linkedin.com/">
                          <asp:image id="img2" runat="server" imageurl="icon/linkedin.png" />
                          </asp:hyperlink>
					</p>
</div>
</div>


    </form>
</body>
</html>
