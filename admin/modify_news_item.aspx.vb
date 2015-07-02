
Partial Class admin_modify_news_item
    Inherits System.Web.UI.Page

    Protected Sub btn_Select_Click(sender As Object, e As System.EventArgs) Handles btn_Select.Click
        Session("article_id") = DDL_Article_Name.SelectedValue
        Response.Redirect("modify_news_item_text.aspx", True)
    End Sub

    Protected Sub Button_Save_News_Channel_Click(sender As Object, e As System.EventArgs) Handles Button_Save_News_Channel.Click
        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "Update News_Video_Channel set NewChannelUrl='" + Text_News_Channel.Text + "'"
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        objConn.Open()
        objComm.ExecuteNonQuery()
        objConn.Close()
        objComm.Dispose()
        objConn.Dispose()

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        Else
            If Not Page.IsPostBack Then
                Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn As New Data.SqlClient.SqlConnection(strConn)

                Dim strSQL As String = "select top 1 NewChannelUrl from News_Video_Channel"
                Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
                objConn.Open()

                Dim currentChannel As String = objComm.ExecuteScalar()
                Text_News_Channel.Text = currentChannel

                objConn.Close()
                objComm.Dispose()
                objConn.Dispose()
            End If
        End If
    End Sub
End Class
