<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recovery.aspx.cs" Inherits="recovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> RECOVERY </title>

    <!-- Link to CSS file -->
    <link href="recovery.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <form id="form1" runat="server">

     <!-- Banner part -->

        <div id="banner" >
            <img src ="imgbanner.png" style="width: 100%; height: 208px" /> 
        </div>
        <!-- End of Banner section -->
        	<!-- Nav Bar -->
	
    <h2> Password Recovery</h2>

    <table>
        <tr>
            <th>
                Email Address:
            </th>
            <th>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </th>
            <th>
                <asp:Button ID="Button1" runat="server" Text="Recover Password" OnClick="Button1_Click" />
            </th>
        </tr>
    </table>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false">Go To Main Page</asp:LinkButton>
    </form>
</body>
</html>
