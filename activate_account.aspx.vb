Imports System.Data
Imports System.Data.SqlClient

Partial Class activate_account
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Try
            If Request.QueryString("aa_email") Is Nothing Or String.IsNullOrEmpty(Request.QueryString("aa_email")) Or String.IsNullOrWhiteSpace(Request.QueryString("aa_email")) Or _
                Request.QueryString("aaid") Is Nothing Or String.IsNullOrEmpty(Request.QueryString("aaid")) Or String.IsNullOrWhiteSpace(Request.QueryString("aaid")) Then

                Session("d_login_msg") = "There is an error with the Data"
                Response.Redirect("login.aspx", True)
            End If
        Catch ex As Exception
            Session("d_login_msg") = "There is an error with the Data " & Request.QueryString("aa_email") & " " & Request.QueryString("aa_email")
            Response.Redirect("login.aspx", True)
        End Try

        If UserLogin.Isemailexist(Request.QueryString("aa_email")) = "False" Then
            Session("d_login_msg") = "User Account does not does not exists. <br/>Please Create an account"
            Response.Redirect("login.aspx", True)
        End If

        If UserLogin.IsAccountValidated(Request.QueryString("aa_email")) = "true" Then
            Session("d_login_msg") = "You have already validated your account. <br/>Please login "
            Response.Redirect("login.aspx", True)
        End If

        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
        'Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_Status = 1, Donor_VID = NULL WHERE (Donor_VID = '" & Request.QueryString("aaid") & "') AND (Donor_Email = '" & Request.QueryString("aa_email") & "')"

        Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_Status = 1, Donor_VID = NULL, IsApproved = 1 WHERE (Donor_VID = @Donor_VID ) AND (Donor_Email =@aa_email )"


        Dim paramDonor_VID As SqlParameter
        paramDonor_VID = New SqlParameter("@Donor_VID", SqlDbType.VarChar, 64)
        paramDonor_VID.Direction = ParameterDirection.Input
        paramDonor_VID.Value = Request.QueryString("aaid")


        Dim paramEmail As SqlParameter
        paramEmail = New SqlParameter("@aa_email", Data.SqlDbType.VarChar, 50)
        paramEmail.Direction = ParameterDirection.Input
        paramEmail.Value = Request.QueryString("aa_email")


        Try
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)

            objComm1.Parameters.Add(paramEmail)
            objComm1.Parameters.Add(paramDonor_VID)
            'objComm1.ExecuteNonQuery()
            Dim count As Integer = objComm1.ExecuteNonQuery()
            If count > 0 Then
                Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn As New Data.SqlClient.SqlConnection(strConn)
                Dim strSQL As String = "SELECT * FROM Donor_Master_File WHERE (Donor_Email = @aa_email )"
                objConn.Open()
                Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)

                Dim paramEmail1 As SqlParameter
                paramEmail1 = New SqlParameter("@aa_email", Data.SqlDbType.VarChar, 50)
                paramEmail1.Direction = ParameterDirection.Input
                paramEmail1.Value = Request.QueryString("aa_email")
                objComm.Parameters.Add(paramEmail1)

                Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

                If objRead.Read() Then
                    Session("d_login") = "true"
                    Session("d_login_id") = objRead.Item("Donor_ID")
                    Session("d_login_fname") = objRead.Item("Donor_First_Name")
                    Session("d_login_lname") = objRead.Item("Donor_Last_Name")
                    Session("d_login_email") = objRead.Item("Donor_Email")
                    Session("d_login_password") = "" 'objRead.Item("Donor_Password")
                    Session("d_login_bio") = objRead.Item("Donor_FB_Bio")
                    Session("d_picture") = objRead.Item("Donor_FB_Photo")
                    objRead.Close()
                    objConn.Close()
                    Response.Redirect("dashboard.aspx", True)
                End If
                Response.Redirect("login.aspx", True)

            Else
                Session("d_login_msg") = "Your request cannot be validated!..."
                Response.Redirect("login.aspx", True)
            End If
            objComm1.Connection.Close()
        Catch EXC As Exception
            Trace.Warn(EXC.Message)
        Finally
            objConn1.Close()
        End Try
        Response.Redirect("login.aspx", True)
    End Sub
End Class
