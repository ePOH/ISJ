Imports System.Web
Imports System.Web.HttpRequestWrapper
Partial Class admin_reset_admin_password
    Inherits System.Web.UI.Page

    Protected Sub btn_muser_Click(sender As Object, e As System.EventArgs) Handles btn_muser.Click

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT User_First_Name, User_Last_Name, User_Email FROM User_Master_File WHERE (User_ID = '" & DDL_Users.SelectedValue & "')"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then
            Session("u_f_name") = objRead.Item("User_First_Name")
            Session("u_l_name") = objRead.Item("User_Last_Name")
            Session("u_email") = objRead.Item("User_Email")
        End If

        objRead.Close()
        objConn.Close()

        'Randomize()
        'Dim sTempStr As String, iTempLength As Integer, sTempRand As String = "", randID As String
        'sTempStr = "abcdefghijklmnopqrstuvwxyz1234567890"
        'For iTempLength = 1 To 8
        '    sTempRand = sTempRand & Mid(sTempStr, Int(Len(sTempStr) * Rnd() + 1), 1)
        'Next
        'randID = sTempRand

        'Randomize()
        'Dim sTempStr1 As String
        'sTempStr1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        'sTempStr1 = Mid(sTempStr1, Int(Len(sTempStr1) * Rnd() + 1), 1)
        'Dim sTempStr2 As String
        'sTempStr2 = "1234567890"
        'sTempStr2 = Mid(sTempStr2, Int(Len(sTempStr2) * Rnd() + 1), 1)
        'Dim sTempStr3 As String
        'sTempStr3 = "][?/<~#`!@$%^&*()+=}|:;,>{"
        'sTempStr3 = Mid(sTempStr3, Int(Len(sTempStr3) * Rnd() + 1), 1)
        'Dim sTempStr As String, iTempLength As Integer, sTempRand As String = "", randID As String
        'sTempStr = "abcdefghijklmnopqrstuvwxyz1234567890][?/<~#`!@$%^&*()+=}|:;,>{"

        'For iTempLength = 1 To 13
        '    sTempRand = sTempRand & Mid(sTempStr, Int(Len(sTempStr) * Rnd() + 1), 1)
        'Next
        'randID = sTempStr1 & sTempRand & sTempStr3 & sTempStr2

        Dim randID As String
        randID = RandomPassword.Getpassword(13)

        Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
        Dim hashedBytes As Byte()
        Dim encoder As New UTF8Encoding()
        hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(randID))
        Dim paramPwd As Data.SqlClient.SqlParameter
        paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
        paramPwd.Value = hashedBytes

        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
        Dim strSQL1 As String = "UPDATE User_Master_File SET User_Password = @Password WHERE (User_ID = '" & DDL_Users.SelectedValue & "')"
        objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        objComm1.Parameters.Add(paramPwd)
        objComm1.ExecuteNonQuery()
        'Dim IPaddress As String = "0.0.0.0"

        '' do somthing with reqBase.Cookies
        'Dim _httpRequest As HttpRequestBase
        '_httpRequest = HttpContext.Current
        'Dim instance As HttpRequestWrapper
        '_httpRequest = instance
        'IPaddress = RequestHelpers.GetClientIpAddress(_httpRequest)
        UserLogin.AdminLog(Session("login_email"), "UPDATE", "User_Master_File", "Reset User Password  for User_ID" & DDL_Users.SelectedValue)
        objComm1.Connection.Close()
        objConn1.Close()

        Dim sMsg As String

        sMsg = "Hello " & Session("u_f_name") & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"
        sMsg += "Your login password for the I Support Jamaica Admin Panel has been reset." & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"
        sMsg += "Your new password is: <b>" & randID & "</b>" & vbCrLf & "<br>"
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

            EmailManager.SendEmail(sMsg, "I Support Jamaica Password Reset.", Session("u_email"), Session("u_f_name") & " " & Session("u_l_name"), "Do Not Reply <noreply@isupportjamaica.com>", Nothing)

        Catch EXC As Exception
            Trace.Warn(EXC.Message)
        End Try

        Session("msg_admin") = "Password reset successful for " & Session("u_f_name") & " " & Session("u_l_name")
        Response.Redirect("admin.aspx", True)

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
