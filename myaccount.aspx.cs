using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Account_Number.Text = Session["Account_Number"].ToString();
            NameofAccount.Text = Session["name"].ToString();
            Last_Update_Date.Text = Session["Last_Update_Date"].ToString();
            Current_Balance.Text = Session["current_Balance"].ToString();
            Last_Update_Date1.Text = Session["Last_Update_Date1"].ToString();
            Regular_Monthly_Payment_Amount.Text = Session["Regular_Monthly_Payment_Ammount"].ToString();
            Amount_Satisfied_by_Extra_Payment.Text = Session["Ammount_Satisfied_by_Extra_Payment"].ToString();
            Past_Due_Amount.Text = Session["Past_Due_Acount"].ToString();
            Current_Amount_Due.Text = Session["Current_Amount_Due"].ToString();
            Current_Statement_Due_Date.Text = Session["Current_Statement_Due_Date"].ToString();
        }
        catch
        {

        }
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Response.Redirect("Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        string str = "You are now Logged Out";
        Response.Write("<script language=javascript>alert('" + str + "');</script>");
        Response.AddHeader("REFRESH", "1;URL=login.aspx");
    }
}