
Partial Class businesses_active
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'Response.Redirect("~/default.aspx", True)
        If Session("d_login") = "true" AndAlso (Session("d_login_email").Equals("orlando876@yahoo.com") Or Session("d_login_email").Equals("isj.emedia@gmail.com")) Then

        Else
            Response.Redirect("~/default.aspx", True)
        End If
    End Sub
End Class
