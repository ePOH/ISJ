
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("d_welcome") <> Nothing Then
            link_Blog.Text = Session("d_welcome").ToString()
            link_Blog.NavigateUrl = "dashboard.aspx"
            link_Extra_Blog.Visible = True
        End If

    End Sub
End Class

