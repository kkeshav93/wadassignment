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
        if (login_logout.Text == "login")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Session.Abandon();
            string str = "You are now logged out";
            Response.Write("<script language=javascript>alert('" + str + "');</script>");
            Response.AddHeader("REFRESH", "2; URL=Default.aspx");
            
        }
    }
}