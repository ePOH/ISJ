Imports RegexUtilities
Imports ISJhelper

Partial Class admin_reports
    Inherits System.Web.UI.Page

    Protected Sub lbtn_reg_user_Click(sender As Object, e As System.EventArgs) Handles lbtn_reg_user.Click
        hf_var.Value = 1
        Dim GridView1 As New GridView()
        GridView1.AllowPaging = False
        GridView1.DataSource = SQL_DS_Reg_Users
        GridView1.DataBind()
        ExportToExcel("ReportRegUser.xls", GridView1)
    End Sub

    Private Sub ExportToExcel(ByVal strFileName As String, ByVal dg As GridView)

        Dim GridView1 As New GridView()
        GridView1.AllowPaging = False
        Dim number As Integer = hf_var.Value
        Select Case number
            Case 1
                GridView1.DataSource = SQL_DS_Reg_Users
                UserLogin.AdminLog(Session("login_email"), "SELECT", "REPORTS", SQL_DS_Reg_Users.ID)
            Case 2
                GridView1.DataSource = SQL_DS_Con_PUser
                UserLogin.AdminLog(Session("login_email"), "SELECT", "REPORTS", SQL_DS_Con_PUser.ID)
            Case 3
                GridView1.DataSource = SQL_DS_Par_Fund
                UserLogin.AdminLog(Session("login_email"), "SELECT", "REPORTS", SQL_DS_Par_Fund.ID)
            Case 4
                GridView1.DataSource = SQL_DS_Ful_Fund
                UserLogin.AdminLog(Session("login_email"), "SELECT", "REPORTS", SQL_DS_Ful_Fund.ID)
            Case 5
                GridView1.DataSource = SQL_Donations
                UserLogin.AdminLog(Session("login_email"), "SELECT", "REPORTS", SQL_Donations.ID)
        End Select

        GridView1.DataBind()

        If GridView1.Rows.Count > 0 Then
            Response.Clear()
            Response.Buffer = True
            Response.ContentType = "application/vnd.ms-excel"
            Response.Charset = ""
            Me.EnableViewState = False
            Dim oStringWriter As New System.IO.StringWriter
            Dim oHtmlTextWriter As New System.Web.UI.HtmlTextWriter(oStringWriter)

            GridView1.RenderControl(oHtmlTextWriter)

            Response.Write(oStringWriter.ToString())
            Response.[End]()
        Else
            lblerrormessage.Text = MessageFormatter.GetFormattedErrorMessage("Sorry there is no data available for this report ")
        End If



    End Sub

    Protected Sub lbtn_tot_donor_Click(sender As Object, e As System.EventArgs) Handles lbtn_tot_donor.Click
        hf_var.Value = 2
        Dim GridView1 As New GridView()
        GridView1.AllowPaging = False
        GridView1.DataSource = SQL_DS_Con_PUser
        GridView1.DataBind()
        ExportToExcel("ReportContributionPerUser.xls", GridView1)
    End Sub

    Protected Sub lbtn_par_fund_Click(sender As Object, e As System.EventArgs) Handles lbtn_par_fund.Click
        hf_var.Value = 3
        Dim GridView1 As New GridView()
        GridView1.AllowPaging = False
        GridView1.DataSource = SQL_DS_Par_Fund
        GridView1.DataBind()
        ExportToExcel("ReportPartialFunded.xls", GridView1)
    End Sub

    Protected Sub lbtn_ful_fund_Click(sender As Object, e As System.EventArgs) Handles lbtn_ful_fund.Click
        hf_var.Value = 4
        Dim GridView1 As New GridView()
        GridView1.AllowPaging = False
        GridView1.DataSource = SQL_DS_Ful_Fund
        GridView1.DataBind()
        ExportToExcel("Reportfullfunded.xls", GridView1)
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub

    Protected Sub lbtn_funds_Click(sender As Object, e As System.EventArgs) Handles lbtn_funds.Click
        hf_var.Value = 5
        Dim GridView1 As New GridView()
        GridView1.AllowPaging = False
        GridView1.DataSource = SQL_Donations
        GridView1.DataBind()
        ExportToExcel("ReportDonations.xls", GridView1)
    End Sub
End Class
