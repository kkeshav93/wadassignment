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
            for (i = 0; i < allUsersList.Count; i++)
            {
                if (allUsersList[i].emailAddress == TextBox1.Text)
                {
                    if (allUsersList[i].password == TextBox2.Text)
                    {
                        Session["username"] = TextBox1.Text;
                        Session["password"] = TextBox2.Text;
                        Session["name"] = allUsersList[i].fullName;
                        Session["account_Number"] = 0;
                        Session["current_Balance"] = 0.0;
                    }

                }
                else
                {
                    string str = "It apperas this user is not in our database. Please Click Register Now Link";
                    Response.Write("<script language=javascript>alert('" + str + "');</script>");
                }
            }
        }
        string script = "alert('You are now Logged In');";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        //Response.AddHeader("REFRESH","1;myaccount.aspx");
        Response.Redirect("myaccount.aspx");
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