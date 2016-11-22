using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
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
        //Response.Write(login_logout.Text);
        if (login_logout.Text == "login")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            string str = "You Have Now Logged Out";
            Response.Write("<script language=javascript>alert('" + str + "');</script>");
            Session.Abandon();
            Response.AddHeader("REFRESH", "1;Default.aspx");
        }
    }
}