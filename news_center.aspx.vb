
Partial Class news_center
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim aid As Integer

        If Integer.TryParse(Request.QueryString("aid"), aid) = True AndAlso Len(Request.QueryString("aid")) > 0 Then
            Dim dv As New Data.DataView
            dv = SQL_DS_News_Art.Select(DataSourceSelectArguments.Empty)
        Else
            ''im_news_image.Visible = False
        End If

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)

        Dim strSQL As String = "select top 1 NewChannelUrl from News_Video_Channel"
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        objConn.Open()

        Dim currentChannel As String = objComm.ExecuteScalar()
        ViewState("CurrentNewsChannel") = currentChannel

        objConn.Close()
        objComm.Dispose()
        objConn.Dispose()

    End Sub

    Protected Sub SQL_DS_News_Art_Selected(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SQL_DS_News_Art.Selected

        If e.AffectedRows > 0 Then
            
        End If

    End Sub
End Class
