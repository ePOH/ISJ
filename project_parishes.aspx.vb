
Partial Class project_parishes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        '' check to ensure that the parish id is not null if so return to the parish form

        Dim parishid As Integer

        If Integer.TryParse(Request.QueryString("parish"), parishid) = False Then
            Response.Redirect("~/parishes.aspx?error=No valid parish was submitted", True)
        ElseIf parishid < 0 Or parishid > 13 Then
            Response.Redirect("~/parishes.aspx?error= Invaild parish id " + parishid.ToString + " is out of bound", True)
        End If

        hl_sa_active.NavigateUrl = "projects_active_parish.aspx?parish=" & parishid
        hl_sa_complete.NavigateUrl = "projects_complete_parish.aspx?parish=" & parishid

        Dim dv As New Data.DataView
        dv = SQL_DS_Projects_Stats.Select(DataSourceSelectArguments.Empty)
        lb_projects_total.Text = FormatNumber((dv.Table.Rows(0)("Project_ID") + 0), 0, , TriState.True, TriState.True)
        lb_projects_raised.Text = "$" & FormatNumber(Math.Round(dv.Table.Rows(0)("Project_Raised") + 0, 0) / 1000000, 1, , TriState.True, TriState.True)
        Dim dv1 As New Data.DataView
        dv1 = SQL_DS_Projects_Lenders.Select(DataSourceSelectArguments.Empty)
        lb_projects_lenders.Text = FormatNumber((dv1.Table.Rows(0)("Lenders") + 0), 0, , TriState.True, TriState.True)
        Dim dv2 As New Data.DataView
        dv2 = SQL_DS_Projects_Parish.Select(DataSourceSelectArguments.Empty)
        lb_projects_parish.Text = UCase(dv2.Table.Rows(0)("Parish"))
    End Sub

    Protected Sub Projects_Featured_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles Projects_Featured.ItemDataBound

        If e.Item.ItemType = ListItemType.Item Or _
      e.Item.ItemType = ListItemType.AlternatingItem Then

            Dim hl_f1 As HyperLink = CType(e.Item.FindControl("HL_Project_Img_Feature"), HyperLink)
            If e.Item.DataItem("Project_Type") = 1 Then
                hl_f1.NavigateUrl = "project_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            ElseIf e.Item.DataItem("Project_Type") = 2 Then
                hl_f1.NavigateUrl = "business_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            End If

        End If

    End Sub

    Protected Sub Projects_Active_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles Projects_Active.ItemDataBound

        If e.Item.ItemType = ListItemType.Item Or _
      e.Item.ItemType = ListItemType.AlternatingItem Then

            Dim hl_f2 As HyperLink = CType(e.Item.FindControl("HL_Project_Img_Active"), HyperLink)
            If e.Item.DataItem("Project_Type") = 1 Then
                hl_f2.NavigateUrl = "project_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            ElseIf e.Item.DataItem("Project_Type") = 2 Then
                hl_f2.NavigateUrl = "business_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            End If

        End If

    End Sub

    Protected Sub Projects_Completed_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles Projects_Completed.ItemDataBound

        If e.Item.ItemType = ListItemType.Item Or _
      e.Item.ItemType = ListItemType.AlternatingItem Then

            Dim hl_f3 As HyperLink = CType(e.Item.FindControl("HL_Project_Img_Completed"), HyperLink)
            If e.Item.DataItem("Project_Type") = 1 Then
                hl_f3.NavigateUrl = "project_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            ElseIf e.Item.DataItem("Project_Type") = 2 Then
                hl_f3.NavigateUrl = "business_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            End If

        End If

    End Sub
End Class
