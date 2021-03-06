﻿Imports System.IO
Imports System.Xml
Imports System.Net
Imports Facebook
Imports Facebook.Web
Partial Class business_details
    Inherits System.Web.UI.Page

    'Protected Sub logout_Click(sender As Object, e As System.EventArgs) Handles logout.Click
    '    Session.Abandon()
    '    Dim redir As String = "https://www.facebook.com/logout.php?access_token="
    '    redir += Session("gAT")
    '    redir += "&confirm=1&next=https://www.isupportjamaica.com/default.aspx"
    '    Response.Redirect(redir, True)
    'End Sub

    'Protected Sub btn_dash_Click(sender As Object, e As System.EventArgs) Handles btn_dash.Click
    '    Response.Redirect("dashboard.aspx", True)
    'End Sub

    'Protected Sub login_Click(sender As Object, e As System.EventArgs) Handles login.Click
    '    If Len(head_login_email.Text) > 0 And Len(head_login_password.Text) > 7 Then
    '        Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
    '        Dim hashedBytes As Byte()
    '        Dim encoder As New UTF8Encoding()
    '        hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(head_login_password.Text))
    '        Dim paramPwd As Data.SqlClient.SqlParameter
    '        paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
    '        paramPwd.Value = hashedBytes

    '        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
    '        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
    '        Dim strSQL As String = "SELECT * FROM Donor_Master_File WHERE Donor_Email = '" & head_login_email.Text & "' AND Donor_Password = @Password AND Donor_Status = 1"
    '        objConn.Open()
    '        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
    '        objComm.Parameters.Add(paramPwd)
    '        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

    '        If objRead.Read() Then
    '            If objRead.Item("Donor_Email").ToString = head_login_email.Text Then
    '                Session("d_login") = "true"
    '                Session("d_login_id") = objRead.Item("Donor_ID")
    '                Session("d_login_fname") = objRead.Item("Donor_First_Name")
    '                Session("d_login_lname") = objRead.Item("Donor_Last_Name")
    '                Session("d_login_email") = objRead.Item("Donor_Email")
    '                Session("d_login_password") = head_login_password.Text
    '                Session("d_login_bio") = objRead.Item("Donor_FB_Bio")
    '                Session("d_picture") = objRead.Item("Donor_FB_Photo")
    '                objRead.Close()
    '                objConn.Close()
    '                Response.Redirect("dashboard.aspx", True)
    '            End If
    '        Else
    '            Session("d_email") = head_login_email.Text
    '            Session("d_login_msg") = "Please try again. Incorrect email or password."
    '            Response.Redirect("login.aspx", True)
    '        End If
    '    End If
    'End Sub

    Protected Sub Page_InitComplete(sender As Object, e As System.EventArgs) Handles Me.InitComplete
        btn_check_out.Visible = False
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        ''this is to be remove when lend section is been reactivated
        'Response.Redirect("default.aspx", True)
        If Session("d_login") = "true" AndAlso (Session("d_login_email").Equals("orlando876@yahoo.com") Or Session("d_login_email").Equals("isj.emedia@gmail.com")) Then

        Else
            Response.Redirect("~/default.aspx", True)
        End If

        Dim Pid As Integer
        If Integer.TryParse(Request.QueryString("pid"), Pid) = False Or _
            Request.QueryString("pid") Is Nothing Or
            String.IsNullOrEmpty(Request.QueryString("pid")) Or _
            String.IsNullOrWhiteSpace(Request.QueryString("pid")) Then


            'Response.Redirect("default.aspx", True)

        End If
        If Session("d_login") <> "true" Then
            'submit_ModalPopupExtender.Enabled = False
            'submit_ModalPopupExtender.Hide()
            Panel1.Visible = False
        End If

        If Session("dt_s_Cart") Is Nothing Then

        ElseIf Session("dt_s_Cart").Rows.Contains(Request.QueryString("pid")) Then
            submit.Visible = False
            Panel1.Visible = False
            btn_check_out.Visible = True
        End If


        'If Session("d_login") = "true" Then
        '    hl_logout.Visible = True
        '    openLogin.Visible = False
        'Else
        '    hl_logout.Visible = False
        '    openLogin.Visible = True
        'End If

        If Session("d_login") = "true" And Len(Session("URL")) > 0 Then
            Session.Remove("URL")
            'submit.PostBackUrl = "https://www.sandbox.paypal.com/cgi-bin/webscr"
        End If

        hl_fb.NavigateUrl = "http://www.facebook.com/share.php?u=" & Request.Url.AbsoluteUri
        hl_tw.NavigateUrl = "http://www.twitter.com/share?url=" & Request.Url.AbsoluteUri


        Dim paramPid As Data.SqlClient.SqlParameter
        paramPid = New Data.SqlClient.SqlParameter("@ProjId", Data.SqlDbType.Int, 4)
        paramPid.Value = Request.QueryString("pid")

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT * FROM Project_Data_File WHERE (Project_ID = @ProjId) and  (Project_Type = 2)"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        objComm.Parameters.Add(paramPid)
        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then
            lb_project_name.Text = Left(UCase(objRead.Item("Project_Name")), 43)
            If Not objRead.Item("Project_Synopsys") Is DBNull.Value Then
                lb_project_synopsys.Text = objRead.Item("Project_Synopsys")
            End If
            lb_project_about.Text = objRead.Item("Project_About")
            lb_project_goal.Text = FormatNumber(objRead.Item("Project_Goal"), 0, , TriState.True, TriState.True)
            'lb_project_goal_j.Text = FormatNumber(objRead.Item("Project_Goal_J"), 0, , TriState.True, TriState.True)
            If Not objRead.Item("Project_Raised") Is DBNull.Value Then
                'lb_project_raised.Text = Math.Round(objRead.Item("Project_Raised"), 0)
                lb_project_raised.Text = FormatNumber(objRead.Item("Project_Raised"), 0, , TriState.True, TriState.True)
                lb_project_raised_pc.Text = Math.Round(objRead.Item("Project_Raised") / objRead.Item("Project_Goal") * 100)
            End If
            lb_project_time.Text = DateDiff("d", objRead.Item("Project_Start_Date"), objRead.Item("Project_End_Date"))
            lb_project_fn.Text = UCase(objRead.Item("Project_Owner_First_Name"))
            If Len(objRead.Item("Project_JNSBL")) > 0 Then
                lb_project_fn1.Text = UCase(objRead.Item("Project_Owner_First_Name")) & " AND JNSBL"
            End If
            lb_project_needs.Text = objRead.Item("Project_Needs")
            lb_project_aim.Text = objRead.Item("Project_Aim")
            If Not objRead.Item("Project_JNSBL") Is DBNull.Value Then
                lb_project_jnsbl.Text = objRead.Item("Project_JNSBL")
            End If
            im_project_image_tn.ImageUrl = objRead.Item("Project_Image")
            im_project_image.ImageUrl = objRead.Item("Project_Image")
            If Not objRead.Item("Project_Video") Is DBNull.Value Then
                Dim VideoID As String = objRead.Item("Project_Video")
                lb_yt_video.Text = "<object width='420' height='270'><param name='movie' value='https://www.youtube.com/v/" & VideoID & "?version=3&autoplay=1'></param><embed src='https://www.youtube.com/v/" & VideoID & "?version=3&autoplay=1' type='application/x-shockwave-flash' width='420' height='270'></embed></object>"
            End If

            Dim c_amt As Double = FormatNumber(objRead.Item("Project_Goal") - objRead.Item("Project_Raised"), 2)
            Dim dv As New Data.DataView
            dv = SQL_DS_DD_Value.Select(DataSourceSelectArguments.Empty)
            Dim cnum As Integer = dv.Count

            Dim cnum1 As String = ""
            Dim i As Integer = 0
            'Dim a_lst As New List(Of Decimal)
            For i = 0 To cnum - 1
                If dv.Table.Rows(i)("DD_Value_ID") < c_amt Then
                    DD_value.Items.Add(New ListItem(CType(dv.Table.Rows(i)("DD_Value"), String), CType(dv.Table.Rows(i)("DD_Value_ID"), Double)))
                End If
            Next
            If c_amt <= 500 Then
                DD_value.Items.Add(New ListItem("$" & CType(c_amt, String), CType(c_amt, Double)))
            End If


            cmd.Value = "_xclick"
            ''business.Value = "cnimblett@hotmail.com"
            'business.Value = "testisupportjamaica@jnbs.com"
            business.Value = "isupportjamaica@jnbs.com"

            item_number.Value = Request.QueryString("pid")
            item_name.Value = objRead.Item("Project_Name")
            no_shipping.Value = 1
            [return].Value = "https://www.isupportjamaica.com/paypal.aspx"
            cancel_return.Value = "https://www.isupportjamaica.com/paypal_fail.aspx"
            rm.Value = 2

        Else
            Response.Redirect("default.aspx", True)
        End If
    End Sub

    Protected Sub submit_Click(sender As Object, e As System.EventArgs) Handles submit.Click

        If Session("d_login") <> "true" Then
            Session("URL") = Request.Url.AbsoluteUri
            Response.Redirect("login.aspx", True)
        End If

    End Sub

    Protected Sub btn_c_Out_Click(sender As Object, e As System.EventArgs) Handles btn_c_Out.Click

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT SUM(MC_Gross) AS GTotal FROM Paypal_Transaction_Data_File WHERE (Payment_Date > DATEADD(YYYY, - 1, GETDATE())) AND (Donor_ID = " & Session("d_login_id") & ") AND (Payment_Status = 'Completed')"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then
            If Not objRead.Item("GTotal") Is DBNull.Value Then
                If objRead.Item("GTotal") + CType(DD_value.SelectedValue, Double) >= 10000 Then
                    Session("sc_msg") = "You have exceeded your limit for the year by $" & objRead.Item("GTotal") + CType(DD_value.SelectedValue, Double) - 10000 & ".00"
                    objRead.Close()
                    objConn.Close()
                    Session("URL") = Request.Url.AbsoluteUri
                    Response.Redirect("shopping_cart.aspx", True)
                End If
            End If
        End If
        objRead.Close()
        objConn.Close()

        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
        Dim strSQL1 As String = "SELECT SUM(Donor_Transaction_Data_File.Project_Amount) AS GTotal FROM Paypal_Transaction_Data_File INNER JOIN Donor_Transaction_Data_File ON Paypal_Transaction_Data_File.Transaction_ID = Donor_Transaction_Data_File.Paypal_Transaction_ID WHERE (Payment_Date > DATEADD(YYYY, - 1, GETDATE())) AND (Donor_Transaction_Data_File.Donor_ID = " & Session("d_login_id") & ") AND (Donor_Transaction_Data_File.Payment_Status = 1) AND (Donor_Transaction_Data_File.Project_ID = " & Request.QueryString("pid") & ")"
        objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        Dim objRead1 As Data.SqlClient.SqlDataReader = objComm1.ExecuteReader()

        If objRead1.Read() Then
            If Not objRead1.Item("GTotal") Is DBNull.Value Then
                If objRead1.Item("GTotal") + CType(DD_value.SelectedValue, Double) >= 500 Then
                    Session("sc_msg") = "You have exceeded your limit for this project by $" & objRead1.Item("GTotal") + CType(DD_value.SelectedValue, Double) - 500 & ".00"
                    objRead1.Close()
                    objConn1.Close()
                    Session("URL") = Request.Url.AbsoluteUri
                    Response.Redirect("shopping_cart.aspx", True)
                End If
            End If
        End If
        objRead1.Close()
        objConn1.Close()

        If Not Session("dt_s_Cart") Is Nothing Then
            If Not Session("dt_s_Cart").Rows.Contains(Request.QueryString("pid")) Then
                If Session("dt_s_Cart") Is Nothing Then
                    Dim dt_s_Cart As Data.DataTable = New Data.DataTable
                    dt_s_Cart.Columns.Add("P_ID", GetType(Int32))
                    dt_s_Cart.Columns.Add("P_Name", GetType(String))
                    dt_s_Cart.Columns.Add("P_Amt", GetType(Double))
                    Dim primaryKey(0) As Data.DataColumn
                    primaryKey(0) = dt_s_Cart.Columns("P_ID")
                    dt_s_Cart.PrimaryKey = primaryKey
                    Session("dt_s_Cart") = dt_s_Cart
                End If
                Session("dt_s_Cart").Rows.Add(CType(Request.QueryString("pid"), Int32), CType(item_name.Value, String), CType(DD_value.SelectedValue, Double))
            End If
        ElseIf Len(Request.QueryString("pid")) > 0 Then
            Dim dt_s_Cart As Data.DataTable = New Data.DataTable
            dt_s_Cart.Columns.Add("P_ID", GetType(Int32))
            dt_s_Cart.Columns.Add("P_Name", GetType(String))
            dt_s_Cart.Columns.Add("P_Amt", GetType(Double))
            Dim primaryKey(0) As Data.DataColumn
            primaryKey(0) = dt_s_Cart.Columns("P_ID")
            dt_s_Cart.PrimaryKey = primaryKey
            If Session("dt_s_Cart") Is Nothing Then
                Session("dt_s_Cart") = dt_s_Cart
            End If
            Session("dt_s_Cart").Rows.Add(CType(Request.QueryString("pid"), Int32), CType(item_name.Value, String), CType(DD_value.SelectedValue, Double))
        End If

        submit.Visible = False
        btn_check_out.Visible = True
        Panel1.Visible = False

        Session("URL") = Request.Url.AbsoluteUri
        Response.Redirect("shopping_cart.aspx", True)

    End Sub

    Protected Sub btn_check_out_Click(sender As Object, e As System.EventArgs) Handles btn_check_out.Click
        Session("URL") = Request.Url.AbsoluteUri
        Response.Redirect("shopping_cart.aspx", True)
    End Sub
End Class
