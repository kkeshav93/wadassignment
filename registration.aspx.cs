using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    List<StudentInfor> allusers = null;
    protected void Page_Load(object sender, EventArgs e)
    {
            allusers = new List<StudentInfor>();
            date();
            month();
            Year();
            securityquestion();
       
    }
    public void date()
    {
        for (int i = 1; i <= 31; i++)
        {
            date1.Items.Add(i.ToString());
        }
    }

    private void month()
    {
        DateTimeFormatInfo info = DateTimeFormatInfo.GetInstance(null);
        for (int i = 1; i < 13; i++)
        {
            month1.Items.Add(new ListItem(info.GetMonthName(i), i.ToString()));
        }
    }

    protected void Year()
    {

        for (int i = 1950; i <= 2001; i++)
        {
            year1.Items.Add(i.ToString());
        }
    }

    public void securityquestion()
    {
        securityquestions.Items.Add(new ListItem("What is your mother's maiden name?", "0"));
        securityquestions.Items.Add(new ListItem("What was your childhood nickname?", "1"));
        securityquestions.Items.Add(new ListItem("What is the name of your favorite childhood friend?", "2"));
        securityquestions.Items.Add(new ListItem("What is your favorite sport team?", "3"));
        securityquestions.Items.Add(new ListItem("What was the make and model of your first car?", "4"));
        securityquestions.Items.Add(new ListItem("What school did you attend for sixth grade?", "5"));
        securityquestions.Items.Add(new ListItem("What was the last name of your third grade teacher?", "6"));
        securityquestions.Items.Add(new ListItem("In what town was your first job?", "7"));
        securityquestions.Items.Add(new ListItem("What is your favorite movie?", "8"));
        securityquestions.Items.Add(new ListItem("Who is your childhood sports hero?", "9"));
        securityquestions.Items.Add(new ListItem("In what year was your father born?", "10"));

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

    protected void Button1_Click(object sender, EventArgs e)
    {
        StudentInfor student = new StudentInfor();
        student.userName = TextBox5.Text;
        student.password = TextBox6.Text;
        student.certifiedchecked = CheckBox1.Checked;
        student.socialSecurityNumber = TextBox1.Text;
        student.fullName = TextBox2.Text;
        student.address = TextBox4.Text;
        student.emailAddress = TextBox8.Text;
        student.securityQuestion = securityquestions.SelectedValue;
        student.securityQuestionAnswer = TextBox10.Text;


        //Alert Box creation
        /*
        string script = "alert('Thank you for submitting for registration. You can now login by clicking the Login link at the top right hand side of this page.');";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        */    
    }
}