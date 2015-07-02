
Partial Class admin_update_contactus
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
			GetData()
		End If

    End Sub
	
	Sub GetData()
		Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT Page_Content FROM Pages_Data_File_Content WHERE Page_Name='ContactUs'"

        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        objConn.Open()
        Dim reader As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()
        While reader.Read
            ContactUs_TextBox.Text = System.Net.WebUtility.HtmlDecode(reader("Page_Content").ToString())
        End While
        objConn.Close()
        objConn.Dispose()
	End Sub

    Protected Sub btn_mproject_Click(sender As Object, e As System.EventArgs) Handles button_update_contact_us.Click
		
	 
        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "UPDATE Pages_Data_File_Content SET Page_Content=@PageContent WHERE Page_Name='ContactUs'"
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
		
        Dim PageContent As Data.SqlClient.SqlParameter
        PageContent = New Data.SqlClient.SqlParameter("@PageContent", Data.SqlDbType.NVarChar)
        PageContent.Value = System.Net.WebUtility.HtmlEncode(ContactUs_TextBox.Text)

        objComm.Parameters.Add(PageContent)
        objConn.Open()
        objComm.ExecuteNonQuery()
        objConn.Close()
        
		
		
    End Sub
End Class
