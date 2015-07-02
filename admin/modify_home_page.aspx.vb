Imports System.Data.SqlClient
Imports System.Data

Partial Class admin_modify_home_page
    Inherits System.Web.UI.Page
    Dim InsertParameters As List(Of SqlParameter) = New List(Of SqlParameter)

    Protected Sub btn_Modify_Click(sender As Object, e As System.EventArgs) Handles btn_Modify.Click

        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn2 As New Data.SqlClient.SqlConnection(strConn1)
        Dim strSQL2 As String = "DELETE FROM Home_Page_Data_File"
        objConn2.Open()
        Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
        objComm2.ExecuteNonQuery()
        objComm2.Connection.Close()
        objConn2.Close()

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL1 As String = "INSERT INTO Home_Page_Data_File (Project_ID) VALUES (" & DDL_PGS.SelectedValue & "), (" & DDL_PGA.SelectedValue & "), (" & DDL_BLS.SelectedValue & "), (" & DDL_BLA.SelectedValue & ")"
        objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        objComm1.ExecuteNonQuery()
        objComm1.Connection.Close()
        objConn1.Close()

        Session("msg_admin") = "Home Page Updated Successfully!"
        Response.Redirect("admin.aspx", True)

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If

    End Sub

    Protected Sub Page_LoadComplete(sender As Object, e As System.EventArgs) Handles Me.LoadComplete

        'Dim dv As New Data.DataView
        'Dim yy As Integer
        'Dim lI As ListItem
        'Dim pp As String
        'dv = SQL_DS_Projects.Select(DataSourceSelectArguments.Empty)
        'yy = DDL_PGS.Items.Count
        ' ''   pp = DDL_PGS.Items.Item(0).Text
        'If Not IsNothing(DDL_PGS.Items.FindByValue(dv.Table.Rows(1)("Project_ID"))) Then
        '    DDL_PGS.SelectedValue = dv.Table.Rows(1)("Project_ID")
        'End If
        'If DDL_PGS.Items.FindByValue(dv.Table.Rows(1)("Project_ID")) IsNot Nothing Then
        '    yy = dv.Table.Rows(1)("Project_ID")
        '    DDL_PGS.SelectedValue = dv.Table.Rows(1)("Project_ID")
        'Else
        '    lI = DDL_PGS.Items.FindByValue(dv.Table.Rows(1)("Project_ID"))
        'End If

        'If Not IsNothing(DDL_PGA.Items.FindByValue(dv.Table.Rows(0)("Project_ID"))) Then
        '    DDL_PGA.SelectedValue = dv.Table.Rows(0)("Project_ID")
        'End If
        'If DDL_PGA.Items.FindByValue(dv.Table.Rows(0)("Project_ID")) IsNot Nothing Then
        '    DDL_PGA.SelectedValue = dv.Table.Rows(0)("Project_ID")
        'End If

        'If DDL_BLS.Items.FindByValue(dv.Table.Rows(3)("Project_ID")) IsNot Nothing Then
        '    ''  DDL_BLS.SelectedValue = dv.Table.Rows(3)("Project_ID")
        'End If

        'If DDL_BLA.Items.FindByValue(dv.Table.Rows(2)("Project_ID")) IsNot Nothing Then
        '    DDL_BLA.SelectedValue = dv.Table.Rows(2)("Project_ID")
        'End If


    End Sub

    Protected Sub DDL_PGS_DataBound(sender As Object, e As System.EventArgs) Handles DDL_PGS.DataBound
        Dim dv As New Data.DataView
        dv = SQL_DS_Projects.Select(DataSourceSelectArguments.Empty)
        Dim tt As Integer
        tt = dv.Count
        If dv.Count <> 0 AndAlso dv.Count > 1 AndAlso DDL_PGS.Items.FindByValue(dv.Table.Rows(1)("Project_ID")) IsNot Nothing Then
            DDL_PGS.SelectedValue = dv.Table.Rows(1)("Project_ID")
        End If

    End Sub

    Protected Sub DDL_PGA_DataBound(sender As Object, e As System.EventArgs) Handles DDL_PGA.DataBound
        Dim dv As New Data.DataView
        dv = SQL_DS_Projects.Select(DataSourceSelectArguments.Empty)
        Dim tt As Integer
        tt = dv.Count
        If dv.Count <> 0 AndAlso DDL_PGA.Items.FindByValue(dv.Table.Rows(0)("Project_ID")) IsNot Nothing Then
            DDL_PGA.SelectedValue = dv.Table.Rows(0)("Project_ID")
        End If
    End Sub

    Protected Sub DDL_BLS_DataBound(sender As Object, e As System.EventArgs) Handles DDL_BLS.DataBound
        Dim dv As New Data.DataView
        dv = SQL_DS_Projects.Select(DataSourceSelectArguments.Empty)
        If dv.Count <> 0 AndAlso dv.Count > 3 AndAlso DDL_BLS.Items.FindByValue(dv.Table.Rows(3)("Project_ID")) IsNot Nothing Then
            DDL_BLS.SelectedValue = dv.Table.Rows(3)("Project_ID")
        End If
    End Sub

    Protected Sub DDL_BLA_DataBound(sender As Object, e As System.EventArgs) Handles DDL_BLA.DataBound
        Dim dv As New Data.DataView
        dv = SQL_DS_Projects.Select(DataSourceSelectArguments.Empty)
        If dv.Count <> 0 AndAlso dv.Count > 2 AndAlso DDL_BLA.Items.FindByValue(dv.Table.Rows(2)("Project_ID")) IsNot Nothing Then
            DDL_BLA.SelectedValue = dv.Table.Rows(2)("Project_ID")
        End If
    End Sub

    Protected Sub btnStaffLikes_Click(sender As Object, e As System.EventArgs) Handles btnStaffLikes.Click
        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        
        Dim paramProject_ID As Data.SqlClient.SqlParameter
        paramProject_ID = New Data.SqlClient.SqlParameter("@Project_ID", Data.SqlDbType.Int)
        paramProject_ID.Value = ddlStaffLikes.SelectedValue

        Dim paramDescription As Data.SqlClient.SqlParameter
        paramDescription = New Data.SqlClient.SqlParameter("@Description", Data.SqlDbType.VarChar, -1)
        paramDescription.Value = txtdescription.Text



        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL1 As String = "INSERT INTO Project_StaffLikes (Project_ID,Description) VALUES (@Project_ID,@Description)"
        objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        objComm1.Parameters.Add(paramProject_ID)
        objComm1.Parameters.Add(paramDescription)
        objComm1.ExecuteNonQuery()
        objComm1.Connection.Close()
        objConn1.Close()

        Session("msg_admin") = "Home Page Staff Likes Updated Successfully!"
        Response.Redirect("admin.aspx", True)
    End Sub

    Protected Sub GridView1_RowUpdating(sender As Object, e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

        Dim path As String
        Dim savepath As String
        Dim imgpath As String

        Dim row As GridViewRow = GridView1.Rows(e.RowIndex)
        Dim flUp As FileUpload = DirectCast(row.FindControl("EditFileUpload"), FileUpload)

        Dim cbPhotodel As CheckBox = DirectCast(row.FindControl("cbFiledel"), CheckBox)
        Dim lblfileURL As Label = DirectCast(row.FindControl("lblfileURL"), Label)
        If cbPhotodel.Checked AndAlso lblfileURL IsNot Nothing AndAlso Not String.IsNullOrEmpty(lblfileURL.Text) Then
            e.NewValues("Url") = DBNull.Value
        Else
            If flUp.HasFile Then
                'path = MapPath("~/images/banner/" & flUp.FileName)
                savepath = MapPath("~/images/banner/" & flUp.FileName)
                flUp.SaveAs(savepath)
                imgpath = "images/banner/" & flUp.FileName
                e.NewValues("Url") = imgpath
            End If
        End If


      

        'Reset the edit index.
    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "NoDataInsert" Or e.CommandName = "Insert" Then

            Dim Title As TextBox
            Dim Upload As FileUpload

            If e.CommandName = "NoDataInsert" Then
                Title = GridView1.Controls(0).Controls(0).FindControl("NoDataDocType")
                Upload = GridView1.Controls(0).Controls(0).FindControl("NoDataFileUpload")

            Else
                Title = GridView1.FooterRow.FindControl("txtfootertitle")
                Upload = GridView1.FooterRow.FindControl("FileUpload")

            End If
            If Upload IsNot Nothing AndAlso Upload.HasFile Then


                Dim Titlesql As SqlParameter
                Dim Uploadsql As SqlParameter

                Titlesql = New SqlParameter("@Title", SqlDbType.VarChar, 100)
                Titlesql.Direction = ParameterDirection.Input
                Titlesql.Value = Title.Text

                Uploadsql = New SqlParameter("@URL", SqlDbType.VarChar, 200)
                Uploadsql.Direction = ParameterDirection.Input
                Dim savepath As String

                If Upload.PostedFile IsNot Nothing AndAlso Upload.PostedFile.FileName <> "" Then
                    '' If Upload.PostedFile IsNot Nothing AndAlso Not String.IsNullOrEmpty(Upload.FileName) Then
                    savepath = MapPath("~/images/banner/" & Upload.FileName)
                    Upload.SaveAs(savepath)
                    Uploadsql.Value = "images/banner/" & Upload.FileName

                Else
                    Uploadsql.Value = DBNull.Value
                End If

                InsertParameters.Add(Titlesql)
                InsertParameters.Add(Uploadsql)

                Try
                    Me.SqlDataSourceImages.Insert()
                Catch ex As SqlException

                End Try
            End If


        End If
    End Sub

    Protected Sub SqlDataSourcedocument_Inserting(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs) Handles SqlDataSourceImages.Inserting
        e.Command.Parameters.Clear()
        Dim p As SqlParameter
        For Each p In InsertParameters
            e.Command.Parameters.Add(p)
        Next
    End Sub
End Class
