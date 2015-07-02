Imports System.IO
Imports System.Xml
Imports System.Net
Imports Facebook
Imports Facebook.Web
Imports ISJhelper
Imports RegexUtilities

Partial Class _controls_userbanner
    Inherits System.Web.UI.UserControl

   
    'Protected Sub login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles login.Click

    '    'Dim util As New RegexUtilities()


    '    'If util.IsValidEmail(head_login_email.Text) = True AndAlso Len(head_login_password.Text) > 7 Then
    '    '    Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
    '    '    Dim hashedBytes As Byte()
    '    '    Dim encoder As New UTF8Encoding()
    '    '    hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(head_login_password.Text))
    '    '    Dim paramPwd As Data.SqlClient.SqlParameter
    '    '    paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
    '    '    paramPwd.Value = hashedBytes

    '    '    Dim paramEmail As Data.SqlClient.SqlParameter
    '    '    paramEmail = New Data.SqlClient.SqlParameter("@DEmail", Data.SqlDbType.VarChar, 50)
    '    '    paramEmail.Value = head_login_email.Text

    '    '    Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
    '    '    Dim objConn As New Data.SqlClient.SqlConnection(strConn)
    '    '    ''Dim strSQL As String = "SELECT * FROM Donor_Master_File WHERE Donor_Email = '" & head_login_email.Text & "' AND Donor_Password = @Password AND Donor_Status = 1"
    '    '    Dim strSQL As String = "SELECT * FROM Donor_Master_File WHERE Donor_Email = @DEmail  AND Donor_Password = @Password AND Donor_Status = 1"
    '    '    objConn.Open()
    '    '    Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
    '    '    objComm.Parameters.Add(paramPwd)
    '    '    objComm.Parameters.Add(paramEmail)
    '    '    Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

    '    '    If objRead.Read() Then
    '    '        If objRead.Item("Donor_Email").ToString = head_login_email.Text Then
    '    '            Session("d_login") = "true"
    '    '            Session("d_login_id") = objRead.Item("Donor_ID")
    '    '            Session("d_login_fname") = objRead.Item("Donor_First_Name")
    '    '            Session("d_login_lname") = objRead.Item("Donor_Last_Name")
    '    '            Session("d_login_email") = objRead.Item("Donor_Email")
    '    '            Session("d_login_password") = head_login_password.Text
    '    '            Session("d_login_bio") = objRead.Item("Donor_FB_Bio")
    '    '            Session("d_picture") = objRead.Item("Donor_FB_Photo")
    '    '            objRead.Close()
    '    '            objConn.Close()
    '    '            Response.Redirect("dashboard.aspx", True)
    '    '        End If
    '    '    Else
    '    '        Session("d_email") = head_login_email.Text
    '    '        ''Session("d_login_msg") = "Please try again. Incorrect email or password."
    '    '        Session("d_login_msg") = "Incorrect Email or Password."
    '    '        Response.Redirect("login.aspx", True)
    '    '    End If
    '    'Else
    '    '    Session("d_login_msg") = "Incorrect Email or Password."
    '    '    Response.Redirect("login.aspx", True)
    '    'End If
    'End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("d_login") = "true" Then
            ''hl_logout.Visible = True
            openLogin.Visible = False
            Submenu.Visible = True
            Bestviewed.Visible = False
            lblname.Text = Session("d_login_fname") & "  " & Session("d_login_lname")
        Else
            '' hl_logout.Visible = False
            openLogin.Visible = True
            Bestviewed.Visible = True
            Submenu.Visible = False
        End If

    End Sub

    'Protected Sub logout_Click(sender As Object, e As System.EventArgs) Handles logout.Click

    '    If Len(Session("d_fid")) > 0 Then
    '        Dim redir As String = "https://www.facebook.com/logout.php?access_token="
    '        redir += Session("gAT")
    '        redir += "&confirm=1&next=http://www.isupportjamaica.com/default.aspx"
    '        Session.Abandon()
    '        Response.Redirect(redir, True)
    '    Else
    '        Session.Abandon()
    '        Response.Redirect("default.aspx", True)
    '    End If

    'End Sub

    'Protected Sub btn_dash_Click(sender As Object, e As System.EventArgs) Handles btn_dash.Click
    '    Response.Redirect("dashboard.aspx", True)
    'End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As System.EventArgs) Handles LinkButton1.Click
        If Len(Session("d_fid")) > 0 Then
            Dim redir As String = "https://www.facebook.com/logout.php?access_token="
            redir += Session("gAT")
            redir += "&confirm=1&next=http://www.isupportjamaica.com/default.aspx"
            Session.Abandon()
            Response.Redirect(redir, True)
        Else
            Session.Abandon()
            Response.Redirect("default.aspx", True)
        End If
    End Sub

    Protected Sub Getuseremail(sender As Object, e As System.EventArgs)

        RegexUtilities.SendEmail(txtHeademail.Text)


    End Sub
End Class
