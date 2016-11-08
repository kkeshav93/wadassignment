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

        string script = "alert('You are now Logged In');";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("recovery.aspx");
    }
}