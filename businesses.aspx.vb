
Partial Class businesses
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("d_login") = "true" AndAlso (Session("d_login_email").Equals("orlando876@yahoo.com") Or Session("d_login_email").Equals("isj.emedia@gmail.com")) Then

        Else
            Response.Redirect("~/default.aspx", True)
        End If



        Dim dv As New Data.DataView
        dv = SQL_DS_Projects_Stats.Select(DataSourceSelectArguments.Empty)
        lb_projects_total.Text = FormatNumber((dv.Table.Rows(0)("Project_ID") + 0), 0, , TriState.True, TriState.True)
        lb_projects_raised.Text = "$" & FormatNumber(Math.Round(dv.Table.Rows(0)("Project_Raised") + 0, 0) / 1000000, 1, , TriState.True, TriState.True)
        Dim dv1 As New Data.DataView
        dv1 = SQL_DS_Projects_Lenders.Select(DataSourceSelectArguments.Empty)
        lb_projects_lenders.Text = FormatNumber((dv1.Table.Rows(0)("Lenders") + 0), 0, , TriState.True, TriState.True)
    End Sub
End Class
