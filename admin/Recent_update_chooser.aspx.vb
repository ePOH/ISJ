
Partial Class admin_Recent_update_chooser
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub


    Protected Sub btn_AddUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_AddUpdate.Click
        Session("pid") = DDL_Project_Title.SelectedValue
        Response.Redirect("add_recent_update.aspx", True)
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim btnEdit As LinkButton = TryCast(sender, LinkButton)
        Dim row As GridViewRow = DirectCast(btnEdit.NamingContainer, GridViewRow)

        Session("RecentUpdateRowId") = GvListUpdates.DataKeys(row.RowIndex).Values(0)
        Response.Redirect("modify_recentUpdate.aspx", True)


    End Sub


    Protected Sub DDL_Project_Title_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDL_Project_Title.DataBound
        GvListUpdates.DataBind()
    End Sub
End Class
