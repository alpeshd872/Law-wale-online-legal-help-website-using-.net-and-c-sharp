<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="css/bootstrap1.css" rel="stylesheet" type="text/css" /><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"><link href="css/style.css" rel="stylesheet" type="text/css" />
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
    <form id="contact" runat="server">
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


	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="fh5co-contact-info">
						<h3>Contact Information</h3>
						<p>
							128 2nd floor Sej plaza , <br/> s.v road Malad (West)<br /> Mumbai-400097<br />Maharashtra India</li>
							<br /><a href="tel://1234567920">+91-7666942162</a>
						    <br /><a href="mailto:Lawwale@info.com">lawwale@info.com</a></p>
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
						</ul>
					</div>

				</div>
				<div class="col-md-6 animate-box">
					<h3>Send A Message</h3>
                    <br />
					<form action="#">
						<div class="row form-group">
							<div class="col-md-6">
								<asp:TextBox ID="fname" runat="server"  class="form-control" placeholder="Your firstname" TextMode="SingleLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="fname_valid" runat="server" ControlToValidate="fname"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please Enter your first name " />
			<br /><asp:TextBox ID="lname" runat="server"  class="form-control" placeholder="Your lastname" TextMode="SingleLine"></asp:TextBox>
							<asp:RequiredFieldValidator ID="lname_valid" runat="server" ControlToValidate="lname"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please Enter your last name " />
                            </div>
</div>
						<div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="email2" runat="server"  class="form-control" placeholder="Your email address" TextMode="SingleLine"></asp:TextBox>
							<asp:RequiredFieldValidator ID="e_valid" runat="server" ControlToValidate="email2"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please Enter your email" />
    <asp:RegularExpressionValidator ID="e_valid2" runat="server" ControlToValidate="email2"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="subject" runat="server"  class="form-control" placeholder="subject of this message" TextMode="SingleLine"></asp:TextBox>
								<asp:RequiredFieldValidator ID="subject_valid" runat="server" ControlToValidate="subject"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please Enter subject of your message" />
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
							
								
        <asp:TextBox ID="say_some" runat="server"  cols="30" rows="10" class="form-control" placeholder="Say something about us" TextMode="MultiLine" ></asp:TextBox>
							</div>
						</div>
						<div class="form-group">
							<asp:Button ID="Con" runat="server" CssClass="btn btn-success"  
                        Text="Send Message" onclick="Con_Click" />
						</div>
                      
					</form>
                	
				</div>
			</div>
			 
		</div>
	</div>
     
    
</div>
</div>
</form>
</body>
</html>
