<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Need.aspx.cs" Inherits="Need" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="css/bootstrap1.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
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
    <form id="need" runat="server">
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
<center><h3>Ask Your Question</h3><p>get a legal advice from a lawyer in 30 minutes</p>
<br />

<div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="email1" runat="server"  class="form-control" 
                                    placeholder="Your email address" TextMode="SingleLine" Width="467px"></asp:TextBox>
							 <asp:RegularExpressionValidator ID="email_vali" runat="server" ControlToValidate="email1"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
<asp:RequiredFieldValidator ID="email_vali1" runat="server" ControlToValidate="email1"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please enter your email id" />
							</div>
						</div>
                        
                        <div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="q_title" runat="server"  class="form-control" 
                                    placeholder="Your Question Title" TextMode="SingleLine" Width="467px"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="q_title"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please Enter Question Title" />
    </div>
    </div>
    <div class="row form-group">
							<div class="col-md-12">
							
								
        <asp:TextBox ID="que" runat="server"  column="30" rows="10"  class="form-control"
                                    placeholder="Ask Your Question" TextMode="MultiLine" Width="466px" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="que"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please Write Your Question " />
							</div>
						</div>
                         <div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="Phone_no" runat="server"   class="form-control"
                                  placeholder="Your Phone Number"   TextMode="SingleLine" Width="467px"></asp:TextBox>
			<asp:RegularExpressionValidator ID="ph_valid2" runat="server" ErrorMessage="Invalid Mobile Number."
    ValidationExpression="^([0-9]{10})$" ControlToValidate="Phone_no" 
    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="ph_valid3" runat="server" ControlToValidate="Phone_no"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please enter the mobile number " />
							</div>
                          
                 <div class="row form-group">  <div class="col-md-12">  <br /><asp:DropDownList ID="lawtype" runat="server" Width="460px">
                                    <asp:ListItem>Select area of law</asp:ListItem>
                                    <asp:ListItem>Business law</asp:ListItem>
                                    <asp:ListItem>Civil law</asp:ListItem>
                                    <asp:ListItem>Corporate And Labour law</asp:ListItem>
                                    <asp:ListItem>Criminal law</asp:ListItem>
                                    <asp:ListItem>Cyber law</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                                 <br /><asp:RequiredFieldValidator ID="law_valid" runat="server" ControlToValidate="lawtype"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please select a law " 
                           InitialValue="Select area of law" />
                                 
  </div>
  </div>

    </div>
    <div>   
        <asp:Button ID="askque" runat="server" CssClass="btn btn-success"  
                        Text="Ask Your Question" onclick="askque_Click"  />
            
            </div>
            
 </center>
</div>
</div>
    
							
    </form>
</body>
</html>
