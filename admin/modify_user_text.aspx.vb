
Partial Class admin_modify_user_text
    Inherits System.Web.UI.Page

    Protected Sub Page_InitComplete(sender As Object, e As System.EventArgs) Handles Me.InitComplete

        hf_u_access_level.Value = 2

        Dim dv As New Data.DataView
        dv = SQL_DS_Users.Select(DataSourceSelectArguments.Empty)
        tb_fname.Text = dv.Table.Rows(0)("User_First_Name")
        tb_lname.Text = dv.Table.Rows(0)("User_Last_Name")
        tb_email.Text = dv.Table.Rows(0)("User_Email")
        DDL_Status.SelectedValue = dv.Table.Rows(0)("User_Status")
        dv.Dispose()
        dv = Nothing

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub

    Protected Sub btn_muser_Click(sender As Object, e As System.EventArgs) Handles btn_muser.Click

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL1 As String = "UPDATE User_Master_File SET User_First_Name = '" & tb_fname.Text & "', User_Last_Name = '" & tb_lname.Text & "', User_Email = '" & tb_email.Text & "', User_Access_Level = " & hf_u_access_level.Value & ", User_Status = " & DDL_Status.SelectedValue & " WHERE (User_ID = " & Session("User_ID") & ")"
        objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        objComm1.ExecuteNonQuery()
        UserLogin.AdminLog(Session("login_email"), "UPDATE", "User_Master_File", "User_First_Name = " & tb_fname.Text & " User_Last_Name = " & tb_lname.Text & " User_Email = " & tb_email.Text & " User_Access_Level = " & hf_u_access_level.Value & ", User_Status = " & DDL_Status.SelectedValue & " WHERE (User_ID = " & Session("User_ID"))
        objComm1.Connection.Close()
        objConn1.Close()

        Session("msg_admin") = "User " & tb_fname.Text & " has been modified successfully."
        Response.Redirect("admin.aspx", True)

    End Sub
End Class
