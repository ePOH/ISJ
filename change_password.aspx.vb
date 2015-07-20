
Partial Class change_password
    Inherits System.Web.UI.Page

    Protected Sub btn_cpassword_Click(sender As Object, e As System.EventArgs) Handles btn_cpassword.Click
        Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
        Dim hashedBytes As Byte()
        Dim encoder As New UTF8Encoding()
        hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(tb_cpassword.Text))
        Dim oldhashedBytes As Byte()
        'BE sure that password store in session is Byte(), if it is string need to be encoded again
        If Not Session("d_login_password") Is Nothing Then
            If TypeOf Session("d_login_password") Is Byte() Then
                oldhashedBytes = CType(Session("d_login_password"), Byte())
            ElseIf TypeOf Session("d_login_password") Is String Then
                oldhashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(Session("d_login_password").ToString()))
            End If
        End If


        If hashedBytes.SequenceEqual(oldhashedBytes) Then

            Dim md5Hasher1 As New System.Security.Cryptography.MD5CryptoServiceProvider()
            Dim hashedBytesNew As Byte()
            Dim encoder1 As New UTF8Encoding()
            hashedBytesNew = md5Hasher1.ComputeHash(encoder1.GetBytes(tb_npassword1.Text))
            Dim paramPwd As Data.SqlClient.SqlParameter
            paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
            paramPwd.Value = hashedBytesNew

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
            Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_Password = @Password WHERE (Donor_ID = '" & Session("d_login_id") & "')"
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.Add(paramPwd)
            objComm1.ExecuteNonQuery()
            objComm1.Connection.Close()
            objConn1.Close()
            Session("d_login_password") = hashedBytesNew
            Session("msg_donor") = "Your Password has been changed."
            Response.Redirect("dashboard.aspx", True)
        Else
            Password_Change_Msg.Text = "Current Password Incorrect! Your Password has not been changed."
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Len(Session("d_login_id")) > 0 Then
            If Not IsDBNull(Session("d_login_fname")) Then
                lb_session_name.Text = "Change Password for " & Session("d_login_fname") & " " & Session("d_login_lname")
                'Else
                'lb_session_name.Visible = False
            End If
        Else
            Response.Redirect("default.aspx", True)
        End If
    End Sub
End Class
