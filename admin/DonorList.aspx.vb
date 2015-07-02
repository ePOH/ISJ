
Partial Class admin_DonorList
    Inherits System.Web.UI.Page


    Protected Sub GVDonerlist_RowDeleting(sender As Object, e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GVDonerlist.RowDeleting
        Dim Tablerow As TableRow
        Tablerow = GVDonerlist.Rows(e.RowIndex)

        UserLogin.AdminLog(Session("login_email"), "Delete", "Donor_Master_File", "UserId : " & e.Keys(0) & ", Firstname : " & e.Values(0) & ", Last name : " & e.Values(1) & ", Email address : " & e.Values(2) & ", Status : " & e.Values(3) & ", IsApproved : " & e.Values(4))


    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub

    Protected Sub btnsearch_Click(sender As Object, e As System.EventArgs) Handles btnsearch.Click
        Dim FilterExpression As String
        FilterExpression = Nothing
        Dim isAnd As Boolean
        isAnd = False
        If Not String.IsNullOrEmpty(txtfirstname.Text) AndAlso Not String.IsNullOrWhiteSpace(txtfirstname.Text) Then
            FilterExpression += "Donor_First_Name LIKE '%" + txtfirstname.Text + "%'"
            isAnd = True
        End If

        If Not String.IsNullOrEmpty(txtsurname.Text) AndAlso Not String.IsNullOrWhiteSpace(txtsurname.Text) Then
            If isAnd Then
                FilterExpression += " and "
            End If
            FilterExpression += " Donor_Last_Name LIKE '%" + txtsurname.Text + "%'"
        End If

        If Not String.IsNullOrEmpty(txtemail.Text) AndAlso Not String.IsNullOrWhiteSpace(txtemail.Text) Then
            If isAnd Then
                FilterExpression += " and "
            End If
            FilterExpression += " Donor_Email LIKE '%" + txtemail.Text + "%'"
        End If
        SqlDataSourcedoners.FilterExpression = FilterExpression
    End Sub
End Class
