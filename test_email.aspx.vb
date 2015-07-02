
Partial Class test_email
    Inherits System.Web.UI.Page

    Protected Sub btnSend_OnClick(sender As Object, e As EventArgs)
        Dim sMsg = Nothing
        sMsg = "Hi" & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"
        sMsg += "This is a test" & vbCrLf & "<br>"
        sMsg += "" & tbxBody.Text & "</br>"
        sMsg += "Thank you  </br>"

        Try
            EmailManager.SendEmail(sMsg, "I Support Jamaica confirmation email.", tbxTo.Text, "Admin Confirmation", "I Support Jamaica Team <info@isupportjamaica.com>", Nothing)
        Catch ex As Exception
            Trace.Warn(ex.Message)
            lblMessage.Text = ex.Message
            lblMessage.Visible = True
            Throw ex
        End Try

    End Sub
End Class
