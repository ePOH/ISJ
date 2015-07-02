
Partial Class admin_delete_news_item
    Inherits System.Web.UI.Page

    Protected Sub btn_Select_Click(sender As Object, e As System.EventArgs) Handles btn_Select.Click

        Session("article_id") = DDL_Article_Name.SelectedValue

        UserLogin.AdminLog(Session("login_email"), "SELECT", "News_Data_File", "SELECT New Id: " & Session("article_id") & " To be Deleted")
        Response.Redirect("delete_news_item_text.aspx", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
