<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Registration page</title>

     <!-- Link to CSS file -->
    <link href="registration.css" rel="stylesheet" type="text/css" />
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
                <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false">Home</asp:LinkButton></li>
			    <li style="font-size: 25px; display: inline"> | </li>
			    <li><a href="#news" style="text-decoration: none">Registration</a></li>
                <li style="float:right"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="false">Login</asp:LinkButton></li>
		    </ul>

        </div>

        <div style="height:30px; width:100%; font-size:15px">

            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkboxss"/> By Providing this information, I certify that I am the person identified by
            these items, and that I agree to the site Terms of Use
                

        </div>
        
        <div class="registration-form" style="height:500px" >
	    <table style="background-color:none">
            <tr>
                <td>
					<asp:Label ID="Label1" runat="server" Text="Label">Social Security Number<span style="color:red">*</span></asp:Label>
                </td>
                <td>
					<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox><mark class="hello1" style="font-size:15px">? 
                    <span class="hello">Once you set up a User Name to access your account, you will no longer need
                        to provide your complete social security number/account number, birthdate
                        or zip code to log in. For security, you will need to provide your full
                        social security number or account number if your forget your User Name or
                        Password.
                    </span></mark>
					<asp:RequiredFieldValidator ID="SSNValidator" ControlToValidate="TextBox1" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red" Display="Dynamic"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="SSNValidatorRegularExpressionValidator" ControlToValidate="TextBox1" runat="server" ErrorMessage="Wrong Social Security Number" ValidationExpression="\d{3}-\d{2}-\d{4}" style="font-size:10px; color:red" Display="Dynamic"></asp:RegularExpressionValidator>
                
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label2" runat="server" Text="Label">Full Name<span style="color:red">*</span></asp:Label>
                
                </td>
                <td>
					<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><mark class="hello1" style="font-size:15px">?<span class="hello">Write both your last and first name </span></mark>
					<asp:RequiredFieldValidator ID="FullNameRequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="FullNameRegularExpressionValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" style="font-size:10px; color:red"></asp:RegularExpressionValidator>
                
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label3" runat="server" Text="Label">Conform Social Security Number<span style="color:red">*</span></asp:Label>
                </td>
                <td>
					<asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
					<asp:RequiredFieldValidator ID="ConformSSNValidatorEmptyField" ControlToValidate="TextBox3" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="ConformSSRegularExpressionValidator1" ControlToValidate="TextBox3" runat="server" ErrorMessage="Wrong Social Security Number" ValidationExpression="\d{3}-\d{2}-\d{4}" style="font-size:10px; color:red"></asp:RegularExpressionValidator>
					<asp:CompareValidator ID="CompareValidator1" ControlToValidate="TextBox1" ControlToCompare="TextBox3" runat="server" ErrorMessage="The SSN you typed here is not matching" style="font-size:10px; color:red"></asp:CompareValidator>
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label4" runat="server" Text="Label">Date of Birth<span style="color:red">*</span></asp:Label>
                </td>
                <td>
					<asp:DropDownList ID="month1" runat="server" DataValueField="" ></asp:DropDownList>/
					<asp:DropDownList ID="date1" runat="server" ></asp:DropDownList>/
					<asp:DropDownList ID="year1" runat="server" ></asp:DropDownList>
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label5" runat="server" Text="Label">Address<span style="color:red">*</span></asp:Label>
	
                </td>
                <td>
				 <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><mark class="hello1" style="font-size:15px">?
                    <span class="hello">Many foreign countries do not have a zip code. If you are foreign, you can
                    skip the zip code in the address.</span></mark>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox4" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
                
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label6" runat="server" Text="Label">User Name<span style="color:red">*</span></asp:Label>

                </td>
                <td>
					<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><mark class="hello1" style="font-size:15px">6 to 64 character</mark>
					<asp:RequiredFieldValidator ID="UsernameRequiredFieldValidator2" ControlToValidate="TextBox5" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="UsernameRegularExpressionValidator1" ControlToValidate="TextBox5" runat="server" ErrorMessage="Username Not Valid" ValidationExpression="^[a-zA-Z''-'\s]{6,64}$" style="font-size:10px; color:red"></asp:RegularExpressionValidator>
                
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label7" runat="server" Text="Label">Password<span style="color:red">*</span></asp:Label>
                
                </td>
                <td>
					<asp:TextBox ID="TextBox6" TextMode="Password" runat="server" ></asp:TextBox><mark class="hello1" style="font-size:15px">?<span class="hello">Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters</span></mark>
					<asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator2" ControlToValidate="TextBox6" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="PasswordRegularExpressionValidator1" ControlToValidate="TextBox6" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression=".*(?=.*[a-zA-Z])(?=.*[a-z])[^/\\()~!@#$%^&*]{8,10}$" style="font-size:10px; color:red"></asp:RegularExpressionValidator>
                </td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label8" runat="server" Text="Label">Confirm Password<span style="color:red">*</span></asp:Label>
                </td>
                <td>
					<asp:TextBox ID="TextBox7" TextMode="Password" runat="server" ></asp:TextBox>
					<asp:RequiredFieldValidator ID="ConformPasswordRequiredFieldValidator2" ControlToValidate="TextBox7" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="ConformPasswordRegularExpressionValidator1" ControlToValidate="TextBox7" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression=".*(?=.*[a-zA-Z])(?=.*[a-z])[^/\\()~!@#$%^&*]{8,10}$" style="font-size:10px; color:red"></asp:RegularExpressionValidator>
					<asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator" ControlToValidate="TextBox7" ControlToCompare="TextBox6"></asp:CompareValidator>
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label9" runat="server" Text="Label">Email Address<span style="color:red">*</span></asp:Label>

                </td>
                <td>
					<asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
					<asp:RequiredFieldValidator ID="EmailRequiredFieldValidator2" ControlToValidate="TextBox8" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="EmailRegularExpressionValidator1" ControlToValidate="TextBox8" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="font-size:10px; color:red"></asp:RegularExpressionValidator>

				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label10" runat="server" Text="Label">Confirm Email Address<span style="color:red">*</span></asp:Label>
                </td>
                <td>
					<asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox>
					<asp:RequiredFieldValidator ID="ConformEmailRequiredFieldValidator2" ControlToValidate="TextBox9" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="ConformEmailRegularExpressionValidator1" ControlToValidate="TextBox9" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="font-size:10px; color:red"></asp:RegularExpressionValidator>
					<asp:CompareValidator ID="ConformEmailCompareValidator3" runat="server" ErrorMessage="CompareValidator" ControlToValidate="TextBox8" ControlToCompare="TextBox9"></asp:CompareValidator>
				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label11" runat="server" Text="Label">Security Question<span style="color:red">*</span></asp:Label>

                </td>
                <td>
					<asp:DropDownList ID="securityquestions" runat="server" ></asp:DropDownList><mark class="hello1" style="font-size:15px">?<span class="hello">You need to put this</span></mark>

				</td>
            </tr>
			<tr>
                <td>
					<asp:Label ID="Label12" runat="server" Text="Label">Answer<span style="color:red">*</span></asp:Label>

                </td>
                <td>
					<asp:TextBox ID="TextBox10" runat="server" ></asp:TextBox>
					<asp:RequiredFieldValidator ID="AnswerRequiredFieldValidator2" ControlToValidate="TextBox10" runat="server" ErrorMessage="RequiredFieldValidator" style="font-size:10px; color:red"></asp:RequiredFieldValidator>

				</td>
            </tr>
		</table>
         <h1 style="color:red"> *DENOTES REQUIRED ITEMS</h1>
        </div>

        <div style="width:100%">
        <div style="padding-left:400px;">
            
            <asp:Button ID="Button1" runat="server" Text="Submit" Height="47px" Width="171px" OnClick="Button1_Click"/>

        </div>
        </div>

    </form>
</body>
</html>