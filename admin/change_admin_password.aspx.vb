
Partial Class admin_change_admin_password
    Inherits System.Web.UI.Page

    Protected Sub btn_cpassword_Click(sender As Object, e As System.EventArgs) Handles btn_cpassword.Click
        If Session("login_password") = tb_cpassword.Text Then

            Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
            Dim hashedBytes As Byte()
            Dim encoder As New UTF8Encoding()
            hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(tb_npassword1.Text))
            Dim paramPwd As Data.SqlClient.SqlParameter
            paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
            paramPwd.Value = hashedBytes

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
            Dim strSQL1 As String = "UPDATE User_Master_File SET User_Password = @Password WHERE (User_ID = '" & Session("login_id") & "')"
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.Add(paramPwd)
            objComm1.ExecuteNonQuery()
            UserLogin.AdminLog(Session("login_email"), "UPDATE", "User_Master_File", "User_Password : ")
            objComm1.Connection.Close()
            objConn1.Close()
            Session("login_password") = tb_npassword1.Text
            Session("msg_admin") = "Your Password has been changed."
            Response.Redirect("admin.aspx", True)
        Else
            Password_Change_Msg.Text = "Current Password Incorrect! Your Password has not been changed."
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
        lb_session_name.Text = "Change Password for " & Session("login_fname") & " " & Session("login_lname")
    End Sub
End Class
