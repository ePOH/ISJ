
Partial Class admin_delete_project_chooser
    Inherits System.Web.UI.Page

    Protected Sub btn_mproject_Click(sender As Object, e As System.EventArgs) Handles btn_mproject.Click
        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn2 As New Data.SqlClient.SqlConnection(strConn1)
        Dim strSQL2 As String = "DELETE FROM Project_Data_File WHERE (Project_ID = " & DDL_Project_Title.SelectedValue & ")"
        objConn2.Open()
        Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
        objComm2.ExecuteNonQuery()
        UserLogin.AdminLog(Session("login_email"), "DELETED", "Project_Data_File", "Project_ID " & DDL_Project_Title.SelectedValue)
        objComm2.Connection.Close()
        objConn2.Close()

        Session("msg_admin") = "The Record has been deleted successfully."
        Response.Redirect("admin.aspx", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
End Class
