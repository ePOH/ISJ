Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") = "true" Then
            Response.Redirect("default.aspx", True)
        End If
        ISJ_User.Focus()
    End Sub

    Protected Sub LoginBtn_Click(sender As Object, e As System.EventArgs) Handles LoginBtn.Click
        'Login_Msg.Text = ""
        'If Len(ISJ_Password.Text) > 0 Then


        '    Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
        '    Dim hashedBytes As Byte()
        '    Dim encoder As New UTF8Encoding()


        '    hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(ISJ_Password.Text))
        '    Dim paramPwd As Data.SqlClient.SqlParameter
        '    paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
        '    paramPwd.Value = hashedBytes


        '    'Dim paramEmail As SqlParameter
        '    'paramEmail = New SqlParameter("@Email", Data.SqlDbType.VarChar, 50)
        '    'paramEmail.Direction = ParameterDirection.Input
        '    'paramEmail.Value = email
        '    'sqlCmd.Parameters.Add(paramEmail)


        '    Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        '    Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        '    Dim strSQL As String = "SELECT * FROM User_Master_File WHERE User_Name = '" & ISJ_User.Text & "' AND User_Password = @Password AND User_Status = 1"

        '    objConn.Open()
        '    Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        '    objComm.Parameters.Add(paramPwd)


        '    Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        '    If objRead.Read() Then
        '        If objRead.Item("Employee_Email").ToString = ISJ_User.Text Then
        '            UserLogin.AdminLog(objRead.Item("Employee_Email").ToString, "Login", "AdminAccount", "")
        '            Session("login") = "true"
        '            Session("login_id") = objRead.Item("User_ID")
        '            Session("login_fname") = objRead.Item("USer_First_Name")
        '            Session("login_lname") = objRead.Item("User_Last_Name")
        '            Session("login_email") = objRead.Item("User_Email")
        '            Session("login_permissions") = objRead.Item("User_Access_Level")
        '            Session("login_level") = objRead.Item("Employee_Level")
        '            Session("login_password") = ISJ_Password.Text
        '            Response.Redirect("Default.aspx", True)
        '            objRead.Close()
        '            objConn.Close()
        '            Login_Msg.Text = "Password"
        '        End If
        '    Else
        '        Login_Msg.Text = "Incorrect Email Address or Password"
        '    End If
        'Else
        '    Dim paramE_ID As Data.SqlClient.SqlParameter
        '    paramE_ID = New Data.SqlClient.SqlParameter("@Email", Data.SqlDbType.VarChar, 50)
        '    paramE_ID.Value = ISJ_User.Text

        '    Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        '    Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        '    'Dim strSQL As String = "SELECT * FROM User_Master_File WHERE User_Name = '" & ISJ_User.Text & "' AND ISJ_Password = @Password AND User_Status = 1"
        '    Dim strSQL As String = "SELECT * FROM User_Master_File WHERE User_Name = '" & ISJ_User.Text & "' AND User_Status = 1"

        '    objConn.Open()
        '    Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        '    objComm.Parameters.Add(paramE_ID)
        '    Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        '    If objRead.Read() Then
        '        Dim strSQL1 As String = ""
        '        If objRead.Item("User_ID") IsNot DBNull.Value Then
        '            'If objRead.Item("Employee_ID") = objRead.Item("Use_Emp_ID") Then
        '            strSQL1 = "UPDATE User_Master_File SET User_Password = @Password WHERE (User_ID = '" & objRead.Item("User_ID") & "')"
        '            'Else
        '            'strSQL1 = "INSERT INTO User_Master_File (Use_Emp_ID, User_Password) VALUES ('" & objRead.Item("Employee_ID") & "', @Password)"
        '        End If

        '        Dim randID As String
        '        randID = RandomPassword.Getpassword(13)

        '        Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
        '        Dim hashedBytes As Byte()
        '        Dim encoder As New UTF8Encoding()
        '        hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(randID))
        '        Dim paramPwd As Data.SqlClient.SqlParameter
        '        paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
        '        paramPwd.Value = hashedBytes

        '        'Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnBermudez").ConnectionString
        '        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
        '        'Dim strSQL1 As String = "INSERT INTO User_Master_File (Use_Emp_ID, User_Password) VALUES ('" & objRead.Item("Employee_ID") & "', @Password)"
        '        'Dim strSQL1 As String = "UPDATE User_Master_File SET User_Password = @Password WHERE (Use_Emp_ID = '" & objRead.Item("Employee_ID") & "')"
        '        objConn1.Open()
        '        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        '        objComm1.Parameters.Add(paramPwd)
        '        objComm1.ExecuteNonQuery()
        '        objComm1.Connection.Close()
        '        objConn1.Close()

        '        Dim sMsg As String

        '        sMsg = "Your new password to login to the ISupport Jamaica Admin is: <b>" & randID & "</b>" & vbCrLf & "<br>"
        '        sMsg += "" & vbCrLf & "<br>"
        '        sMsg += "Please do not share this password with anyone as the information displayed in the Application is private and confidential." & vbCrLf & "<br>"
        '        sMsg += "" & vbCrLf & "<br>"
        '        sMsg += "Regards," & vbCrLf & "<br>"
        '        sMsg += "" & vbCrLf & "<br>"
        '        sMsg += "ISupport Jamaica Admin." & vbCrLf & "<br>"
        '        sMsg += "https://www.isupportjamaica.com/admin" & vbCrLf & "<br>"

        '        Dim NetMail As New Net.Mail.MailMessage
        '        Dim MailClient As New Net.Mail.SmtpClient
        '        Dim TheseCredentials As New Net.NetworkCredential("noreply", "noreply")

        '        Try
        '            'NetMail.From = New Net.Mail.MailAddress("Do Not Reply <mail-relay@nimblett.net>")
        '            NetMail.From = New Net.Mail.MailAddress("Do Not Reply <noreply@isupportjamaica.com>")
        '            NetMail.To.Add(New Net.Mail.MailAddress(ISJ_User.Text, objRead.Item("User_First_Name") & " " & objRead.Item("User_Last_Name")))

        '            NetMail.IsBodyHtml = True
        '            NetMail.Subject = "I Support Jamaica Password Request."
        '            NetMail.Body = sMsg

        '            MailClient.Host = "mail.isupportjamaica.com"
        '            MailClient.Port = 25
        '            MailClient.UseDefaultCredentials = False
        '            MailClient.Credentials = TheseCredentials
        '            MailClient.Send(NetMail)

        '        Catch EXC As Exception
        '            Trace.Warn(EXC.Message)
        '        Finally
        '            NetMail.Dispose()
        '            NetMail = Nothing
        '            MailClient = Nothing
        '        End Try

        '        objRead.Close()
        '        objConn.Close()

        '        Login_Msg.Text = "Your request has been granted. Please check your inbox."

        '    Else
        '        Login_Msg.Text = "Incorrect Email Address or Unauthorised Access"
        '    End If
        'End If
    End Sub
End Class
