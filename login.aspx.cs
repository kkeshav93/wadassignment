using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton_Click(Object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        if (IsPostBack)
        {
            int i = 0;
            if (allUsersList.Count == 0)
            {
                string str = "It apperas this user is not in our database. Please Click Register Now Link";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
            for (i = 0; i < allUsersList.Count; i++)
            {
                if (allUsersList[i].emailAddress == TextBox1.Text && allUsersList[i].password == TextBox2.Text)
                {
                   
                    Session["username"] = TextBox1.Text;
                    Session["password"] = TextBox2.Text;
                    Session["name"] = allUsersList[i].fullName;
                    Session["Account_Number"] = allUsersList[i].accountNumber;
                    Session["current_Balance"] = allUsersList[i].currentBalance;
                    Session["Last_Update_Date"] = allUsersList[i].lastUpdatedDate;
                    Session["Last_Update_Date1"] = allUsersList[i].lastUpdatedDate;
                    Session["Regular_Monthly_Payment_Ammount"] = allUsersList[i].regularMonthlyPaymentAmount;
                    Session["Ammount_Satisfied_by_Extra_Payment"] = allUsersList[i].amountSatisfiedByExtraPayment;
                    Session["Past_Due_Acount"] = allUsersList[i].pastDueAmount;
                    Session["Current_Amount_Due"] = allUsersList[i].currentAmountDue;
                    Session["Current_Statement_Due_Date"] = allUsersList[i].currentStatementDueDate;
                    Response.Redirect("myaccount.aspx");
                }
                else
                {
                    string str = "It apperas this user is not in our database. Please Click Register Now Link";
                    Response.Write("<script language=javascript>alert('" + str + "');</script>");
                }
            }
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("recovery.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
}