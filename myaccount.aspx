<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="myaccount.css" rel="stylesheet" type="text/css"/>
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
                <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Home</asp:LinkButton></li>
			    <li style="font-size: 25px; display: inline"> | </li>
			    <li><a href="#news" style="text-decoration: none">My Account</a></li>
                <li style="float:right"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Logout</asp:LinkButton></li>
		    </ul>
        </div>
        <h1 style="text-align:center"> Your Loan Account Details </h1>
        <hr />
        <table style="background-color:none">
            <tr class="beforemaintable">
                <td class="cellsbeforethemainclass">
                    Account Number:
                </td>
                <td class="cellsbeforethemainclass">
                    <asp:label ID="Account_Number" runat="server" text="Label"></asp:label>
                </td>
            </tr>
                <tr class="beforemaintable">
                <td class="cellsbeforethemainclass">
                    Full Name:
                </td>
                <td class="cellsbeforethemainclass">
                    <asp:label ID="NameofAccount" runat="server" text="Label"></asp:label>


                </td>
            </tr>
                <tr class="beforemaintable">
                <td class="cellsbeforethemainclass">
                    Last Updated Date:
                </td>
                <td class="cellsbeforethemainclass">
                    <asp:label ID="Last_Update_Date" runat="server" text="Label"></asp:label>
                   
                </td>
            </tr>
        </table>
        <hr />

        <table class="maintable">
            <tr class="maintable">
                <td class="maintable">
                    Current Balance
                </td>
                <td class="maintable1">
                     <asp:label ID="Current_Balance" runat="server" text="Label"></asp:label>
                </td>
            </tr>

            <tr class="maintable">
                <td class="maintable">
                    Last Updated Date
                </td>
                <td class="maintable1">
                    <asp:label ID="Last_Update_Date1" runat="server" text="Label"></asp:label>
                </td>
            </tr>

            <tr class="maintable">
                <td class="maintable">
                    Regular Monthly Payment Amount
                </td>
                <td class="maintable1">
                    <asp:label ID="Regular_Monthly_Payment_Amount" runat="server" text="Label"></asp:label>
                </td>
            </tr>

            <tr class="maintable">
                <td class="maintable">
                    Amount Satisfied by Extra Payment
                </td>
                <td class="maintable1">
                   <asp:label ID="Amount_Satisfied_by_Extra_Payment" runat="server" text="Label"></asp:label>
                </td>
            </tr>

            <tr class="maintable">
                <td class="maintable">
                    Past Due Amount(if applicable)
                </td>
                <td class="maintable1">
                    <asp:label ID="Past_Due_Amount" runat="server" text="Label"></asp:label>
                </td>
            </tr>

            <tr class="maintable">
                <td class="maintable" style="font-weight:bold">
                    Current Amount Due
                </td>
                <td class="maintable1">
                    <asp:label ID="Current_Amount_Due" runat="server" text="Label"></asp:label>
                </td>
            </tr>
        </table>

        <p style="font-size:xx-large; font-weight:bold">Current Statement Due Date: &nbsp   <asp:label ID="Current_Statement_Due_Date" runat="server" text="Label"></asp:label></p>
        <hr />
    </form>
</body>
</html>
