<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List<StudentInfor>();
        List<StudentInfor> permenantList = new List<StudentInfor>();
        List<StudentInfor> tempList = new List<StudentInfor>();

        using(System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection())
        {
            sql.Open();

            String selectquery = "SELECT * FROM kasichainulak_WADfl16_studentinfor";
        }



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
