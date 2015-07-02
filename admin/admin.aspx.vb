
Partial Class admin_admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
        lab_msg_admin.Text = Session("msg_admin")
        Session.Remove("msg_admin")
        Session.Remove("article_id")
        Session.Remove("User_ID")
        Session.Remove("u_f_name")
        Session.Remove("u_l_name")
        Session.Remove("u_email")
    End Sub
End Class
