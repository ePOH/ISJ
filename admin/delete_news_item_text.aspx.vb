
Partial Class admin_delete_news_item_text
    Inherits System.Web.UI.Page

    Protected Sub FV_Add_News_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FV_Add_News.ItemDeleted

        Dim News_ImageTextBox1 As HiddenField = CType(FV_Add_News.FindControl("News_ImageTextBox1"), HiddenField)
        Dim imgpath As String = News_ImageTextBox1.Value
        If StrComp(imgpath, "images/news/home_thumbnail.jpg", CompareMethod.Text) <> 0 Then
            Dim File1 As New IO.FileInfo(MapPath("~/" & imgpath))
            If File1.Exists Then
                File1.Delete()
            End If
        End If
        UserLogin.AdminLog(Session("login_email"), "DELETED", "News_Data_File", "New Id " & Session("article_id"))
        Session("msg_admin") = "News Item Deleted Successfully!"
        Response.Redirect("admin.aspx", True)

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
