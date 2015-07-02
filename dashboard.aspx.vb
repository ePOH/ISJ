Partial Class dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Len(Session("d_login_id")) > 0 Then

        Else
            Response.Redirect("login.aspx", True)
        End If

        If Len(Session("d_fid")) > 0 Then
            hf_s_id.Value = Session("d_fid")
        ElseIf Len(Session("d_login_id")) > 0 Then
            hf_s_id.Value = Session("d_login_id")
        End If

        'hf_s_id.Value = Session("d_login_id")

        If Not IsDBNull(Session("d_login_fname")) Then
            lb_f_name.Text = UCase(Session("d_login_fname"))
        End If
        If Not IsDBNull(Session("d_login_lname")) Then
            lb_l_name.Text = UCase(Session("d_login_lname"))
        End If
        'If Len(Session("d_picture")) > 0 Then
        '    im_profile.ImageUrl = Session("d_picture")
        'Else
        '    im_profile.ImageUrl = "~/Images/avatar.png"
        'End If
        If Not IsDBNull(Session("d_picture")) Then
            im_profile.ImageUrl = Session("d_picture")
        Else
            im_profile.ImageUrl = "~/Images/avatar.png"
        End If
        If Not IsDBNull(Session("d_login_bio")) Then
            lb_bio.Text = Session("d_login_bio")
        Else
            lb_bio.Text = "To edit your profile, click on the <a href='manage_profile.aspx'>MANAGE PROFILE</a> link."
            'lb_bio.Text = "To edit your profile, click on the MANAGE PROFILE link."
        End If

        If Not IsDBNull(Session("d_fid")) Then
            hl_manage_profile.Visible = True
        Else
            hl_manage_profile.Visible = False
        End If

    End Sub

    Protected Sub SQL_DS_Supported_Selected(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SQL_DS_Supported.Selected

        If e.AffectedRows > 0 Then
            lb_y_s.Text = "YOU’VE SUPPORTED"
        End If

    End Sub
    Protected Sub Getuserdashemail(sender As Object, e As System.EventArgs)

        RegexUtilities.SendEmail("")


    End Sub
End Class
