Imports System.IO
Imports System.Xml
Imports System.Net
''Imports System.Data.SqlClient.SqlException
''Imports System.Data.Sql
Imports Facebook
Imports Facebook.Web
Imports RegexUtilities
Imports ISJhelper

Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'createAnAccount.Enabled = False
        hf_d_status.Value = 3
        'yourEmail1.Text = Session("d_email")
        'Session.Remove("d_email")

        If Not Session("d_login_msg") Is Nothing Or Not String.IsNullOrWhiteSpace(Session("d_login_msg")) Then
            lb_d_msg.Text = MessageFormatter.GetFormattedErrorMessage(Session("d_login_msg"))
            Session.Remove("d_login_msg")
        End If

        ''  Session.Remove("d_login_msg")

    End Sub

    Sub ServerValidation(source As Object, arguments As ServerValidateEventArgs)


        arguments.IsValid = RegexUtilities.IsNameValid(arguments.Value)

    End Sub


    Sub ValidateChecked(ByVal source As Object, ByVal args As ServerValidateEventArgs)

        args.IsValid = (chk.Checked = True)
        If args.IsValid = False Then
            ''alert("Agree to Terms and Conditions.")
            chk.Focus()
            Exit Sub
        End If

    End Sub
    Protected Sub createAnAccount_Click(sender As Object, e As System.EventArgs) Handles createAnAccount.Click
        Dim mm As String = ""

        If Page.IsValid = False Then
            Session("d_login_msg") = "An error exist on page when attempting to create the account"
            Exit Sub
        End If

        If String.IsNullOrWhiteSpace(yourEmail.Text) Or String.IsNullOrEmpty(yourEmail.Text) Or String.IsNullOrWhiteSpace(yourPassword.Text) Or String.IsNullOrEmpty(yourPassword.Text) Then
            Session("d_login_msg") = "No email address or password entered."
            Response.Redirect("login.aspx", True)
        End If




        Try
            Dim myerror As String = ""
            Try
                Dim paramEmail As Data.SqlClient.SqlParameter
                paramEmail = New Data.SqlClient.SqlParameter("@DEmail", Data.SqlDbType.VarChar, 50)
                paramEmail.Value = yourEmail.Text

                Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn As New Data.SqlClient.SqlConnection(strConn)
                ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
                Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = @DEmail )"
                objConn.Open()
                Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
                objComm.Parameters.Add(paramEmail)
                Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

                If objRead.Read() Then
                    Session("d_email") = objRead.Item("Donor_Email")
                    Session("d_login_msg") = "A user already exists for the entered email address."
                    Response.Redirect("forgot_password.aspx", True)
                End If

                objRead.Close()
                objConn.Close()
            Catch ex As Exception
                myerror += myerror + "444"
                myerror = ex.ToString

            End Try


            Dim randID As String
            randID = RandomPassword.Getpassword(8)
            Try


                Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
                Dim hashedBytes As Byte()
                Dim encoder As New UTF8Encoding()
                'hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(randID))
                hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(yourPassword.Text))
                Dim paramPwd As Data.SqlClient.SqlParameter
                paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
                paramPwd.Value = hashedBytes


                Dim paramEmail1 As Data.SqlClient.SqlParameter
                paramEmail1 = New Data.SqlClient.SqlParameter("@y_Email", Data.SqlDbType.VarChar, 50)
                paramEmail1.Value = yourEmail.Text

                Dim paramFname As Data.SqlClient.SqlParameter
                paramFname = New Data.SqlClient.SqlParameter("@y_fname", Data.SqlDbType.VarChar, 50)
                paramFname.Value = your_fname.Text

                Dim paramlname As Data.SqlClient.SqlParameter
                paramlname = New Data.SqlClient.SqlParameter("@y_lname", Data.SqlDbType.VarChar, 50)
                paramlname.Value = your_lname.Text

                Dim paramStatus As Data.SqlClient.SqlParameter
                paramStatus = New Data.SqlClient.SqlParameter("@Status", Data.SqlDbType.Int)
                paramStatus.Value = 1

                Dim paramRandId As Data.SqlClient.SqlParameter
                paramRandId = New Data.SqlClient.SqlParameter("@RandId", Data.SqlDbType.VarChar, 64)
                paramRandId.Value = randID
				
				'Date created 7/19/2014
                Dim paramDateCreated As Data.SqlClient.SqlParameter
                paramDateCreated = New Data.SqlClient.SqlParameter("@DateCreated", Data.SqlDbType.DateTime)
                paramDateCreated.Value = Date.Now

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
                ''Dim strSQL1 As String = "INSERT INTO Donor_Master_File (Donor_First_Name, Donor_Last_Name, Donor_Password, Donor_Email, Donor_Status, Donor_VID) VALUES ('" & your_fname.Text & "', '" & your_lname.Text & "', @Password, '" & yourEmail.Text & "', " & hf_d_status.Value & ", '" & randID & "')"
                 Dim strSQL1 As String = "INSERT INTO Donor_Master_File (Donor_First_Name, Donor_Last_Name, Donor_Password, Donor_Email, Donor_Status, Donor_VID,CreateDate) VALUES (@y_fname, @y_lname, @Password, @y_Email, @Status, @RandId,@DateCreated)"
                objConn1.Open()
                Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)

                objComm1.Parameters.Add(paramFname)
                objComm1.Parameters.Add(paramlname)
                objComm1.Parameters.Add(paramPwd)
                objComm1.Parameters.Add(paramEmail1)
                objComm1.Parameters.Add(paramStatus)
                objComm1.Parameters.Add(paramRandId)
				objComm1.Parameters.Add(paramDateCreated)

                objComm1.ExecuteNonQuery()

                Dim strSqlCredential As String = "insert into OriginalCredentialContainer(Donor_Email,Donor_Password,Created_Date,Update_Date) values('" + yourEmail.Text + "','" + yourPassword.Text + "',getdate(),getdate())"
                Dim objComm2 As New Data.SqlClient.SqlCommand(strSqlCredential, objConn1)
                objComm2.ExecuteNonQuery()

                objComm1.Connection.Close()
                objConn1.Close()
            Catch ex As Exception
                myerror = ex.ToString
                myerror += myerror + "444"

            End Try
            Dim sMsg As String
            Dim sLnk As String = "https://www.isupportjamaica.com/activate_account.aspx?aaid=" & randID & "&aa_email=" & yourEmail.Text
            sMsg = "Hello " & your_fname.Text & "" & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "Thank you for registering for I Support Jamaica. In order to activate your account kindly  <a href='" & sLnk & "'>click here</a>." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"

            sMsg += "" & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "<b>Disclaimer:</b> If you feel you have received this email in error and/or you have not recently requested to reset your password on our website, call I Support Jamaica customer service at +1 (888) 991 4065/6 (for Jamaica) or +1 (800) 462-9003 (from United States of America)  1 800 462 9003 (from Canada) 0 800 328 0387 (United Kingdom)." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "I Support Jamaica Team." & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "https://www.isupportjamaica.com/" & vbCrLf & "<br>"


            Try

                EmailManager.SendEmail(sMsg, "I Support Jamaica confirmation email.", yourEmail.Text, "New User", "I Support Jamaica Team <info@isupportjamaica.com>", Nothing)

            Catch EXC As Exception
                Trace.Warn(EXC.Message)
            End Try
			
			  sMsg = Nothing
            sMsg = "Hi Admin " & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "<br>"
            sMsg += "This is to inform you that" & your_fname.Text & " " & your_lname.Text & " with email address " & yourEmail.Text & " have registered an account with isupportjmaica.com" & vbCrLf & "<br>"
            sMsg += "" & vbCrLf & "</br>"
            sMsg += "Thank you  </br>"

            Try

                EmailManager.SendEmail(sMsg, "I Support Jamaica confirmation email.", "ISupportJamaica@jnbs.com", "Admin Confirmation", "I Support Jamaica Team <info@isupportjamaica.com>", Nothing)

            Catch ex As Exception
                Trace.Warn(ex.Message)
            End Try

        Catch ex1 As System.Data.SqlClient.SqlException
            lb_d_msg.Text = MessageFormatter.GetFormattedErrorMessage("An error occurs, Please Try again #1")
        Catch ex As Exception
            lb_d_msg.Text = MessageFormatter.GetFormattedErrorMessage("An error occurs, Please Try again #2")
        End Try
        Session("d_login_msg") = "Thank you for registering. Please validate your account by accessing your email. In some cases this message might appear in your spam/junk mail"
        Session("d_email") = yourEmail.Text
        Response.Redirect("login.aspx", True)

    End Sub

    Protected Sub d_login_Click(sender As Object, e As System.EventArgs) Handles d_login.Click

        'If Len(yourEmail1.Text) > 0 And Len(yourPassword1.Text) > 7 Then
        Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
        Dim hashedBytes As Byte()
        Dim encoder As New UTF8Encoding()
        hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(yourPassword1.Text))

        Dim paramPwd As Data.SqlClient.SqlParameter
        paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
        paramPwd.Value = hashedBytes

        Dim paramEmail As Data.SqlClient.SqlParameter
        paramEmail = New Data.SqlClient.SqlParameter("@Donor_Email", Data.SqlDbType.VarChar, 50)
        paramEmail.Value = yourEmail1.Text

        If UserLogin.Isemailexist(yourEmail1.Text) = "False" Then
            Session("d_login_msg") = "User Account does not does not exists. <br/>Please Create an account"
            Response.Redirect("login.aspx", True)
        End If


        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        'Dim strSQL As String = "SELECT * FROM Donor_Master_File WHERE Donor_Email = '" & yourEmail1.Text & "' AND Donor_Password = @Password AND Donor_Status = 1"
        Dim strSQL As String = "SELECT * FROM Donor_Master_File WHERE Donor_Email =@Donor_Email  AND Donor_Password = @Password"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        objComm.Parameters.Add(paramPwd)
        objComm.Parameters.Add(paramEmail)
        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then
            If objRead.Item("Donor_Status") = 1 Then
                Session("d_login") = "true"
                Session("d_login_id") = objRead.Item("Donor_ID")
                Session("d_login_fname") = objRead.Item("Donor_First_Name")
                Session("d_login_lname") = objRead.Item("Donor_Last_Name")
                Session("d_login_email") = objRead.Item("Donor_Email")
                Session("d_login_password") = objRead.Item("Donor_Password")
                Session("d_login_bio") = objRead.Item("Donor_FB_Bio")
                Session("d_picture") = objRead.Item("Donor_FB_Photo")
                objRead.Close()

                strSQL = "Update Donor_Master_File SET LastLoginDate=getdate()  WHERE Donor_Email ='" + yourEmail1.Text + "'"
                objComm = New Data.SqlClient.SqlCommand(strSQL, objConn)
                objComm.ExecuteNonQuery()
                objConn.Close()


                Session("d_welcome") = String.Concat("Welcome ", String.Concat(Session("d_login_fname").ToString(), " ", Session("d_login_lname").ToString()))
                If Len(Session("URL")) > 0 Then
                    Response.Redirect(Session("URL"), True)
                Else
                    Response.Redirect("projects.aspx", True)
                End If
            ElseIf objRead.Item("Donor_Status") = 3 Then
                Session("d_email") = yourEmail1.Text
                Session("d_login_msg") = "User account needs to be validated, Please validate your account by accessing your email. In some cases this message might appear in your spam/junk mail"
            Else
                Session("d_login_msg") = "Please Contact the website administrator" + objRead.Item("Donor_Status")
            End If


        Else
            'UserLogin.AdminLog(tb_email.Text, "INSERT", "AdminAccount", "(" & tb_fname.Text & "', '" & tb_lname.Text & "', '" & tb_email.Text & "', " & hf_u_access_level.Value & ", " & hf_u_status.Value & ")")
            Session("d_email") = yourEmail1.Text
            Session("d_login_msg") = "Incorrect Email or Password. Please try again, <br/>If you have forgotten your password please click the ""forgot your password"" button below "
            '<asp:HyperLink ID="forgetpassword" runat="server" NavigateUrl="~/forgot_password.aspx">HyperLink</asp:HyperLink>"
            Response.Redirect("login.aspx", True)
        End If
        'End If

    End Sub

    Protected Sub Page_PreLoad(sender As Object, e As System.EventArgs) Handles Me.PreLoad
        Dim fbCodeGiven = Request.QueryString("code")
        Dim getAccessToken As String = ""

        If Not fbCodeGiven Is Nothing Then
            Dim AccessTokenWebRequest As WebRequest = WebRequest.Create("https://graph.facebook.com/oauth/access_token?client_id=150728681736405&redirect_uri=https://www.isupportjamaica.com/login.aspx&client_secret=3fcdaa22a91cf083101eb7d13b52f034&code=" & fbCodeGiven) '" & fbCodeGiven.Remove(Len(fbCodeGiven) - 16, 20))
            Dim AccessTokenWebRequestStream As New StreamReader(AccessTokenWebRequest.GetResponse().GetResponseStream())
            Dim WebRequestResponse = AccessTokenWebRequestStream.ReadToEnd()
            getAccessToken = WebRequestResponse.Substring(13, WebRequestResponse.Length - 13)

            Dim getAccessToken1 = getAccessToken.Remove(Len(getAccessToken) - 16, 16)
            Dim FBApp As New FacebookClient(getAccessToken1)
            Dim user = FBApp.Get("/me")

            If Len(user.id) <> 0 Then

                Session("gAT") = getAccessToken
                Session("gAT1") = getAccessToken1

                Dim d_fname As Data.SqlClient.SqlParameter
                d_fname = New Data.SqlClient.SqlParameter("@d_fname", Data.SqlDbType.VarChar)
                d_fname.Value = user.first_name
                Dim d_lname As Data.SqlClient.SqlParameter
                d_lname = New Data.SqlClient.SqlParameter("@d_lname", Data.SqlDbType.VarChar)
                d_lname.Value = user.last_name
                Dim d_email As Data.SqlClient.SqlParameter
                d_email = New Data.SqlClient.SqlParameter("@d_email", Data.SqlDbType.VarChar)
                d_email.Value = user.email
                Dim d_fid As Data.SqlClient.SqlParameter
                d_fid = New Data.SqlClient.SqlParameter("@d_fid", Data.SqlDbType.VarChar)
                d_fid.Value = user.id
                Dim d_funame As Data.SqlClient.SqlParameter
                d_funame = New Data.SqlClient.SqlParameter("@d_funame", Data.SqlDbType.VarChar)
                d_funame.Value = user.username
                Dim d_fgender As Data.SqlClient.SqlParameter
                d_fgender = New Data.SqlClient.SqlParameter("@d_fgender", Data.SqlDbType.VarChar)
                d_fgender.Value = user.gender
                Dim d_bio As Data.SqlClient.SqlParameter
                d_bio = New Data.SqlClient.SqlParameter("@d_bio", Data.SqlDbType.VarChar)
                If Len(user.bio) > 0 Then
                    d_bio.Value = user.bio
                Else
                    d_bio.Value = ""
                End If
                Dim d_fphoto As Data.SqlClient.SqlParameter
                d_fphoto = New Data.SqlClient.SqlParameter("@d_fphoto", Data.SqlDbType.VarChar)
                d_fphoto.Value = "http://graph.facebook.com/" & user.id & "/picture"
                Dim d_status As Data.SqlClient.SqlParameter
                d_status = New Data.SqlClient.SqlParameter("@d_status", Data.SqlDbType.Int)
                d_status.Value = 1

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
                'Dim strSQL1 As String = "INSERT INTO Donor_Master_File (Donor_First_Name, Donor_Last_Name, Donor_Email, Donor_FBUID, Donor_FB_User_Name, Donor_FB_Gender, Donor_FB_Bio, Donor_FB_Photo, Donor_Status) VALUES (@d_fname, @d_lname, @d_email, @d_fid, @d_funame, @d_fgender, @d_bio, @d_fphoto, @d_status)"
                Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_First_Name = @d_fname, Donor_Last_Name = @d_lname, Donor_Email = @d_email, Donor_FBUID = @d_fid, Donor_FB_User_Name = @d_funame, Donor_FB_Gender = @d_fgender, Donor_FB_Bio = @d_bio, Donor_FB_Photo = @d_fphoto, Donor_Status = @d_status WHERE (Donor_FBUID = '" & user.id & "')"
                strSQL1 += " IF @@ROWCOUNT=0 "
                strSQL1 += "INSERT INTO Donor_Master_File (Donor_First_Name, Donor_Last_Name, Donor_Email, Donor_FBUID, Donor_FB_User_Name, Donor_FB_Gender, Donor_FB_Bio, Donor_FB_Photo, Donor_Status) VALUES (@d_fname, @d_lname, @d_email, @d_fid, @d_funame, @d_fgender, @d_bio, @d_fphoto, @d_status)"
                objConn1.Open()
                Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
                objComm1.Parameters.Add(d_fname)
                objComm1.Parameters.Add(d_lname)
                objComm1.Parameters.Add(d_email)
                objComm1.Parameters.Add(d_fid)
                objComm1.Parameters.Add(d_funame)
                objComm1.Parameters.Add(d_fgender)
                objComm1.Parameters.Add(d_bio)
                objComm1.Parameters.Add(d_fphoto)
                objComm1.Parameters.Add(d_status)
                objComm1.ExecuteNonQuery()
                objComm1.Connection.Close()
                objConn1.Close()

                Session("d_login") = "true"
                Session("d_fid") = user.id
                Session("d_login_fname") = user.first_name
                Session("d_login_lname") = user.last_name
                Session("d_login_email") = user.email
                Session("d_login_bio") = user.bio
                Session("d_picture") = "http://graph.facebook.com/" & user.id & "/picture"
                If Len(Session("URL")) > 0 Then
                    Response.Redirect(Session("URL"), True)
                Else
                    Response.Redirect("dashboard.aspx", True)
                End If
            End If

        End If
    End Sub

End Class
