
Partial Class contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT Page_Content FROM Pages_Data_File_Content WHERE Page_Name='ContactUs'"

        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        objConn.Open()
        Dim reader As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()
        While reader.Read
            ContactUsContent.Text = System.Net.WebUtility.HtmlDecode(reader("Page_Content").ToString())
        End While
        objConn.Close()
        objConn.Dispose()

    End Sub
End Class
