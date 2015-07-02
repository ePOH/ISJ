
Partial Class _controls_SoonLend
    Inherits System.Web.UI.UserControl

    Protected Sub Getuseremail_pppopuplend(sender As Object, e As System.EventArgs)
        RegexUtilities.SendEmail(txtpppopuplenduseremail.Text)
    End Sub
End Class
