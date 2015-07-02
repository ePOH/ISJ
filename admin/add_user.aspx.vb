Imports RegexUtilities
Partial Class admin_add_user
    Inherits System.Web.UI.Page

    Dim checkemail As New RegexUtilities
    Protected Sub btn_nuser_Click(sender As Object, e As System.EventArgs) Handles btn_nuser.Click


        If checkemail.IsValidEmail(tb_email.Text) Then

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString

            Dim paramEmail As Data.SqlClient.SqlParameter
            paramEmail = New Data.SqlClient.SqlParameter("@User_Email", Data.SqlDbType.VarChar, 50)
            paramEmail.Value = tb_email.Text
            Dim myerror As String = ""
            Try

                Dim objConn As New Data.SqlClient.SqlConnection(strConn)
                ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
                Dim strSQL As String = "SELECT User_ID,User_First_Name, User_Last_Name, User_Email FROM User_Master_File WHERE (User_Email = @User_Email )"
                objConn.Open()
                Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
                objComm.Parameters.Add(paramEmail)
                Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

                If objRead.Read() Then
                    Session("msg_admin") = "User email address : " & tb_email.Text & " alreadey exist as an Administrator"
                    Response.Redirect("admin.aspx", True)
                End If

                objRead.Close()
                objConn.Close()
            Catch ex As Exception
                myerror += myerror + "444"
                myerror = ex.ToString

            End Try

            ''''
            Dim randID As String
            randID = RandomPassword.Getpassword(13)

            Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
            Dim hashedBytes As Byte()
            Dim encoder As New UTF8Encoding()
            hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(randID))
            Dim paramPwd As Data.SqlClient.SqlParameter
            paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
            paramPwd.Value = hashedBytes

            ''  Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
            Dim strSQL1 As String = "INSERT INTO User_Master_File (User_Password, User_First_Name, User_Last_Name, User_Email, User_Access_Level, User_Status) VALUES (@Password, '" & tb_fname.Text & "', '" & tb_lname.Text & "', '" & tb_email.Text & "', " & hf_u_access_level.Value & ", " & hf_u_status.Value & ")"
            'Dim strSQL1 As String = "UPDATE User_Master_File SET User_Password = @Password WHERE (Use_Emp_ID = '" & objRead.Item("Employee_ID") & "')"
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.Add(paramPwd)


            objComm1.ExecuteNonQuery()
            UserLogin.AdminLog(Session("login_email"), "INSERT", "AdminAccount", "(" & tb_fname.Text & "', '" & tb_lname.Text & "', '" & tb_email.Text & "', " & hf_u_access_level.Value & ", " & hf_u_status.Value & ")")
            objComm1.Connection.Close()
            objConn1.Close()

            Dim sMsg As String

            sMsg = "Hello " & tb_fname.Text & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "Your new password to login to the I Support Jamaica Admin is: <b>" & randID & " </b>" & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "Please do not share this password with anyone as the information displayed in the Application is private and confidential." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "Regards," & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "I Support Jamaica Admin Team." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "https://www.isupportjamaica.com/admin" & vbCrLf & "<br>"

            'Dim TheseCredentials As New Net.NetworkCredential("noreply@bluerangett.com", "n0_reply")

            Try
                EmailManager.SendEmail(sMsg, "I Support Jamaica New User Account.", tb_email.Text, tb_fname.Text & " " & tb_lname.Text, "Do Not Reply <noreply@isupportjamaica.com>", Nothing)
            Catch EXC As Exception
                Trace.Warn(EXC.Message)
            End Try

            Session("msg_admin") = "User " & tb_fname.Text & " has been added successfully."
            Response.Redirect("admin.aspx", True)
        Else
            tb_email.Focus()


        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
        hf_u_access_level.Value = 2
        hf_u_status.Value = 1
    End Sub

    
End Class
