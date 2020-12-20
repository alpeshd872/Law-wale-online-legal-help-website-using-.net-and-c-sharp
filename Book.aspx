<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="css/bootstrap1.css" rel="stylesheet" type="text/css" /><meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/><link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="book" runat="server"> <div class="jumbotronBlue"> <fieldset><center><h3>Book an appointment</h3></center> </fieldset> </div>
    <div class="container-fluid">
<div class="jumbotron">

<div>


&nbsp;&nbsp;<b style="font-size:21px;font-family:Times New Roman;">First Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="fis_name" CssClass="form-control" style="display:inline" 
            Font-Size="Medium" Font-Bold="true" runat="server" Width="224px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="f_name_valid" runat="server" 
            ErrorMessage="Please enter your first name" ControlToValidate="fis_name" 
            ForeColor="Red"></asp:RequiredFieldValidator>
     <br /><br /><br />&nbsp; <b style="font-size:21px;font-family:Times New Roman;">Last Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="Las_name" CssClass="form-control" style="display:inline" 
            Font-Size="Medium" Font-Bold="true" runat="server" Width="224px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="l_name_valid" runat="server" 
            ErrorMessage="Please enter your last name" ControlToValidate="Las_name" 
            ForeColor="Red"></asp:RequiredFieldValidator>
             
                 <div class="row form-group">  <div class="col-md-12"> <br /><br />&nbsp; <b style="font-size:21px;font-family:Times New Roman;">Lawyer:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
                 <asp:DropDownList ID="lawyer1" runat="server" Width="224px">
                                    <asp:ListItem >Select lawyer</asp:ListItem>
                                    <asp:ListItem >Tripti Shetty</asp:ListItem>
                                    <asp:ListItem >Vikrant C. Deshpande</asp:ListItem>
                                    <asp:ListItem >H. V. Shekhawat</asp:ListItem>
                                    <asp:ListItem >>Ravi Yadav</asp:ListItem>
                                    <asp:ListItem >Sumeet Vankadkar</asp:ListItem>
                                    <asp:ListItem>Purvi Shah</asp:ListItem>
                                </asp:DropDownList>
                                 <br /><asp:RequiredFieldValidator ID="lawyer_valid" runat="server" ControlToValidate="lawyer1"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Please select suitable lawyer " 
                           InitialValue="Select lawyer" />
                            <br /><br />&nbsp;
   <b style="font-size:21px;font-family:Times New Roman;">Phone No:</b> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pho_no" CssClass="form-control" style="display:inline" 
                  Font-Size="Medium" Font-Bold="true" runat="server" Width="224px" 
             MaxLength="10" TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ph_valid" runat="server" ErrorMessage="Please Enter your phone Number"
    Display="Dynamic" ForeColor="Red" ControlToValidate="pho_no"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="ph_valid2" runat="server" ErrorMessage="Invalid Mobile Number."
    ValidationExpression="^([0-9]{10})$" ControlToValidate="pho_no" 
    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
    <br />

     <div><br /><br />   
         <center><asp:Button ID="ap_book" runat="server" CssClass="btn btn-success"  
                        Text="Book" onclick="ap_book_Click"  /></center>
            
            </div>
            <br /><br />
            Note:-appointment dates and time will be informed by our representative
</div>
</div>
</div>
</div>
</div>
    </form>
</body>
</html>
