<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WEB APPLICATION DEVELOPMENT</title>
    
    <!-- Link to CSS file -->
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Banner part -->

        <div id="banner" >
            <img src ="imgbanner.png" style="width: 100%; height: 208px" /> 
        </div>
        <!-- End of Banner section -->

        <!-- Part 2 -->
        <div id="part2">
            <div class ="p2left">
                <!--  Login -->
                <div>
                    <br /> 
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Login </asp:LinkButton>
                </div>
                <!-- Info Center Dropdown menu -->
                <div class="dropdown" > 
                    <a href="#" >Info Center &#9658; </a>
                        <div class="dropdown-content">
                            <a href="glossary.aspx">Glossary</a>
                            <a href="faq.aspx">FAQ</a>
                        </div> 
                </div>
                <!-- My Account -->
                <div> 
                    
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">My Account</asp:LinkButton> 
                </div>
                <!-- Forms -->
                <div> 
                    <!-- <a href="forms.aspx">Forms</a> -->
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick = "LinkButton1_Click">Forms</asp:LinkButton>
                </div>
                <!-- Contact Us --> 
                <div> 
                   <a href="ContactUs.aspx">Contact Us</a> 

                </div>

            </div>
        
            <div class="p2right">
                <div class ="paragraph_heading"> Who We Are....</div>
                <p class="paragraph-text" style="font-size:20px"> 
                    K.K Education Loan Service provides loan services for the one 
                    who look for financial help to get his/her education goals compleated. We provide services for Campus Based
                    Loans, Private Education Loans and Federal Family Education Loans. We work hard with you to get the Loan You 
                    Deserve, Maintain Loan Activities, Send Payment Reminders and Process payments.
                </p>
            </div>

        </div>
        <!-- End of part 2 -->

        <!-- Part 3 -->
        <div id="part3">
		
            <div class ="p3left">
                <a href ="https://ssl.comodo.com/"><img src="securelink.png" /></a>
            </div>

            <div class ="p3middle" >
			    <img src ="moneystudent.jpg"   style="width:100%; height: 400px"  />
            </div>
                
            <div class ="p3right">
			    <img src ="studying.jpg"  style="width:100%; height: 400px" /> 
            </div>
			
       </div>


        <!-- Part 4 -->
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer ID="Timer1" Interval="2000" runat="server" />
        <div id="part4">
            
            <table style="width:100%">
                <tr>
                    <td> 
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>
                            <ContentTemplate>
                            <asp:AdRotator ID="AdRotator1" runat="server"  KeywordFilter="first"   AdvertisementFile="ads.xml"/> 
                             </ContentTemplate>
                        </asp:UpdatePanel> 
                    </td>

                    <td> 
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server"> 
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>
                            <ContentTemplate>
                            <asp:AdRotator ID="AdRotator6" runat="server"  KeywordFilter="second"   AdvertisementFile="ads.xml"/> 
                             </ContentTemplate>
                        </asp:UpdatePanel> 
                    </td>

                    <td> 
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server"> 
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>
                            <ContentTemplate>
                            <asp:AdRotator ID="AdRotator2" runat="server"  KeywordFilter="third"   AdvertisementFile="ads.xml"/> 
                             </ContentTemplate>
                        </asp:UpdatePanel> 
                    </td>

                    <td> 
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server"> 
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>
                            <ContentTemplate>
                            <asp:AdRotator ID="AdRotator7" runat="server"  KeywordFilter="fourth"   AdvertisementFile="ads.xml"/> 
                             </ContentTemplate>
                        </asp:UpdatePanel> 
                    </td>

                    <td> 
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server"> 
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>
                            <ContentTemplate>
                            <asp:AdRotator ID="AdRotator8" runat="server"  KeywordFilter="fifth"   AdvertisementFile="ads.xml"/> 
                             </ContentTemplate>
                        </asp:UpdatePanel> 
                    </td>
                </tr>
            </table>

        </div>

        <!-- End of Part 4 -->

        <!--Footer Section -->

		<hr />


        <footer class="fot" style="color:green">
            <p style="text-align:center">&copy; K.K Education Loan Company, Inc. All rights reserved. 2012-2016 </p>
        </footer>

        <!-- End of Footer Section -->

    </form>
</body>
</html>
