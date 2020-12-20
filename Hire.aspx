<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hire.aspx.cs" Inherits="Hire" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="css/bootstrap1.css" rel="stylesheet" type="text/css" /><meta name="viewport" content="width=device-width, initial-scale=1">
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
    <form id="hire" runat="server">
    <div><div class="jumbotronBlue">
    <fieldset>
  <legend>
  
	<ul>
  <li><a class="active" href="Home.aspx">Home</a></li>
  <li><a href="Need.aspx">Need help?</a></li>
  <li><a href="About.aspx">About us</a></li>
  <li><a href="Contact.aspx">Contact us</a></li>
   <li><a href="Hire.aspx">Hire an attorney</a></li>
  <li><a href="Login.aspx">[Log Out]</a></li>
   

</ul>
</legend>
</fieldset>
</div>
     <div class="container-fluid">
<div class="jumbotron">
	<div class="row">
    
				<div class="col-md-4 text-center animate-box">
					<div class="services">
						
						
						
						<div class="desc">
							<img src ="icon/shetty.png" />
							<h3>Tripti Shetty</h3>
							<p>Expert of corporate law</p>
                            <p>200+ won cases </p>
						
                    <asp:Button ID="shetty" runat="server" Text="Book" CssClass="btn btn-success" onclick="shetty_Click" 
                             />
						
                        </div>
					</div>
				</div>
                <div class="row">
				<div class="col-md-4 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-home"></i>
						</span>
						<div class="desc">
                        <img src ="icon/vdespande.png" />
							<h3>Vikrant C. Deshpande</h3>
							<p>Expert of civil law</p>
                            <p>150+ won cases </p>
						
                    <asp:Button ID="vdespande" runat="server" Text="Book" CssClass="btn btn-success" 
                                onclick="vdespande_Click"  />
                        </div>
					</div>
				</div>
                <div class="row">
				<div class="col-md-4 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-home"></i>
						</span>
						<div class="desc">
							<img src ="icon/shekhawat.png" />
							<h3>H. V. Shekhawat</h3>
							<p>Expert of Divorce law</p>
                            <p>130+ won cases </p>
						
                    <asp:Button ID="shekhawat" runat="server" Text="Book" CssClass="btn btn-success" 
                                />
                                  </div>
					</div>
				</div>
          
</div>
</div>
</div>
<br />
 <div class="row">
				<div class="col-md-4 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-home"></i>
						</span>
						<div class="desc">
							<img src ="icon/yadav.png" />
							<h3>Ravi Yadav</h3>
							<p>Expert of human-rights law</p>
                            <p>100+ cases won </p>
						
                    <asp:Button ID="yadav" runat="server" Text="Book" CssClass="btn btn-success" onclick="yadav_Click" 
                                  />
				</div>
					</div>
				</div>
                
                <div class="col-md-4 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-home"></i>
						</span>
						<div class="desc">
						<img src ="icon/vank.png" />
							<h3>Sumeet Vankadkar</h3>
							<p>Expert Real Estate law</p>
                            <p>150+ won cases </p>
						
                    <asp:Button ID="vank" runat="server" Text="Book" CssClass="btn btn-success" onclick="vank_Click" 
                                />
				</div>
					</div>

				</div>
                 <div class="col-md-4 text-center animate-box">
					<div class="services">
						<span class="icon">
							<i class="icon-home"></i>
						</span>
						<div class="desc">
						<img src ="icon/shah.png" />
							<h3>Purvi shah</h3>
							<p>Expert of criminal law</p>
                            <p>50+ won cases </p>
						
                    <asp:Button ID="shah" runat="server" Text="Book" CssClass="btn btn-success" onclick="shah_Click" 
                                />
				</div>
					</div>
    </div>
    </form>
</body>
</html>
