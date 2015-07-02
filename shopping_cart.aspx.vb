Imports CuteEditor
Imports System.IO
Imports ISJhelper
Imports System.Data
Imports System.Data.SqlClient

Partial Class shopping_cart
    Inherits System.Web.UI.Page

    Dim Cart As DataTable = New DataTable()
    Dim CartView As DataView
    <System.Web.Services.WebMethod(), System.Web.Script.Services.ScriptMethod()> _
    Public Shared Function GetSlides(ByVal contextKey As String) As AjaxControlToolkit.Slide()

        ''MsgBox(contextKey)

        Dim ProjectId As String = contextKey

        Dim dv As New Data.DataView
        dv = getmyimage(ProjectId).Tables(0).DefaultView

        Dim imgSlide(4) As AjaxControlToolkit.Slide


        imgSlide(0) = New AjaxControlToolkit.Slide(dv.Table.Rows(0)("Project_Image"), "", "")

        For i = 1 To 3
            If Not String.IsNullOrEmpty(dv.Table.Rows(0)("Project_Image" & i).ToString) Then
                imgSlide(i) = New AjaxControlToolkit.Slide(dv.Table.Rows(0)("Project_Image" & i), "", "")
            End If
        Next
        'imgSlide(1) = New AjaxControlToolkit.Slide(dv.Table.Rows(1)("Project_Image1"), "", "")
        'imgSlide(2) = New AjaxControlToolkit.Slide(dv.Table.Rows(2)("Project_Image2"), "", "")
        'imgSlide(3) = New AjaxControlToolkit.Slide(dv.Table.Rows(3)("Project_Image3"), "", "")

        Return (imgSlide)

    End Function

    Public Shared Function getmyimage(ByVal ProjectId As Integer) As DataSet
        '' MsgBox(ProjectId)
        Dim myerror As String = ""
        Dim mydataset As New DataSet
        '' mydataset = Nothing
        Try
            Dim paramProjectId As Data.SqlClient.SqlParameter
            paramProjectId = New Data.SqlClient.SqlParameter("@ProjectId", SqlDbType.Int)
            paramProjectId.Value = ProjectId

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New SqlConnection(strConn)
            ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
            Dim strSQL As String = "SELECT Project_Data_File.Project_Image,Project_Image1,Project_Image2,Project_Image3 FROM Project_Data_File  WHERE (Project_Data_File.Project_ID = @ProjectId) ORDER BY Project_Data_File.Project_Type, Project_Data_File.Project_Status "
            objConn.Open()
            Dim objAdpt As New SqlDataAdapter()

            Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
            objComm.Parameters.Add(paramProjectId)

            objAdpt.SelectCommand = objComm
            objAdpt.SelectCommand.CommandType = CommandType.Text
            '' objComm.Parameters.Add(paramEmail)

            objAdpt.Fill(mydataset)

            'If objRead.Read() Then
            '    result = True
            'End If

            'objRead.Close()

            objConn.Close()
        Catch ex As Exception

            myerror = ex.ToString
            myerror += myerror + "444"
        End Try

        Return mydataset

    End Function
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("d_login") <> "true" Then
            Session("URL") = Request.Url.AbsoluteUri
            Response.Redirect("login.aspx", True)
        End If

        'If Session("dt_s_Cart") Is Nothing Then
        '    ''    Response.Redirect("~/default.aspx", True)
        'End If
        ltlwarning.Text = MessageFormatter.GetFormattedNoticeMessage("The maximum amount you can give to each project is $500.00USD")

        If Not Session("sc_msg") Is Nothing Then
            lb_sc_msg.Visible = True
            lb_sc_msg.Text = MessageFormatter.GetFormattedNoticeMessage(Session("sc_msg"))
        Else
            lb_sc_msg.Visible = False
        End If

        Session.Remove("sc_msg")

        'If Session("d_login") = "true" Then
        '    hl_logout.Visible = True
        '    openLogin.Visible = False
        'Else
        '    hl_logout.Visible = False
        '    openLogin.Visible = True
        'End If

        cmd.Value = "_cart"
        upload.Value = 1
        currency_code.Value = "USD"
        button_subtype.Value = "services"
        business.Value = "isupportjamaica@jnbs.com"
        'business.Value = "testisupportjamaica@jnbs.com"
        'business.Value = "cnimblett-facilitator@hotmail.com"
        no_shipping.Value = 1
        [return].Value = "https://www.isupportjamaica.com/paypal.aspx"
        '[return].Value = "https://www.isupportjamaica.com/paypal_ipn.aspx"
        cancel_return.Value = "https://www.isupportjamaica.com/shopping_cart.aspx"
        rm.Value = 2

        If Len(Session("d_fid")) > 0 Then
            custom.Value = Session("d_fid")
        ElseIf Len(Session("d_login_id")) > 0 Then
            custom.Value = Session("d_login_id")
        End If

        GetSource()
        If Not IsPostBack Then
            BindList()
        End If

    End Sub

    Sub BindList()

        ItemsList.DataSource = CartView
        ItemsList.DataBind()

    End Sub

    Sub GetSource()

        If Session("dt_s_Cart") Is Nothing Then

            Cart.Columns.Add(New DataColumn("P_ID", GetType(Int32)))
            Cart.Columns.Add(New DataColumn("P_Name", GetType(String)))
            Cart.Columns.Add(New DataColumn("P_Amt", GetType(Double)))
            Dim primaryKey(0) As Data.DataColumn
            primaryKey(0) = Cart.Columns("P_ID")
            Cart.PrimaryKey = primaryKey

            Session("dt_s_Cart") = Cart

        Else

            Cart = CType(Session("dt_s_Cart"), DataTable)

        End If

        CartView = New DataView(Cart)
        CartView.Sort = "P_Name"

        Return

    End Sub

    Sub Edit_Command(sender As Object, e As DataListCommandEventArgs)
        Disablebuttons(False)
        ItemsList.EditItemIndex = e.Item.ItemIndex
        BindList()

    End Sub

    Sub Cancel_Command(sender As Object, e As DataListCommandEventArgs)

        ItemsList.EditItemIndex = -1
        BindList()
        Disablebuttons(True)

    End Sub

    Sub Delete_Command(sender As Object, e As DataListCommandEventArgs)

        Dim item As String = (CType(e.Item.FindControl("ItemLabel"), Label)).Text

        CartView.RowFilter = "P_Name='" & Replace(item, "'", "''") & "'"
        If CartView.Count > 0 Then

            CartView.Delete(0)

        End If
        CartView.RowFilter = ""

        ItemsList.EditItemIndex = -1
        BindList()
        Disablebuttons(True)

    End Sub

    Sub Update_Command(sender As Object, e As DataListCommandEventArgs)
        Disablebuttons(True)
        Dim item As String = _
            (CType(e.Item.FindControl("ItemLabel"), Label)).Text
        Dim qty As String = _
            (CType(e.Item.FindControl("QtyTextBox"), TextBox)).Text
        Dim price As String = _
            (CType(e.Item.FindControl("PriceTextBox"), DropDownList)).SelectedValue



        CartView.RowFilter = "P_Name='" & Replace(item, "'", "''") & "'"
        If CartView.Count > 0 Then

            CartView.Delete(0)

        End If
        CartView.RowFilter = ""

        Dim dr As DataRow = Cart.NewRow()
        dr(0) = qty
        dr(1) = item


        ''''''''
        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
        Dim strSQL1 As String = "SELECT SUM(Donor_Transaction_Data_File.Project_Amount) AS GTotal FROM Paypal_Transaction_Data_File INNER JOIN Donor_Transaction_Data_File ON Paypal_Transaction_Data_File.Transaction_ID = Donor_Transaction_Data_File.Paypal_Transaction_ID WHERE (Payment_Date > DATEADD(YYYY, - 1, GETDATE())) AND (Donor_Transaction_Data_File.Donor_ID = " & Session("d_login_id") & ") AND (Donor_Transaction_Data_File.Payment_Status = 1) AND (Donor_Transaction_Data_File.Project_ID = @Pid)"
        objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)

        Dim Project_ID As Data.SqlClient.SqlParameter
        Project_ID = New Data.SqlClient.SqlParameter("@Pid", Data.SqlDbType.Int)
        Project_ID.Value = qty
        objComm1.Parameters.Add(Project_ID)
        Dim objRead1 As Data.SqlClient.SqlDataReader = objComm1.ExecuteReader()

        If objRead1.Read() Then
            If Not objRead1.Item("GTotal") Is DBNull.Value Then
                Dim editamount As Double
                If price.Chars(0) = "$" Then
                    editamount = Convert.ToDouble(price.Substring(1))
                Else
                    editamount = Convert.ToDouble(price)
                End If

                If objRead1.Item("GTotal") + CType(editamount, Double) >= 500 Then
                    Session("sc_msg") = "You have exceeded your limit for this project by $" & objRead1.Item("GTotal") + CType(editamount, Double) - 500 & ".00"
                    objRead1.Close()
                    objConn1.Close()
                    Session("URL") = Request.Url.AbsoluteUri
                    Response.Redirect("shopping_cart.aspx", True)
                End If
            End If
        End If
        objRead1.Close()
        objConn1.Close()


        '''''''


        If price.Chars(0) = "$" Then

            dr(2) = Convert.ToDouble(price.Substring(1))

        Else

            dr(2) = Convert.ToDouble(price)

        End If

        Cart.Rows.Add(dr)

        ItemsList.EditItemIndex = -1
        BindList()

    End Sub

    Protected Sub btn_continue_Click(sender As Object, e As System.EventArgs) Handles btn_continue.Click
        Response.Redirect("~/projects.aspx", True)
    End Sub

    Protected Sub ItemsList_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.DataListItemEventArgs) Handles ItemsList.ItemDataBound

        For i = 0 To ItemsList.Items.Count
            ClientScript.RegisterHiddenField("item_number_" & i + 1, Convert.ToInt16((CType(e.Item.DataItem, Data.DataRowView)).Row.ItemArray(0).ToString()))
            ClientScript.RegisterHiddenField("item_name_" & i + 1, Convert.ToString((CType(e.Item.DataItem, Data.DataRowView)).Row.ItemArray(1).ToString()))
            ClientScript.RegisterHiddenField("amount_" & i + 1, Convert.ToDecimal((CType(e.Item.DataItem, Data.DataRowView)).Row.ItemArray(2).ToString()))
        Next

        Dim paramPid As Data.SqlClient.SqlParameter
        paramPid = New Data.SqlClient.SqlParameter("@ProjId", Data.SqlDbType.Int, 4)
        paramPid.Value = Convert.ToDouble((CType(e.Item.DataItem, Data.DataRowView)).Row.ItemArray(0).ToString())

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT * FROM Project_Data_File WHERE (Project_ID = @ProjId)"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        objComm.Parameters.Add(paramPid)
        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then

            Dim ddl As DropDownList = DirectCast(e.Item.FindControl("PriceTextBox"), DropDownList)
            Dim c_amt As Decimal = FormatNumber(objRead.Item("Project_Goal") - objRead.Item("Project_Raised"), 2)
            Dim dv As New Data.DataView
            dv = SQL_DS_DD_Value.Select(DataSourceSelectArguments.Empty)
            Dim cnum As Integer = dv.Count

            Dim cnum1 As String = ""
            Dim i As Integer = 0
            'Dim a_lst As New List(Of Decimal)
            ddl.Items.Clear()
            For i = 0 To cnum - 1
                If dv.Table.Rows(i)("DD_Value_ID") < c_amt Then
                    ddl.Items.Add(New ListItem(CType(dv.Table.Rows(i)("DD_Value"), String), CType(dv.Table.Rows(i)("DD_Value_ID"), Double)))
                End If
            Next
            If c_amt <= 501 Then
                ddl.Items.Add(New ListItem("$" & CType(c_amt, String), CType(c_amt, Double)))
            End If

            ddl.SelectedValue = Convert.ToDecimal((CType(e.Item.DataItem, Data.DataRowView)).Row.ItemArray(2).ToString())

            objRead.Close()
            objConn.Close()
            If dv.Table.Rows.Count <= 0 Then
                Response.Redirect("~/project.aspx", True)
            End If
        End If

    End Sub

    Protected Sub btn_paypal_Click(sender As Object, e As System.EventArgs) Handles btn_paypal.Click
        ItemsList.Enabled = False
    End Sub


    Protected Sub Disablebuttons(ByVal value As Boolean)

        btn_continue.Enabled = value
        btn_paypal.Enabled = value

    End Sub

End Class
