Imports ISJhelper
Imports CuteEditor

Partial Class admin_add_recent_update
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim pid As Integer
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
        If Session("pid") Is Nothing OrElse Integer.TryParse(Session("pid"), pid) = False Then

            Response.Redirect("Recent_update_chooser.aspx", True)
        End If
    End Sub

    Protected Sub FVRecentUpdates_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FVRecentUpdates.ItemInserting
        Dim Pid As Integer

        If Session("pid") Is Nothing OrElse Integer.TryParse(Session("pid"), pid) = False Then
            e.Cancel = True
        End If

        Dim datetextbox As TextBox = FVRecentUpdates.FindControl("Project_Update_DateTextBox")
        Dim News_BodyTextBox As Editor = FVRecentUpdates.FindControl("News_BodyTextBox")
        If datetextbox Is Nothing OrElse String.IsNullOrEmpty(datetextbox.Text) Then
            lblerrormessage.Text = MessageFormatter.GetFormattedErrorMessage("A Date is Required")
            datetextbox.Focus()
            e.Cancel = True
        End If


        If News_BodyTextBox Is Nothing OrElse String.IsNullOrEmpty(News_BodyTextBox.Text) Then
            lblerrormessage.Text = MessageFormatter.GetFormattedErrorMessage("Details is Required")
            News_BodyTextBox.Focus = True
            e.Cancel = True
        End If

        e.Values("Project_ID") = Pid
        e.Values("Createdby") = Session("login_id")
    End Sub

    Protected Sub SqlDataSourceRecentUpdate_Inserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSourceRecentUpdate.Inserted
        lblerrormessage.Text = MessageFormatter.GetFormattedSuccessMessage("Record was successfully Inserted")
    End Sub
End Class
