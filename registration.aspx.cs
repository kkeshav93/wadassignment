using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
using System.Net;

public partial class registration : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        List<StudentInfor> allUsersList = Application["AllUserList"] as List<StudentInfor>;
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
        if (CheckBox1.Checked == true)
        {
            //Covert the month to number

            string month_name = month1.SelectedItem.Text;

            int month_number = DateTime.ParseExact(month_name, "MMMM", CultureInfo.CurrentCulture).Month;

            //null values 

                //amount
                int number_defalut_int = 1;
                float number_default = (float)number_defalut_int;

                //date
                string date_default = "1/1/1950";

            //copying stuff into the object

            StudentInfor student = new StudentInfor();

            student.userName = TextBox5.Text;
            student.password = TextBox6.Text;
            student.certifiedchecked = CheckBox1.Checked;
            student.socialSecurityNumber = TextBox1.Text;
            student.fullName = TextBox2.Text;
            student.address = TextBox4.Text;
            student.emailAddress = TextBox8.Text;
            student.securityQuestion = securityquestions.SelectedItem.Text;
            student.securityQuestionAnswer = TextBox10.Text;
            student.dateOfBirth = month_number + "/" + date1.SelectedItem.Text + "/" + year1.SelectedItem.Text;
            student.lastUpdatedDate = date_default;
            student.currentBalance = number_default;
            student.regularMonthlyPaymentAmount = number_default;
            student.amountSatisfiedByExtraPayment = number_default;
            student.currentAmountDue = number_default;
            student.currentStatementDueDate = date_default;

            Random rnd = new Random();
            student.accountNumber = rnd.Next(100000, 999999);

            //Putting data into database
            try
            {

                SqlConnection con = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432016fa02kasichainulak; Persist Security Info = True; User ID = kasichainulak; Password = 1456090");
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO kasichainulak_WADfl16_studentinfor (socialSecurityNumber,userName,password,certifiedchecked,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber) VALUES (@socialSecurityNumber,@userName,@password,@certifiedchecked,@fullName,@dateOfBirth,@address,@emailAddress,@securityQuestion,@securityQuestionAnswer,@accountNumber)", con);

                cmd.Parameters.AddWithValue("@socialSecurityNumber", student.socialSecurityNumber);
                cmd.Parameters.AddWithValue("@userName", student.userName);
                cmd.Parameters.AddWithValue("@password", student.password);
                cmd.Parameters.AddWithValue("@certifiedchecked", student.certifiedchecked);
                cmd.Parameters.AddWithValue("@fullName", student.fullName);
                cmd.Parameters.AddWithValue("@dateOfBirth", student.dateOfBirth);
                cmd.Parameters.AddWithValue("@address", student.address);
                cmd.Parameters.AddWithValue("@emailAddress", student.emailAddress);
                cmd.Parameters.AddWithValue("@securityQuestion", student.securityQuestion);
                cmd.Parameters.AddWithValue("@securityQuestionAnswer", student.securityQuestionAnswer);
                cmd.Parameters.AddWithValue("@accountNumber", student.accountNumber);
                cmd.Parameters.AddWithValue("@lastUpdatedDate", student.lastUpdatedDate);
                cmd.Parameters.AddWithValue("@currentBalance", student.currentBalance);
                cmd.Parameters.AddWithValue("@regularMonthlyPaymentAmount", student.regularMonthlyPaymentAmount);
                cmd.Parameters.AddWithValue("@amountSatisfiedByExtraPayment", student.amountSatisfiedByExtraPayment);
                cmd.Parameters.AddWithValue("@pastDueAmount", student.pastDueAmount);
                cmd.Parameters.AddWithValue("@currentAmountDue", student.currentAmountDue);
                cmd.Parameters.AddWithValue("@currentStatementDueDate", student.currentStatementDueDate);


                cmd.ExecuteNonQuery();

                //Close the database connection
                con.Close();

                List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
                Application["AllUsersList"] = allUsersList as List<StudentInfor>;
                allUsersList.Add(student);

                //Email code:
                /* Body of the email is:*/
                string body_part1 = "Dear" + "" + "<mark>" + student.userName.ToString() + ",</mark>";
                string body_part2 = "<br /> Thank you for registering with us. ";
                string body_part3 = "You can now access your loan account at <a href=\"http://dcm.uhcl.edu/c432016fa02kasichainulak/login.aspx\">login</a>";
                string body_part4 = "<br /><br />In the meantime, please share the word about <mark>K.K Student Loan</mark> with your friends and neighbours!.<mark>K.K Student Loan</mark> is open to all eligible college applications thoughout the United States";
                string body_part5 = "<br />Thank you again for your registration.If you have any questions, please contact us at <a href=\"http://dcm.uhcl.edu/c432016fa02kasichainulak/ContactUs.aspx\">here</a>";
                string body_part6 = "<br /><br />With Best Wishes,";
                string body_part7 = "<br /><mark>K.K Student Loan</mark>";
                string body = body_part1 + body_part2 + body_part3 + body_part4 + body_part5 + body_part6 + body_part7;
                using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], TextBox8.Text))
                {
                    mail.Subject = "New Registration Notification";
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

                }



                //Alert Box creation
                string script = "alert('Thank you for submitting for registration. You can now login by clicking the Login link at the top right hand side of this page.');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
               

            }
            catch(Exception ex)
            {
                string str2;
                str2 = "Error --> " + ex.Message;
                string str3 = "Sorry! Some error occured during registration!";

                Response.Write("<script language=javascript>alert('" + str3 + "ERROR:" +  str2 + "');</script>");
               
            }
        }

        else
        {
            string script1 = "alert('You have not checked the check box. Please check it');";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1, true);
        }

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        try
        {
            if (IsPostBack)
            {
                int i = 0;
                for (i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].socialSecurityNumber == this.TextBox1.Text)
                    {
                        string str2 = this.TextBox1.Text + ":";
                        string str = "social security number is already existing.Please login";
                        string mainstr = str2 + str;
                        //Response.Write("<script language=javascript>alert('"+str2 + ""+ str + "');</script>");
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "err_msg", "alert('" + mainstr + "');window.location='registration.aspx';", true);

                        break;
                    }
                }
            }
        }
        catch
        {

        }

        SSNValidator.Validate();
        SSNValidatorRegularExpressionValidator.Validate();
    }

    /*
    public void insert(StudentInfor student_information)
    {
        try
        {


            SqlConnection con = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432016fa02kasichainulak; Persist Security Info = True; User ID = kasichainulak; Password = 1456090");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO kasichainulak_WADfl16_studentinfor (socialSecurityNumber,userName) VALUES (@socialSecurityNumber,@userName)", con);

            cmd.Parameters.AddWithValue("@socialSecurityNumber", student_information.socialSecurityNumber);
            cmd.Parameters.AddWithValue("@userName", student_information.userName);

            cmd.ExecuteNonQuery();

            if (cmd.ExecuteNonQuery() > 0)
            {

            }

            else
            {
                string str2 = "Sorry! Some error occured during registration!";
                Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
            }

            con.Close();
        }

        catch(Exception ex)
        {
            string str2;
            str2 = "Error --> " + ex.Message;
            Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
        }
        //var con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        //string oString = "Select * from StudentInfor ";
        //SqlConnection myConnection = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432016fa02kasichainulak; Persist Security Info = True; User ID = kasichainulak; Password = 1456090");

        //SqlCommand oCmd = new SqlCommand(oString, myConnection);

        //try
        //{


        //    myConnection.Open();
        //    //SqlCommand details = new SqlCommand("insert into kasichainulak_WADfl16_studentinfor values(@socialSecurityNumber,@userName,@password,@fullName,@dateOfBirth,@address,@emailAddress,@securityQuestion,@securityQuestionAnswer,@accountNumber)", myConnection);

        //    //SqlCommand cmd = new SqlCommand("insert into kasichainulak_WADfl16_studentinfor values(@socialSecurityNumber,@userName,@password,@fullName,@dateOfBirth,@address,@emailAddress,@securityQuestion,@securityQuestionAnswer)", myConnection);

        //    //SqlCommand cmd = new SqlCommand("insert into kasichainulak_WADfl16_studentinfor values(@socialSecurityNumber)", myConnection);

        //    string cmdText = "INSERT into kasichainulak_WADfl16_studentinfor values(@socialSecurityNumber, @userName)";

        //    SqlCommand cmd = new SqlCommand(cmdText, myConnection);

        //    //cmd.Parameters.Add("@socialSecurityNumber", SqlDbType.VarChar, 50).Value = student_information.socialSecurityNumber;
        //    //cmd.Parameters.Add("@socialSecurityNumber", SqlDbType.NVarChar, 50).Value = student_information.socialSecurityNumber;
        //    cmd.Parameters.AddWithValue("@socialSecurityNumber", "111-11-1113");
        //    //cmd.Parameters.Add("@userName", SqlDbType.VarChar, 50).Value = student_information.userName;
        //    cmd.Parameters.AddWithValue("@userName", "keshav");
        //    //cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = student_information.password;
        //    ////cmd.Parameters.Add("@certifiedchecked", SqlDbType.NVarChar) = student_information.certifiedchecked;
        //    //cmd.Parameters.Add("@fullName", SqlDbType.VarChar, 50).Value = student_information.fullName;
        //    //cmd.Parameters.Add("@dateOfBirth", SqlDbType.VarChar, 50).Value = student_information.dateOfBirth;
        //    //cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = student_information.address;
        //    //cmd.Parameters.Add("@emailAddress", SqlDbType.VarChar, 50).Value = student_information.emailAddress;
        //    //cmd.Parameters.Add("@securityQuestion", SqlDbType.VarChar, 50).Value = student_information.securityQuestion;
        //    //cmd.Parameters.Add("@securityQuestionAnswer", SqlDbType.VarChar, 50).Value = student_information.securityQuestionAnswer;
        //    ////cmd.Parameters.Add("@accountNumber", SqlDbType.Int).Value = student_information.accountNumber;

        //    cmd.ExecuteNonQuery();

        //    if (cmd.ExecuteNonQuery() > 0)
        //    {
        //        string str = "Thank you for registering.You can now log in.";
        //        Response.Write("<script language=javascript>alert('" + str + "');</script>");
        //    }
        //    else
        //    {

        //        string str2 = "Sorry! Some error occured during registration!";
        //        Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
        //    }
        //}
        //catch (Exception ex)
        //{
        //    string str2;
        //    str2 = "Error --> " + ex.Message;
        //    Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
        //}
        //finally
        //{
        //    myConnection.Close();

        //}

    }
    */
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}