<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Contact Us </title>
    <script src="contactus.js"></script>
    <link href="contactus.css" rel="stylesheet" />
</head>
<body onload ="contact1() ">
    <form id="form1" runat="server">
    <div>
    <!-- Banner part -->

        <div id="banner" >
            <img src ="imgbanner.png" style="width: 100%; height: 208px" /> 
        </div>
   <!-- End of Banner section -->

   <!-- Nav Bar -->
	
	<div id = "nav-bar">
	
		<ul>
			<li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
			<li style="font-size: 25px; display: inline"> | </li>
			<li><a href="#news" style="text-decoration: none">Contact Us</a></li>
			<li style="float:right"><asp:LinkButton ID="login_logout" runat="server" Text="" OnClick="LinkButton2_Click"></asp:LinkButton></li>
		</ul>
		
	</div>

    <!-- End of Nav Bar section -->

    <!-- Table -->
        <table style ="width : 100%">
            <tr><td class="col1name">Mailing Address</td><td id="mailingaddress" class="col2name"></td></tr>
            <tr><td class="col1name">Toll Free Phone Number</td><td id="tollfreephonenumber" class="col2number"></td></tr>
            <tr><td class="col1name">Direct Phone Number</td><td id="directphone" class="col2number"></td></tr>
            <tr><td class="col1name">Email Address</td><td id="emailid" class="col2name"></td></tr>
            <tr><td class="col1name">Web Site</td><td id="websiteid" class="col2name"></td></tr>
        </table>
        
    <!-- End of Table section -->	
        
    <!-- Title of the page -->
	
    <p class="firstline">You must be logged in to send us a message <br /> 
        <span class="secondline">Please type your message below and click the Send Message button. </span> 

    </p>

	<!-- End of title -->

    <!-- Text Box -->

    <br />
   <input type="text" class="textbox1" /><br />

    <!-- End of Text Box -->

    <!-- Disabled Button -->

        <button type="button" disabled class ="buttondis"> Send Message </button>

    <!-- End of Disabled Button -->

    </div>
    </form>
</body>
</html>
