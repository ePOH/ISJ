
Partial Class test_login
    Inherits System.Web.UI.Page


    Protected Sub submit_Click(sender As Object, e As System.EventArgs) Handles btn_Submit.Click

        If password.Value = "epoh" Then
            Session("test_login") = True
            Response.Redirect("~/Default.aspx", True)
        Else
            lblError.Visible = True
        End If

    End Sub
End Class
