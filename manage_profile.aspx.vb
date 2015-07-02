
Partial Class manage_profile
    Inherits System.Web.UI.Page

    Protected Sub btn_update_Click(sender As Object, e As System.EventArgs) Handles btn_update.Click

        If Profile_Image.HasFile Then

            Dim content_type As String

            content_type = Profile_Image.PostedFile.ContentType
            Select Case content_type
                Case "image/gif"
                    Session("content_id") = 1
                Case "image/jpeg"
                    Session("content_id") = 1
                Case "image/png"
                    Session("content_id") = 1
                Case "image/tiff"
                    Session("content_id") = 1
                Case Else
                    Session("content_id") = 2
                    lb_msg.Text = "Not a recognised image format"
            End Select

        End If

        If Session("content_id") = 1 Then

            Dim ext As String = Right(Profile_Image.PostedFile.FileName, (Len(Profile_Image.PostedFile.FileName) - InStrRev(Profile_Image.PostedFile.FileName, ".")) + 1)
            Dim imgpath As String = "images/profiles/" & Session("d_login_id") & ext
            Dim savepath As String = MapPath("~/images/profiles/" & Session("d_login_id") & ext)
            Profile_Image.SaveAs(savepath)

            Dim d_fname As Data.SqlClient.SqlParameter
            d_fname = New Data.SqlClient.SqlParameter("@d_fname", Data.SqlDbType.VarChar)
            d_fname.Value = tb_fname.Text
            Dim d_lname As Data.SqlClient.SqlParameter
            d_lname = New Data.SqlClient.SqlParameter("@d_lname", Data.SqlDbType.VarChar)
            d_lname.Value = tb_lname.Text
            Dim d_bio As Data.SqlClient.SqlParameter
            d_bio = New Data.SqlClient.SqlParameter("@d_bio", Data.SqlDbType.VarChar)
            d_bio.Value = Profile_Bio.Text
            Dim d_img As Data.SqlClient.SqlParameter
            d_img = New Data.SqlClient.SqlParameter("@d_img", Data.SqlDbType.VarChar)
            d_img.Value = imgpath

            Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
            Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_First_Name = @d_fname, Donor_Last_Name = @d_lname, Donor_FB_Bio = @d_bio, Donor_FB_Photo = @d_img WHERE (Donor_ID = " & Session("d_login_id") & ")"
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.Add(d_fname)
            objComm1.Parameters.Add(d_lname)
            objComm1.Parameters.Add(d_bio)
            objComm1.Parameters.Add(d_img)
            objComm1.ExecuteNonQuery()
            objComm1.Connection.Close()
            objConn1.Close()

            Session("d_login_fname") = tb_fname.Text
            Session("d_login_lname") = tb_lname.Text
            Session("d_login_bio") = Profile_Bio.Text
            Session("d_picture") = imgpath

            Response.Redirect("dashboard.aspx", True)

        Else

            Dim d_fname As Data.SqlClient.SqlParameter
            d_fname = New Data.SqlClient.SqlParameter("@d_fname", Data.SqlDbType.VarChar)
            d_fname.Value = tb_fname.Text
            Dim d_lname As Data.SqlClient.SqlParameter
            d_lname = New Data.SqlClient.SqlParameter("@d_lname", Data.SqlDbType.VarChar)
            d_lname.Value = tb_lname.Text
            Dim d_bio As Data.SqlClient.SqlParameter
            d_bio = New Data.SqlClient.SqlParameter("@d_bio", Data.SqlDbType.VarChar)
            d_bio.Value = Profile_Bio.Text

            Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
            Dim strSQL1 As String = "UPDATE Donor_Master_File SET Donor_First_Name = @d_fname, Donor_Last_Name = @d_lname, Donor_FB_Bio = @d_bio WHERE (Donor_ID = " & Session("d_login_id") & ")"
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.Add(d_fname)
            objComm1.Parameters.Add(d_lname)
            objComm1.Parameters.Add(d_bio)
            objComm1.ExecuteNonQuery()
            objComm1.Connection.Close()
            objConn1.Close()

            Session("d_login_fname") = tb_fname.Text
            Session("d_login_lname") = tb_lname.Text
            Session("d_login_bio") = Profile_Bio.Text

            Response.Redirect("dashboard.aspx", True)

        End If

    End Sub

    Protected Sub Page_InitComplete(sender As Object, e As System.EventArgs) Handles Me.InitComplete

        If Len(Session("d_login_id")) > 0 Then
            Session("content_id") = 0
            lb_msg.Text = ""
            tb_email.Text = Session("d_login_email")
            tb_fname.Text = Session("d_login_fname")
            tb_lname.Text = Session("d_login_lname")
            If Not IsDBNull(Session("d_login_bio")) Then
                Profile_Bio.Text = Session("d_login_bio")
            End If

            'If Not IsDBNull(Session("d_login_fname")) Then
            '    tb_fname.Text = Session("d_login_fname")
            'End If
            'If Not IsDBNull(Session("d_login_lname")) Then
            '    tb_lname.Text = Session("d_login_lname")
            'End If

        Else
            Response.Redirect("default.aspx", True)
        End If

    End Sub

End Class
