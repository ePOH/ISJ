
Partial Class admin_modify_user
    Inherits System.Web.UI.Page

    Protected Sub btn_muser_Click(sender As Object, e As System.EventArgs) Handles btn_muser.Click
        Session("User_ID") = DDL_Users.SelectedValue
        Response.Redirect("modify_user_text.aspx", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
