
Partial Class admin_modify_project_chooser
    Inherits System.Web.UI.Page

    Protected Sub btn_mproject_Click(sender As Object, e As System.EventArgs) Handles btn_mproject.Click
        Session("pid") = DDL_Project_Title.SelectedValue
        Response.Redirect("modify_project.aspx", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
