using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recovery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string script = "alert('Thank You. An email has been sent to the address you have provided');";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
    }
}