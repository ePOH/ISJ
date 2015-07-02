
Partial Class admin_logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        UserLogin.AdminLog(Session("login_email"), "LOGOUT", "User_Master_File", "Admin log out")

        Session.Abandon()
        Response.Redirect("../", True)
    End Sub
End Class
