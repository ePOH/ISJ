
Partial Class projects_active_parish
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim parishid As Integer

        If Integer.TryParse(Request.QueryString("parish"), parishid) = False Then
            Response.Redirect("~/parishes.aspx?error=No valid parish was submitted", True)
        ElseIf parishid < 0 Or parishid > 13 Then
            Response.Redirect("~/parishes.aspx?error= Invaild parish id " + parishid.ToString + " is out of bound", True)
        End If

        Dim dv2 As New Data.DataView
        dv2 = SQL_DS_Projects_Parish.Select(DataSourceSelectArguments.Empty)
        lb_projects_parish.Text = UCase(dv2.Table.Rows(0)("Parish"))
    End Sub

    Protected Sub ListView1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.ListViewItemEventArgs) Handles ListView1.ItemDataBound

        If e.Item.ItemType = ListViewItemType.DataItem Then

            Dim hl_a As HyperLink = CType(e.Item.FindControl("HL_Project_Img_Active"), HyperLink)
            If e.Item.DataItem("Project_Type") = 1 Then
                hl_a.NavigateUrl = "project_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            ElseIf e.Item.DataItem("Project_Type") = 2 Then
                hl_a.NavigateUrl = "business_details.aspx?pid=" & e.Item.DataItem("Project_ID")
            End If

        End If

    End Sub
End Class
