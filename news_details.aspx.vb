
Partial Class news_details
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Dim dv As New Data.DataView
        Dim aid As Integer

        If Integer.TryParse(Request.QueryString("aid"), aid) = False Or _
            Request.QueryString("aid") Is Nothing Or
            String.IsNullOrEmpty(Request.QueryString("aid")) Or _
            String.IsNullOrWhiteSpace(Request.QueryString("aid")) Then
            Response.Redirect("default.aspx", True)
        End If

        dv = SQL_DS_News.Select(DataSourceSelectArguments.Empty)
        lb_title.Text = UCase(dv.Table.Rows(0)("News_Title"))
        lb_article.Text = dv.Table.Rows(0)("News_Body")
        im_news_image.ImageUrl = dv.Table.Rows(0)("News_Image")
        lbl_NewsDate.Text = Convert.ToDateTime(dv.Table.Rows(0)("News_Date").ToString()).ToLongDateString()
        ViewState("NewsProjectId") = dv.Table.Rows(0)("News_Related_Project_Id")

    End Sub
End Class
