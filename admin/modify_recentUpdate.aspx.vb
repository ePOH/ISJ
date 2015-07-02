Imports ISJhelper
Imports CuteEditor

Partial Class admin_modify_recentUpdate
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim pid As Integer
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
        If Session("RecentUpdateRowId") Is Nothing OrElse Integer.TryParse(Session("RecentUpdateRowId"), pid) = False Then

            Response.Redirect("Recent_update_chooser.aspx", True)
        End If
    End Sub

    Protected Sub FVRecentUpdates_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FVRecentUpdates.ItemUpdating
        e.NewValues("Modifyby") = Session("RecentUpdateRowId")

        e.NewValues("Modifydate") = Date.Now.ToShortDateString
    End Sub

    Protected Sub FVRecentUpdates_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FVRecentUpdates.ItemUpdated
        lblerrormessage.Text = MessageFormatter.GetFormattedSuccessMessage("Record was successfully Updated")
    End Sub
End Class
