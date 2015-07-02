
Partial Class admin_default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") = "true" Then
            Response.Redirect("admin.aspx", True)
        Else
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
