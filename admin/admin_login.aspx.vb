Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_admin_login
    Inherits System.Web.UI.Page

    Protected Sub btn_Login_Click(sender As Object, e As System.EventArgs) Handles btn_Login.Click
		'debug code
        'Session("login") = "true"
        '               Session("login_id") = 12
        '               Session("login_fname") = "Michael"
        '               Session("login_lname") = "Watson"
        '               Session("login_email") = "m.watson@epohjm.com"
        '               Session("login_permissions") = "2"
        '               Session("login_password") = "1234"
        '               UserLogin.AdminLog(Session("login_email"), "Login", "AdminAccount", "")
        '               Session("msg_admin") = "Welcome to the I Support Jamaica Admin Panel."
        '               Response.Redirect("default.aspx", True)
        'return 
	'end debug code		
        Login_Msg.Text = ""
        If Len(login_password.Text) > 0 Then
            Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
            Dim hashedBytes As Byte()
            Dim encoder As New UTF8Encoding()
            hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(login_password.Text))
            Dim paramPwd As Data.SqlClient.SqlParameter
            paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
            paramPwd.Value = hashedBytes

            Dim paramEmail As SqlParameter
            paramEmail = New SqlParameter("@Email", Data.SqlDbType.VarChar, 50)
            paramEmail.Direction = ParameterDirection.Input
            paramEmail.Value = login_email.Text
            'sqlCmd.Parameters.Add(paramEmail)

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New Data.SqlClient.SqlConnection(strConn)
            Dim strSQL As String = "SELECT * FROM User_Master_File WHERE User_Email = @Email AND User_Password = @Password"

            objConn.Open()
            Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)

            objComm.Parameters.Add(paramPwd)
            objComm.Parameters.Add(paramEmail)

            Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

            If objRead.Read() Then
                If objRead.Item("User_Email").ToString = login_email.Text Then

                    Session("login") = "true"
                    Session("login_id") = objRead.Item("User_ID")
                    Session("login_fname") = objRead.Item("User_First_Name")
                    Session("login_lname") = objRead.Item("User_Last_Name")
                    Session("login_email") = objRead.Item("User_Email")
                    Session("login_permissions") = objRead.Item("User_Access_Level")
                    Session("login_password") = login_password.Text
                    UserLogin.AdminLog(Session("login_email"), "Login", "AdminAccount", "")
                    objRead.Close()

                    strSQL = "Update User_Master_File SET LastLoginDate=getdate() WHERE User_Email ='" + login_email.Text + "'"
                    objComm = New Data.SqlClient.SqlCommand(strSQL, objConn)
                    objComm.ExecuteNonQuery()
                    objConn.Close()

                    objConn.Close()
                    Session("msg_admin") = "Welcome to the I Support Jamaica Admin Panel."
                    Response.Redirect("default.aspx", True)
                End If
            Else
                Login_Msg.Text = "Incorrect Email Address or Password"
            End If
        Else
            'Dim paramE_ID As Data.SqlClient.SqlParameter
            'paramE_ID = New Data.SqlClient.SqlParameter("@Email", Data.SqlDbType.VarChar, 50)
            'paramE_ID.Value = login_email.Text

            'Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            'Dim objConn As New Data.SqlClient.SqlConnection(strConn)
            ''Dim strSQL As String = "SELECT * FROM User_Master_File WHERE User_Name = '" & ISJ_User.Text & "' AND ISJ_Password = @Password AND User_Status = 1"
            'Dim strSQL As String = "SELECT * FROM User_Master_File WHERE User_Email = '" & login_email.Text & "' AND User_Status = 1"

            'objConn.Open()
            'Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
            'objComm.Parameters.Add(paramE_ID)
            'Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

            'If objRead.Read() Then
            '    Dim strSQL1 As String = ""
            '    If objRead.Item("User_ID") IsNot DBNull.Value Then
            '        'If objRead.Item("Employee_ID") = objRead.Item("Use_Emp_ID") Then
            '        strSQL1 = "UPDATE User_Master_File SET User_Password = @Password WHERE (User_ID = '" & objRead.Item("User_ID") & "')"
            '        'Else
            '        'strSQL1 = "INSERT INTO User_Master_File (Use_Emp_ID, User_Password) VALUES ('" & objRead.Item("Employee_ID") & "', @Password)"
            '    End If

            '    'Randomize()
            '    'Dim sTempStr As String, iTempLength As Integer, sTempRand As String = "", randID As String
            '    'sTempStr = "abcdefghijklmnopqrstuvwxyz1234567890"
            '    'For iTempLength = 1 To 8
            '    '    sTempRand = sTempRand & Mid(sTempStr, Int(Len(sTempStr) * Rnd() + 1), 1)
            '    'Next
            '    'randID = sTempRand


            '    'Randomize()
            '    'Dim sTempStr1 As String
            '    'sTempStr1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            '    'sTempStr1 = Mid(sTempStr1, Int(Len(sTempStr1) * Rnd() + 1), 1)
            '    'Dim sTempStr2 As String
            '    'sTempStr2 = "1234567890"
            '    'sTempStr2 = Mid(sTempStr2, Int(Len(sTempStr2) * Rnd() + 1), 1)
            '    'Dim sTempStr3 As String
            '    'sTempStr3 = "][?/<~#`!@$%^&*()+=}|:;,>{"
            '    'sTempStr3 = Mid(sTempStr3, Int(Len(sTempStr3) * Rnd() + 1), 1)
            '    'Dim sTempStr As String, iTempLength As Integer, sTempRand As String = "", randID As String
            '    'sTempStr = "abcdefghijklmnopqrstuvwxyz1234567890][?/<~#`!@$%^&*()+=}|:;,>{"

            '    'For iTempLength = 1 To 13
            '    ''    sTempRand = sTempRand & Mid(sTempStr, Int(Len(sTempStr) * Rnd() + 1), 1)
            '    ''Next
            '    'randID = sTempStr1 & sTempRand & sTempStr3 & sTempStr2

            '    Dim randID As String
            '    randID = RandomPassword.Getpassword(13)

            '    Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
            '    Dim hashedBytes As Byte()
            '    Dim encoder As New UTF8Encoding()
            '    hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(randID))
            '    Dim paramPwd As Data.SqlClient.SqlParameter
            '    paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
            '    paramPwd.Value = hashedBytes

            '    'Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnBermudez").ConnectionString
            '    Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
            '    'Dim strSQL1 As String = "INSERT INTO User_Master_File (Use_Emp_ID, User_Password) VALUES ('" & objRead.Item("Employee_ID") & "', @Password)"
            '    'Dim strSQL1 As String = "UPDATE User_Master_File SET User_Password = @Password WHERE (Use_Emp_ID = '" & objRead.Item("Employee_ID") & "')"
            '    objConn1.Open()
            '    Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            '    objComm1.Parameters.Add(paramPwd)
            '    objComm1.ExecuteNonQuery()
            '    objComm1.Connection.Close()
            '    objConn1.Close()

            '    Dim sMsg As String

            '    sMsg = "Your new password to login to the ISupport Jamaica Admin is: <b>" & randID & "</b>" & vbCrLf & "<br>"
            '    sMsg += "" & vbCrLf & "<br>"
            '    sMsg += "Please do not share this password with anyone as the information displayed in the Application is private and confidential." & vbCrLf & "<br>"
            '    sMsg += "" & vbCrLf & "<br>"
            '    sMsg += "Regards," & vbCrLf & "<br>"
            '    sMsg += "" & vbCrLf & "<br>"
            '    sMsg += "ISupport Jamaica Admin." & vbCrLf & "<br>"
            '    sMsg += "https://www.isupportjamaica.com/admin" & vbCrLf & "<br>"

            '    Dim NetMail As New Net.Mail.MailMessage
            '    Dim MailClient As New Net.Mail.SmtpClient
            '    'Dim TheseCredentials As New Net.NetworkCredential("noreply@bluerangett.com", "n0_reply")

            '    Try
            '        NetMail.From = New Net.Mail.MailAddress("Do Not Reply <noreply@isupportjamaica.com>")
            '        NetMail.To.Add(New Net.Mail.MailAddress(login_email.Text, objRead.Item("User_First_Name") & " " & objRead.Item("User_Last_Name")))

            '        NetMail.IsBodyHtml = True
            '        NetMail.Subject = "I Support Jamaica Password Request."
            '        NetMail.Body = sMsg

            '        MailClient.Host = "localhost"
            '        MailClient.Port = 25
            '        MailClient.UseDefaultCredentials = True
            '        'MailClient.Credentials = TheseCredentials
            '        MailClient.Send(NetMail)

            '    Catch EXC As Exception
            '        Trace.Warn(EXC.Message)
            '    Finally
            '        NetMail.Dispose()
            '        NetMail = Nothing
            '        MailClient = Nothing
            '    End Try

            '    objRead.Close()
            '    objConn.Close()

            '    Login_Msg.Text = "Your request has been granted. Please check your inbox."

            'Else
            '    Login_Msg.Text = "Incorrect Email Address or Unauthorised Access"
            'End If
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Login_Msg.Text = Session("msg_admin")
    End Sub
End Class
