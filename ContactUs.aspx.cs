using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = "keshav";
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                login_logout.Text = "logout";
            }
            else
            {
                login_logout.Text = "login";
            }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (login_logout.Text == "Login")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Session.Abandon();
            string str = "It apperas this user is not in our database. Please Click Register Now Link";
            Response.Write("<script language=javascript>alert('" + str + "');</script>");
            Response.AddHeader("REFRESH", "2; URL=Default.aspx");
            
        }
    }
}