
Partial Class admin_modify_news_item_text
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If

        'Dim News_DateTextBox As TextBox = CType(FV_Add_News.FindControl("News_DateTextBox"), TextBox)
        'News_DateTextBox.Text = Date.Now.ToShortDateString

        'Dim News_StatusTextBox As DropDownList = CType(FV_Add_News.FindControl("News_StatusTextBox"), DropDownList)
        'News_StatusTextBox.SelectedValue = 1

        'Dim News_Mod_DateTextBox As HiddenField = CType(FV_Add_News.FindControl("News_Mod_DateTextBox"), HiddenField)
        'News_Mod_DateTextBox.Value = Date.Now.ToShortDateString

        'Dim News_Mod_ByTextBox As HiddenField = CType(FV_Add_News.FindControl("News_Mod_ByTextBox"), HiddenField)
        'News_Mod_ByTextBox.Value = 2

        'Dim News_StatusTextBox As HiddenField = CType(FV_Add_News.FindControl("News_StatusTextBox"), HiddenField)
        'News_StatusTextBox.Value = 1

        'Dim News_ImageTextBox1 As HiddenField = CType(FV_Add_News.FindControl("News_ImageTextBox1"), HiddenField)
        'Dim News_ImageTextBox As AjaxControlToolkit.AsyncFileUpload = CType(FV_Add_News.FindControl("News_ImageTextBox"), AjaxControlToolkit.AsyncFileUpload)
        'News_ImageTextBox.FileName = News_ImageTextBox1.Value
        'Dim path As String = MapPath("~/images/news/" & News_ImageTextBox.FileName)
        'Dim savepath As String = MapPath("~/images/news/" & objRead.Item("News_ID") & Right(path, 4))
        'News_ImageTextBox.SaveAs(savepath)
        'Dim imgpath As String = "images/news/" & objRead.Item("News_ID") & Right(path, 4)
    End Sub

    Protected Sub FV_Add_News_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FV_Add_News.ItemUpdated

        Dim News_ImageTextBox As AjaxControlToolkit.AsyncFileUpload = CType(FV_Add_News.FindControl("News_ImageTextBox"), AjaxControlToolkit.AsyncFileUpload)
        UserLogin.AdminLog(Session("login_email"), "UPDATE", "News_Data_File", "News_ID : " & Session("article_id"))
        If News_ImageTextBox.HasFile Then
            Dim path As String = MapPath("~/images/news/" & News_ImageTextBox.FileName)
            Dim savepath As String = MapPath("~/images/news/" & Session("article_id") & Right(path, 4))

            News_ImageTextBox.SaveAs(savepath)
            Dim imgpath As String = "images/news/" & Session("article_id") & Right(path, 4)

            Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
            Dim strSQL1 As String = "UPDATE News_Data_File SET News_Image = @imgpath FROM News_Data_File where News_ID=@News_ID"

            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.AddWithValue("@imgpath", Server.HtmlEncode(imgpath))
            objComm1.Parameters.AddWithValue("@News_ID", Server.HtmlEncode(Session("article_id")))



            objComm1.ExecuteNonQuery()
            UserLogin.AdminLog(Session("login_email"), "UPDATE", "News_Data_File", "News_Image : " & imgpath & " for News_ID : " & Session("article_id"))
            objComm1.Connection.Close()
            objConn1.Close()

        Else

            Dim News_ImageTextBox1 As HiddenField = CType(FV_Add_News.FindControl("News_ImageTextBox1"), HiddenField)
            Dim imgpath As String = News_ImageTextBox1.Value

            Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
            Dim strSQL1 As String = "UPDATE News_Data_File SET News_Image = @imgpath FROM News_Data_File where News_ID=@News_ID"
            objConn1.Open()
            Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
            objComm1.Parameters.AddWithValue("@imgpath", Server.HtmlEncode(imgpath))
            objComm1.Parameters.AddWithValue("@News_ID", Server.HtmlEncode(Session("article_id")))
            objComm1.ExecuteNonQuery()
            UserLogin.AdminLog(Session("login_email"), "UPDATE", "News_Data_File", "News_Image : " & imgpath & " for News_ID : " & Session("article_id"))
            objComm1.Connection.Close()
            objConn1.Close()

        End If

        Session("msg_admin") = "News Item Updated Successfully!"
        Response.Redirect("admin.aspx", True)

    End Sub
End Class
