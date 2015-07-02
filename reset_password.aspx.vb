
Partial Class reset_password
    Inherits System.Web.UI.Page

    Protected Sub btn_rpassword_Click(sender As Object, e As System.EventArgs) Handles btn_rpassword.Click

            Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
            Dim hashedBytes As Byte()
            Dim encoder As New UTF8Encoding()
            hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(tb_npassword1.Text))

        Dim paramPwd As Data.SqlClient.SqlParameter
            paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
        paramPwd.Value = hashedBytes

        Dim paramDonor_VID As Data.SqlClient.SqlParameter
        paramDonor_VID = New Data.SqlClient.SqlParameter("@Donor_VID", Data.SqlDbType.VarChar, 64)
        paramDonor_VID.Value = Request.QueryString("rpid")


        Dim paramEmail As Data.SqlClient.SqlParameter
        paramEmail = New Data.SqlClient.SqlParameter("@Donor_Email", Data.SqlDbType.VarChar, 50)
        paramEmail.Value = Request.QueryString("rp_email")

        

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_Password = @Password, Donor_Status = 1, Donor_VID = NULL WHERE (Donor_VID = @Donor_VID) AND (Donor_Email = @Donor_Email)"


            objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        objComm1.Parameters.Add(paramDonor_VID)
        objComm1.Parameters.Add(paramEmail)
            objComm1.Parameters.Add(paramPwd)
        objComm1.ExecuteNonQuery()

        Dim strSqlCredential As String = "UPDATE OriginalCredentialContainer SET Donor_Password='" + tb_npassword1.Text + "',Update_Date=getdate() WHERE Donor_Email='" + Request.QueryString("rp_email") + "'"
        Dim objComm2 As New Data.SqlClient.SqlCommand(strSqlCredential, objConn1)
        objComm2.ExecuteNonQuery()

            objComm1.Connection.Close()
            objConn1.Close()
            Session("d_login_msg") = "Your Password has been changed."
            Response.Redirect("login.aspx", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Return
        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT * FROM Donor_Master_File WHERE (Donor_VID = @Donor_VID) AND (Donor_Email = @Donor_Email)"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        ' '' https://www.isupportjamaica.com/reset_password.aspx?rpid=L/O@LcTkB9&rp_email=andrewmstpsenior@gmail.com
        Dim paramDonor_VID As Data.SqlClient.SqlParameter
        paramDonor_VID = New Data.SqlClient.SqlParameter("@Donor_VID", Data.SqlDbType.VarChar, 64)
        paramDonor_VID.Value = Request.QueryString("rpid")


        Dim paramEmail As Data.SqlClient.SqlParameter
        paramEmail = New Data.SqlClient.SqlParameter("@Donor_Email", Data.SqlDbType.VarChar, 50)
        paramEmail.Value = Request.QueryString("rp_email")

        objComm.Parameters.Add(paramDonor_VID)
        objComm.Parameters.Add(paramEmail)


        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then
            If DateDiff(DateInterval.Minute, objRead.Item("Donor_Expiry"), DateTime.Now) <= 2880 Then
                lb_session_name.Text = "Reset Password for " & objRead.Item("Donor_First_Name") & " " & objRead.Item("Donor_Last_Name")
                HL_F_Pword.Visible = False
                objRead.Close()
                objConn.Close()
            Else
                lb_session_name.Text = "Cannot reset Password for " & objRead.Item("Donor_First_Name") & " " & objRead.Item("Donor_Last_Name")
                Password_Change_Msg.Text = "Your request has expired!"
                HL_F_Pword.Visible = True
                btn_rpassword.Enabled = False
                objRead.Close()
                objConn.Close()
            End If
        Else
            lb_session_name.Text = "Cannot reset Password."
            Password_Change_Msg.Text = "Your request has expired!"
            HL_F_Pword.Visible = True
            btn_rpassword.Enabled = False
        End If
    End Sub
End Class
