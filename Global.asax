<%@ Application Language="C#" %>

<script runat="server">


    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List<StudentInfor>();
        List<StudentInfor> user = new List<StudentInfor>();



        using(System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432016fa02kasichainulak;User ID=kasichainulak;Password=1456090"))
        {
            sql.Open();

            String selectquery = "SELECT * FROM kasichainulak_WADfl16_studentinfor";
            System.Data.SqlClient.SqlCommand sp = new System.Data.SqlClient.SqlCommand(selectquery, sql);

            System.Data.SqlClient.SqlDataReader reader = sp.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    StudentInfor student = new StudentInfor();
                    student.socialSecurityNumber = reader.GetString(0);
                    student.userName = reader.GetString(1);
                    student.password = reader.GetString(2);
                    student.certifiedchecked = reader.GetBoolean(3);
                    student.fullName = reader.GetString(4);
                    student.dateOfBirth = reader.GetString(5);
                    student.address = reader.GetString(6);
                    student.emailAddress = reader.GetString(7);
                    student.securityQuestion = reader.GetString(8);
                    student.securityQuestionAnswer = reader.GetString(9);
                    student.accountNumber = reader.GetInt32(10);
                    student.lastUpdatedDate = reader.GetString(11);
                    student.currentBalance = reader.GetFloat(12);
                    student.regularMonthlyPaymentAmount = reader.GetFloat(13);
                    student.amountSatisfiedByExtraPayment = reader.GetFloat(14);
                    student.pastDueAmount = reader.GetFloat(15);
                    student.currentAmountDue = reader.GetFloat(16);
                    student.currentStatementDueDate = reader.GetString(17);

                    user.Add(student);
                }
            }
            reader.Close();
            sql.Close();
        }

        Application["AllUsersList"] = user;

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
