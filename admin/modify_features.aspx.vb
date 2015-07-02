
Partial Class admin_modify_features
    Inherits System.Web.UI.Page

    Protected Sub btn_ModifyOrder_Click(sender As Object, e As System.EventArgs) Handles btn_ModifyOrder.Click
        Dim projectIds As New List(Of Integer)
        If Not hidden_features_order.Value = String.Empty Then

            Dim objConn As New Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString)
            Dim objComm As New Data.SqlClient.SqlCommand("Update_Featured_Projects", objConn)
            Dim param_ids As Data.SqlClient.SqlParameter
            param_ids = New Data.SqlClient.SqlParameter("@projectIds", Data.SqlDbType.VarChar, 500)
            param_ids.Value = hidden_features_order.Value
            objComm.Parameters.Add(param_ids)
            objComm.CommandType = Data.CommandType.StoredProcedure
            objConn.Open()
            objComm.ExecuteNonQuery()
            objConn.Close()

            ListBox1.DataBind()

        End If
    End Sub

    Protected Sub btn_ModifyOrder_Active_Click(sender As Object, e As System.EventArgs) Handles btn_ModifyOrder_Active.Click
        Dim projectIds As New List(Of Integer)
        If Not hidden_active_order.Value = String.Empty Then

            Dim objConn As New Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString)
            Dim objComm As New Data.SqlClient.SqlCommand("Update_Active_Projects", objConn)
            Dim param_ids As Data.SqlClient.SqlParameter
            param_ids = New Data.SqlClient.SqlParameter("@projectIds", Data.SqlDbType.VarChar, 500)
            param_ids.Value = hidden_active_order.Value
            objComm.Parameters.Add(param_ids)
            objComm.CommandType = Data.CommandType.StoredProcedure
            objConn.Open()
            objComm.ExecuteNonQuery()
            objConn.Close()

            listBoxActive.DataBind()

        End If
    End Sub

    Protected Sub btn_ModifyOrder_Completed_Click(sender As Object, e As System.EventArgs) Handles btn_ModifyOrder_Completed.Click
        Dim projectIds As New List(Of Integer)
        If Not hidden_completed_order.Value = String.Empty Then

            Dim objConn As New Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString)
            Dim objComm As New Data.SqlClient.SqlCommand("Update_Completed_Projects", objConn)
            Dim param_ids As Data.SqlClient.SqlParameter
            param_ids = New Data.SqlClient.SqlParameter("@projectIds", Data.SqlDbType.VarChar, 500)
            param_ids.Value = hidden_completed_order.Value
            objComm.Parameters.Add(param_ids)
            objComm.CommandType = Data.CommandType.StoredProcedure
            objConn.Open()
            objComm.ExecuteNonQuery()
            objConn.Close()

            listBoxCompleted.DataBind()

        End If
    End Sub


    Protected Sub btn_Modify_Click(sender As Object, e As System.EventArgs) Handles btn_Modify.Click
        'Dim msg As String = ""
        Dim li As ListItem
        For Each li In ListBox1.Items
            If li.Selected = True Then
                Dim param_id As Data.SqlClient.SqlParameter
                param_id = New Data.SqlClient.SqlParameter("@param_id", Data.SqlDbType.Int)
                param_id.Value = li.Value

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn2 As New Data.SqlClient.SqlConnection(strConn1)
                Dim strSQL2 As String = "DELETE FROM Project_Featured_Data_File WHERE (Project_ID = @param_id)"
                objConn2.Open()
                Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
                objComm2.Parameters.Add(param_id)
                objComm2.ExecuteNonQuery()
                UserLogin.AdminLog(Session("login_email"), "DELETED", "Project_Featured_Data_File", "Project_ID : " & li.Value)
                objComm2.Connection.Close()
                objConn2.Close()
                'msg = msg & "<br>" & li.Value & " selected."
            End If
        Next

        ListBox1.DataBind()
        ListBox2.DataBind()


    End Sub

    Protected Sub btn_Add_Click(sender As Object, e As System.EventArgs) Handles btn_Add.Click

        Dim li As ListItem
        For Each li In ListBox2.Items
            If li.Selected = True Then
                Dim param_id As Data.SqlClient.SqlParameter
                param_id = New Data.SqlClient.SqlParameter("@param_id", Data.SqlDbType.Int)
                param_id.Value = li.Value

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn2 As New Data.SqlClient.SqlConnection(strConn1)
                Dim strSQL2 As String = "INSERT INTO Project_Featured_Data_File (Project_ID, Project_Type) SELECT Project_ID, Project_Type FROM Project_Data_File WHERE (Project_ID = @param_id)"
                objConn2.Open()
                Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
                objComm2.Parameters.Add(param_id)
                objComm2.ExecuteNonQuery()
                UserLogin.AdminLog(Session("login_email"), "INSERT", "Project_Featured_Data_File", "Project_ID : " & li.Value)
                objComm2.Connection.Close()
                objConn2.Close()
            End If
        Next

        ListBox1.DataBind()
        ListBox2.DataBind()

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
