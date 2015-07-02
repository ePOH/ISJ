Imports CuteEditor
Imports System.IO
Imports ISJhelper
Imports System.Data
Imports System.Data.SqlClient

Partial Class searchProjects
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim mydataset As New DataSet
        If Not String.IsNullOrEmpty(Request("q")) Then
            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New SqlConnection(strConn)
            Dim strSQL As String = String.Concat("SELECT PDF.Project_ID, PDF.Project_Start_Date,PDF.Project_Name,PDF.Project_Slug,PDF.Project_About FROM Project_Data_File PDF WHERE ((PDF.Project_Name like '%", Request("q"), "%') OR (PDF.Project_Owner_First_Name like '%", Request("q"), "%'))")
            objConn.Open()
            Dim objAdpt As New SqlDataAdapter()

            Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
            objAdpt.SelectCommand = objComm
            objAdpt.SelectCommand.CommandType = CommandType.Text
            objAdpt.Fill(mydataset)
            objConn.Close()
            lst_SearchResult.DataSource = mydataset
            lst_SearchResult.DataBind()
        End If
    End Sub

End Class
