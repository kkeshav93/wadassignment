<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> LOGIN </title>

    <!-- Link to CSS file -->
    <link href="login.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <form id="form1" runat="server">
        <!-- Banner part -->

        <div id="banner" >
            <img src ="imgbanner.png" style="width: 100%; height: 208px" /> 
        </div>
        <!-- End of Banner section -->
        	<!-- Nav Bar -->
	
	<div id = "nav-bar">
	
		<ul>
			<!-- <li><a href="Default.aspx">Home</a></li> -->
            <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton_Click" CausesValidation="false">Home</asp:LinkButton></li>
			<li style="font-size: 25px; display: inline"> | </li>
			<li><a href="#news" style="text-decoration: none">login</a></li>
		</ul>
		
    </div>
        <h1 class ="headingin"> User Login </h1>

        <p> If you are not a registered user, please click here:<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="false">Register Now</asp:LinkButton></p>
		<p> If you are a registered user, please enter your login credentials below </p>
        <br />
        <p>If you forgot your password please click here <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="false">Recover My Password</asp:LinkButton></p>

        <!-- Username and password text boxes part --> 
        <div style="width:100%; height:120px;"> 
            <table style="background-color:none">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="2em"> User Id (Email Address):<span style="color:red">*</span> </asp:Label> 
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="292px" CssClass="text-box" AutoPostBack="false" OnTextChanged="TextBox1_TextChanged"> </asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox1" runat="server" ErrorMessage="Need to Enter it" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="TextBox1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="2em"> Password:  </asp:Label>   
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="292px" CssClass="text-box" TextMode="Password"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="Textbox2" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression=".*(?=.*[a-zA-Z])(?=.*[a-z])[^/\\()~!@#$%^&*]{8,10}$"></asp:RegularExpressionValidator>
            </td>
            </tr>
            </table>
        </div>
        <!-- End of Username and password text boxes part -->

        <div style="width:100%">
        <div style="padding-left:400px; padding-top:5px;">
            
            <asp:Button ID="Button1" runat="server" Text="Submit" Height="47px" Width="171px" Onclick="Button1_Click" />

        </div>
        </div>

        

    </form>
</body>
</html>
