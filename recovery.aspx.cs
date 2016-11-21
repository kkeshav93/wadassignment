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

public partial class recovery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string script = "alert('Thank You. An email has been sent to the address you have provided');";
        //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        /* Body of the email is:*/
        string body_part1 = "Dear Valued Student, <br /> You are receiving this email beause you requested to recover your password.";
        string body_part2 = "<br /><br />Your current password is:" + "<mark>" + Session["password"] + "</mark>";
        string body_part3 = "<br /><mark>K.K Student Loan</mark>";
        //string body_part4 = "<br /> You can now access your loan account at" + "<a href=" + "login.aspx\"" + ">" + "</a>";
        
        string body = body_part1 + body_part2 + body_part3;
        using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], TextBox1.Text))
        {
            mail.Subject = "We have recovered your password!";
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
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Thank You. An email has been sent to the address you have provided');", true);
        }
    }
}