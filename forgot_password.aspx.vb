Imports ISJhelper

Partial Class forgot_password
    Inherits System.Web.UI.Page

    Protected Sub btn_forgot_password_Click(sender As Object, e As System.EventArgs) Handles btn_forgot_password.Click

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = @Donor_Email)"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)

        Dim paramEmail1 As Data.SqlClient.SqlParameter
        paramEmail1 = New Data.SqlClient.SqlParameter("@Donor_Email", Data.SqlDbType.VarChar, 50)
        paramEmail1.Value = yourEmail.Text

        objComm.Parameters.Add(paramEmail1)

        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then
            Session("d_id") = objRead.Item("Donor_ID")
            Session("d_f_name") = objRead.Item("Donor_First_Name")
            Session("d_l_name") = objRead.Item("Donor_Last_Name")
            Session("d_email") = objRead.Item("Donor_Email")
            objRead.Close()
            objConn.Close()

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
            'sTempStr = "abcdefghijklmnopqrstuvwxyz1234567890"
            'For iTempLength = 1 To 8
            '    sTempRand = sTempRand & Mid(sTempStr, Int(Len(sTempStr) * Rnd() + 1), 1)
            'Next
            'randID = sTempStr1 & sTempRand & sTempStr3 & sTempStr2
            Dim randID As String
            randID = RandomPassword.Getpassword(8)

            Dim paramTime As Data.SqlClient.SqlParameter
            paramTime = New Data.SqlClient.SqlParameter("@paramTime", Data.SqlDbType.DateTime)
            paramTime.Value = DateTime.Now

            Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
            Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_Status = 3, Donor_VID = '" & randID & "', Donor_Expiry = @paramTime WHERE (Donor_ID = " & Session("d_id") & ")"
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.Add(paramTime)
            objComm1.ExecuteNonQuery()
            objComm1.Connection.Close()
            objConn1.Close()

            Dim sLnk As String = "https://www.isupportjamaica.com/reset_password.aspx?rpid=" & randID & "&rp_email=" & yourEmail.Text
            Dim sMsg As String

            sMsg = "Hi " & Session("d_f_name") & "" & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "We recently received a request to change the password on your I Support Jamaica account." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "You can create a new password by <a href='" & sLnk & "'>clicking here</a>." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "This request expires in forty-eight (48) hours." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "<b>Disclaimer:</b> If you feel you have received this email in error and/or you have not recently requested to reset your password on our website, call I Support Jamaica customer service at +1 (888) 991 4065/6 (for Jamaica) or +1 (800) 462-9003 (from United States of America)  1 800 462 9003 (from Canada) 0 800 328 0387 (United Kingdom)." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "I Support Jamaica Team." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "https://www.isupportjamaica.com/" & vbCrLf & "<br>"

            'Dim TheseCredentials As New Net.NetworkCredential("noreply@bluerangett.com", "n0_reply")

            Try

                EmailManager.SendEmail(sMsg, "I Support Jamaica email reset confirmation.", Session("d_email"), Session("d_f_name") & " " & Session("d_l_name"), "I Support Jamaica Team <ISupportJamaica@jnbs.com>", Nothing)

            Catch EXC As Exception
                Trace.Warn(EXC.Message)
            End Try

            Session("d_login_msg") = Session("d_f_name") & ", please validate your request by accessing your email."
            Response.Redirect("login.aspx", True)

        Else
            Session("d_login_msg") = "No user exist for entered email address."
            Response.Redirect("login.aspx", True)
        End If

        

        

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        ''  btn_help.Enabled = False
        If Len(Session("d_email")) > 0 Then
            yourEmail.Text = Session("d_email")
            yourEmailAgain.Text = Session("d_email")
        End If
        'lblerrormessage.Text = MessageFormatter.GetFormattedErrorMessage(Session("d_login_msg"))
        Session.Remove("d_login_msg")
    End Sub
End Class
