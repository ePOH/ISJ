
Partial Class logout
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Session("d_login") = Nothing
        Session("d_login_id") = Nothing
        Session("d_login_fname") = Nothing
        Session("d_login_lname") = Nothing
        Session("d_login_email") = Nothing
        Session("d_login_password") = Nothing
        Session("d_login_bio") = Nothing
        Session("d_picture") = Nothing
        Session("d_welcome") = Nothing
        Response.Redirect("default.aspx")
    End Sub
End Class
