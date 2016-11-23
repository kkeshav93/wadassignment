using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.IO;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                login_logout.Text = "logout";
                send_email.Enabled = true;
                emailbody.Enabled = true;
            }
            else
            {
                login_logout.Text = "login";
                send_email.Enabled = false;
                emailbody.Enabled = false;
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

    protected void send_email_Click(object sender, EventArgs e)
    {
        
        /* Body of the email is:*/
        string body = "Dear Valued Student, <br /> You are receiving this email because you contacted us with a question and/or a concern. <br /> Our support staff will repond wthin the next 48 hours. <br /><br /> Thank You <br/> <mark> K.K Student Loan </mark>";

        using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], "keshav345@gmail.com"))
        {
            mail.Subject = "We have received your message!";
            mail.Body = body;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["Host"];
            smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]); ;
            NetworkCredential NetworkCred = new NetworkCredential(ConfigurationManager.AppSettings["SMTPuser"], ConfigurationManager.AppSettings["SMTPpassword"]);
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]); ;
            smtp.Send(mail);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Thank You.An email notification has also been sent to the address we have in out file.');", true);
        }
    }
}