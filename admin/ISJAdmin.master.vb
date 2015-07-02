
Partial Class admin_ISJAdmin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        lb_f_name.Text = Session("login_fname")
    End Sub
End Class

