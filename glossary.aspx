

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glossary.aspx.cs" Inherits="glossary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Glossary Page </title>

    <!-- Link to CSS file -->
    <link href="glossary.css" rel="stylesheet" type="text/css" />


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
			<li><a href="Default.aspx">Home</a></li>
            <li style="font-size: 25px; display: inline"> | </li>
			<li><a href="#news" style="text-decoration: none">Glossary</a></li>
			<li style="float:right"><asp:LinkButton ID="login_logout" runat="server" Text="" OnClick="LinkButton1_Click"></asp:LinkButton></li>
		</ul>
		
	</div>
	
	<!-- Title of the page -->
	
	<h2 style="text-align:center;color:blue"> General Glossary </h2>
	
	<!-- End of title -->
	
	<!-- Alphabets -->
		<ul >
			<li ><a class="alphabet" href="#partA"> A </a></li>
			<li ><a class="alphabet" href="#partC"> C </a></li>
			<li ><a class="alphabet" href="#partD"> D </a></li>
			<li ><a class="alphabet" href="#partE"> E </a></li>
			<li ><a class="alphabet" href="#partF"> F </a></li>
			<li ><a class="alphabet" href="#partG"> G </a></li>
			<li ><a class="alphabet" href="#partL"> L </a></li>
			<li ><a class="alphabet" href="#partN"> N </a></li>
			<li ><a class="alphabet" href="#partP"> P </a></li>
			<li ><a class="alphabet" href="#partS"> S </a></li>
			<li ><a class="alphabet" href="#partT"> T </a></li>
			<li ><a class="alphabet" href="#partU"> U </a></li>
			<li ><a class="alphabet" href="#partV"> V </a></li>
		</ul>
	<br />
	<br />
    <!-- End of Alphabets -->
	
	<!-- Text part -->
	
	<!-- Part A -->
	<section id="partA">
	
		<hr />
		<p class="alphabet-p"> -A- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Account number</b>A sixteen digit number that is comprised of a six-digit institution or client number,
									one letter from A to Z following by eight numbers or institution assigned loan number, 
									and a one-digit record or packet number. This account number must be included on all 
									payments and correspondence. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Accrue/interest accrual </b>The process where interest accumulates on the unpaid principal 
										balance of your loan. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> ACH/Checkmate IITM </b>The system used to automatically transfer payments electronically from an individual 
										borrower's checking or savings account for payment on FFELP or Private Loan accounts. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Authorized Payer </b>A third party who is authorized by a student loan customer to make an online payment 
										with ExpressPaySM on an account. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Automatic Bill Payment (ABP)</b>The system used to automatically transfer payments from an individual borrower's 
										checking or savings account for payment on a CPS account. CPS refers to the ACS division that services "Campus Based Student 
										Loans". This includes Federal Perkins, NDSL, Health Professions, Nursing, and Institutional Loans. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	
	<!-- End of Text Part A -->
	
	<!-- Part C -->
	<section id="partC">
	
		<hr />
		<p class="alphabet-p"> -C- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Capitalization</b>Capitalized interest is interest that is added to principal, creating a higher balance on which interest now accrues. 
										Depending on your type of loan program, your account(s) may or may not be subject to interest capitalization. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Checkmate IITM </b>The system used to automatically transfer payments electronically from an individual borrower's checking or savings
										account for payment on FFELP or Private Loan accounts. Also listed under ACH/Checkmate IITM <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Co-Maker </b>A co-maker is one of two individuals who are joint borrowers on a PLUS, Consolidation or Alternative Loan/Private Loan 
										that is jointly and severally liable for repayment of the loan. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Co-signer </b>An individual who signs a promissory note and agrees to repay the loan in the event that the borrower does not.
											<a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Consolidation </b>Consolidation is the process of making loans to borrowers for the purpose of consolidating their repayment 
										obligations(s) into a Consolidation Loan with new and more manageable repayment terms. <a href = "#banner"> [Back to top] </a> 
		</p> 
		<p class="text-p" ><b class="text-p"> CPS </b>This refers to the ACS division that services "Campus Based Student Loans". 
										This includes Federal Perkins, NDSL, Health Professions, Nursing, and Institutional Loans.<a href = "#banner"> [Back to top] </a>
		
		</p>
		
		<p class="text-p" ><b class="text-p"> Credit Bureau </b>Credit Bureau is an agency that collects and distributes personal credit information about consumers. 
										A credit report from a bureau might include payment history on loans and other credit accounts (such as credit cards), balances 
										of accounts, and length and place of employment. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	
	<!-- End of Text Part C -->
	
	<!-- Part D -->
	<section id="partD">
	
		<hr />
		<p class="alphabet-p"> -D- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Default</b>The failure to repay a loan in accordance with the terms of the promissory note. 
										Consult your promissory note for additional information. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Deferment </b>Deferment is an approved postponement of payment for a specified period of 
										time as allowed by certain education loan types. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Delinquent </b>Delinquent means that your account has become past due for payment. 
										This occurs when your payment is not received by the due date on your bill or coupon. 
										Delinquency begins the day after the payment is due. An account remains delinquent until you bring 
										the account current with a payment, deferment, or forbearance. If your account has become delinquent 
										and you are unable to make payments at this time, you may want to consider a deferment or a forbearance <a href = "#banner"> [Back to top] </a> Department of Health and Human Services (DHHS) 
										The governing body for the Health Professions and Nursing Student Loan programs. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Disclosure </b>Disclosure Statement is a form that provides relevant loan data, which usually includes the loan's interest rate, guarantee and origination fees, 
										the projected maturity, and overall cost of the loan. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Due Diligence </b>Due Diligence is the procedure required for attempting to satisfactorily resolve a delinquency and prevent default. 
										Loan servicers are required to use collection attempts that include telephone calls and past due letters. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part D -->
	
	<!-- Part E -->
	<section id="partE">
	
		<hr />
		<p class="alphabet-p"> -E- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p"> Enrollment Status </b>The status of a student as reported by the student's school. 
										The status is dependent upon the number of credit hours a student is carrying. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part E -->
	
	<!-- Part F -->
	<section id="partF">
	
		<hr />
		<p class="alphabet-p"> -F- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">FAFSA</b>Free Application for Federal Student Aid. The form the student must complete to apply for 
										Title IV financial assistance. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> FFELP </b>Federal Family Education Loan Programs. The loan programs authorized by Title IV, 
										part B of the Higher Education Act of 1965, as amended, including Federal Stafford, Federal Plus, 
										Federal SLS, and Federal Consolidation Loan Programs.<a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Fixed Interest Rate </b>A rate of interest which does not change during the life of the loan. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Forbearance </b>Forbearance is a special arrangement between the borrower and lender (at the lender's option) which may allow the borrower 
										to temporarily postpone payments, obtain an extension for making payments, or make smaller payments than originally scheduled. 
										The borrower is liable for the interest that accrues during the forbearance period. <a href = "#banner"> [Back to top] </a>
		</p>
		
		
	</section>
	<!-- End of Text Part F -->
	
	<!-- Part G -->
	<section id="partG">
	
		<hr />
		<p class="alphabet-p"> -G- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Grace Period</b>A period of time (generally six or nine months) that begins immediately after the borrower ceases to be enrolled as 
										at least a half-time student.Eligibility for a grace period depends on the type of loan that you received, therefore, please consult your 
										promissory note. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Graduate PLUS Loan </b>A graduate or professional student may apply for a Federal PLUS loan. The Grad PLUS loan is different from the 
										PLUS loan (see PLUS loan in this table) in that it is made directly to the students who are enrolled as graduate or professional student status,
										while the PLUS loan is made to parents for their dependent students. Before applying for a Federal PLUS loan, a graduate or professional student 
										must first complete the Free Application for Federal Student Aid (FAFSA) and must have been determined eligible for his or her maximum loan amount
										under the Federal Subsidized and Unsubsidized Stafford Loan Program. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Guarantor </b>Guarantor is an agency that has entered into an agreement with the U.S. Secretary of Education to guarantee FFELP loans against death, 
										disability, bankruptcy, or default of the borrower and other conditions prescribed by the Secretary. Certain Alternative/Private Loans may also have a 
										guarantor that has entered into an agreement with individual lenders to provide similar assurance.<a href = "#banner"> [Back to top] </a>
		</p>
		
		
	</section>
	<!-- End of Text Part G -->
	
	<!-- Part L -->
	<section id="partL">
	
		<hr />
		<p class="alphabet-p"> -L- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Last Payment Amount</b>Last Payment Amount is the total amount of the borrower's most recent payment. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Last Payment Date </b>Last Payment Date is the date a customer's most recent payment was received by ACS.<a href = "#banner"> [Back to top] </a>
		</p>
		
		
	</section>
	<!-- End of Text Part L -->
	
	<!-- Part M -->
	<section id="partM">
	
		<hr />
		<p class="alphabet-p"> -M- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p"> Mixed Rates </b>A mixed rate of interest means there are different rates associated with the different disbursements of the loan. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part M -->
	
	<!-- Part N -->
	<section id="partN">
	
		<hr />
		<p class="alphabet-p"> -N- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Next Payment Amount </b>Next Payment Amount is the amount of the current monthly payment plus any past due amounts and late charges.<a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Next Payment Date </b>Next Payment Date is the date of the next scheduled payment. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> NSLDS </b>The National Student Loan Data System is a central depository of student loan information. With data provided by lenders, guarantors, schools, and servicers, 
										institutions are able to review a borrower's lending and enrollment history. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part N -->
	
	<!-- Part P -->
	<section id="partP">
	
		<hr />
		<p class="alphabet-p"> -P- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p"> PLUS Loan </b>PLUS loans (Parental Loan for Undergraduate Students) are loans that can be obtained by parents for their dependent students. 
										<a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p">Pre-Pay Advance</b>When a payment covers a monthly installment amount, the next payment due date may advance. This option depends on the loan 
										type and at the lender's option. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Prepayment </b>Prepayment is any amount paid in excess of the amount due on your loan. Prepayments are always applied to interest due first 
										and then to principal. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Principal Balance Outstanding </b>Principal Balance Outstanding is the total unpaid balance of a loan not including interest. It should be 
										noted that the principal balance outstanding is not necessarily the amount required to pay off the debt. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Promissory Note </b>Promissory Note is a legally binding agreement the borrower (and co-maker or endorser, if applicable) signs to obtain a loan, 
										in which the borrower promises to repay the loan, with interest and other applicable fees, in periodic installments. The agreement also includes other
										conditions respective to the individual loan type. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part P -->
	
	<!-- Part S -->
	<section id="partS">
	
		<hr />
		<p class="alphabet-p"> -S- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Servicemembers' Civil Relief Act (SCRA) FFEL and PRIVATE</b>A benefit of a maximum annual interest rate of six percent mandated by the SCRA and 
										the Higher Education Act of 1965, as amended, for federal student loans, and the SCRA for private education loans. To request the benefit, mail or fax the 
										Request for Servicemember's Civil Relief Act Benefit with a copy of your military orders to us. For more information, visit our Servicemember's webpage. 
										<a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> CBSL </b>A benefit of a maximum annual interest rate of six percent mandated by the SCRA and the Higher Education Act of 1965, as amended for campus 
										based student loans. To request the benefit, send a written request (email or letter) with a copy of your military orders to us. For more information, visit
										our Servicemember's webpage. <a href = "#banner"> [Back to top] </a>
		</p>
		
		<p class="text-p" ><b class="text-p"> Status </b>Status describes the present state of the borrower's loan(s). An account will be either: in school, in grace, in repayment-current, in
										repayment-delinquent, in deferment, in forbearance, paid-in-full, in a suspended status, or in default. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part S -->
	
	<!-- Part T -->
	<section id="partT">
	
		<hr />
		<p class="alphabet-p"> -T- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p">Tax Relief Act (TRA97)</b>The Tax Relief Act of 1997 provides for several tax benefits for parents and students. Previously, the Act allowed borrowers 
										to deduct student loan interest paid within the first 60 months of repayment. For tax year 2002 any and all interest paid on the loan from January 1, 2002, 
										through December 31, 2002, is tax deductible. Payments made beginning January 1, 1998 can be deducted on 1998 tax returns filed in 1999. The deduction is limited 
										to $1,000 in 1998, $1,500 in 1999, $2,000 in 2000 and $2,500 thereafter. The interest deduction can not be claimed for any interest amount paid prior to January 1, 1998. 
										The Hope Scholarship and Lifetime Learning Credit will be available as a credit against federal income taxes beginning with 1998 tax returns. We advise you to consult your 
										tax advisor to determine your eligibility for the deduction and tax credits.<a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part T -->
	
	<!-- Part U -->
	<section id="partU">
	
		<hr />
		<p class="alphabet-p"> -U- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p"> US Department of Education </b>The governing body for the Federal Perkins/NDSL and FFEL programs.  <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part U -->
	
	<!-- Part V -->
	<section id="partV">
	
		<hr />
		<p class="alphabet-p"> -V- </p>
		<hr />
		
		<p class="text-p" ><b class="text-p"> Variable Interest </b>Many student loans have a variable interest rate. The rate of interest that is charged on a loan is tied to 
										and fluctuates with a stated index. <a href = "#banner"> [Back to top] </a>
		</p>
		
	</section>
	<!-- End of Text Part U -->
	
    </form>
</body>
</html>

