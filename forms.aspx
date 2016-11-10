<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forms.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forms Page</title>

	<!-- Link to CSS file -->
    <link href="forms.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Banner part -->

        <div id="banner" >
            <img src ="imgbanner.png" style="width: 100%; height: 208px" /> 
        </div>
    </div>
    <!-- End of Banner section -->
	
	<!-- Nav Bar -->
	
	<div id = "nav-bar">
	
		<ul>
			<li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
			<li style="font-size: 25px; display: inline"> | </li>
			<li><a href="#news" style="text-decoration: none">Forms</a></li>
			<li style="float:right"><asp:LinkButton ID="login_logout" runat="server" OnClick="LinkButton2_Click">Login</asp:LinkButton></li>
		</ul>
		
	</div>

    <!-- End of Nav Bar section -->

	<!-- Table -->
	
	<table style="width:100%">
		<tr>
			<th class="nameoflink"> SureCare Account Creation Authorization </th>
			<th class="link"><a href ="forms.pdf" > <img class= "pdfimg" src = "pdfimage.png" /></a></th>
		</tr>

		<tr>
			<th class="nameoflink"> Federal Direct Consolidation Loan Application and Promissory Note </th>
			<th class="link"><a href ="https://static.studentloans.gov/images/ApplicationAndPromissoryNote.pdf" ><img class= "pdfimg" src = "pdfimage.png" /></a></th>
		</tr>

		<tr>
			<th class="nameoflink"> Direct Consolidation loadn Applicaitons </th>
			<th class="link"><a href ="https://studentloans.gov/myDirectLoan/consolidationPaper.action" ><img class= "pdfimg" src = "pdfimage.png" /></a></th>
		</tr>

		<tr>
			<th class="nameoflink"> Public Service Loan Forgiveness </th>
			<th class="link"><a href ="https://studentaid.ed.gov/sa/sites/default/files/public-service-employmentcertification-
										form.pdf" ><img class= "pdfimg" src = "pdfimage.png" /></a></th>
		</tr>
		
	</table>
	

    </form>
</body>
</html>

