Imports RegexUtilities

Imports ISJhelper

Partial Class parishes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Request.QueryString("error") Is Nothing Then
            ltlMessage.Text = MessageFormatter.GetFormattedErrorMessage(Request.QueryString("error"))

        End If
    End Sub

   
End Class
