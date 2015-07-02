Imports Microsoft.VisualBasic

Public Class ProjectDetail

    Property Project_ID() As Integer
    Property Project_Type() As Integer
    Property Project_Owner_First_Name() As String
    Property Project_Owner_Last_Name() As String
    Property Project_Name() As String
    Property Project_Short_Name() As String
    Property Project_Synopsys() As String
    Property Project_About() As String



    Public Shared Function GetById(ByVal projectId As Integer) As ProjectDetail
        Dim project As New ProjectDetail
        Try

            Dim strConn2 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn2 As New Data.SqlClient.SqlConnection(strConn2)
            ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
            Dim strSQL2 As String = "SELECT * FROM Project_Data_File WHERE (Project_ID = @ProjId)"

            Dim paramProject_ID As Data.SqlClient.SqlParameter
            paramProject_ID = New Data.SqlClient.SqlParameter("@ProjId", Data.SqlDbType.Int)
            paramProject_ID.Value = projectId
            objConn2.Open()
            Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
            objComm2.Parameters.Add(paramProject_ID)
            Dim objRead2 As Data.SqlClient.SqlDataReader = objComm2.ExecuteReader()

            If objRead2.Read() Then
                project.Project_ID = projectId
                project.Project_Owner_First_Name = objRead2.Item("Project_Owner_First_Name")
                project.Project_Owner_Last_Name = objRead2.Item("Project_Owner_Last_Name")
                project.Project_Type = objRead2.Item("Project_Type")
                project.Project_Name = objRead2.Item("Project_Name")
                project.Project_Short_Name = objRead2.Item("Project_Short_Name")
                project.Project_Synopsys = objRead2.Item("Project_Synopsys")
                project.Project_About = objRead2.Item("Project_About")

            End If

            objRead2.Close()
            objConn2.Close()
        Catch ex As Exception

        End Try

        Return project
    End Function


    Public Shared Function GetBySlug(ByVal slug As String) As ProjectDetail
        Dim project As New ProjectDetail
        Try

            Dim strConn2 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn2 As New Data.SqlClient.SqlConnection(strConn2)
            ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
            Dim strSQL2 As String = "SELECT * FROM Project_Data_File WHERE (Project_Slug = @slug)"

            Dim paramProject_ID As Data.SqlClient.SqlParameter
            paramProject_ID = New Data.SqlClient.SqlParameter("@slug", Data.SqlDbType.NVarChar)
            paramProject_ID.Value = slug
            objConn2.Open()
            Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
            objComm2.Parameters.Add(paramProject_ID)
            Dim objRead2 As Data.SqlClient.SqlDataReader = objComm2.ExecuteReader()

            If objRead2.Read() Then
                project.Project_ID = objRead2.Item("Project_ID")
                project.Project_Owner_First_Name = objRead2.Item("Project_Owner_First_Name")
                project.Project_Owner_Last_Name = If(objRead2.IsDBNull(objRead2.GetOrdinal("Project_Owner_Last_Name")), String.Empty, objRead2.Item("Project_Owner_Last_Name"))
                project.Project_Type = If(objRead2.IsDBNull(objRead2.GetOrdinal("Project_Type")), 0, objRead2.Item("Project_Type"))
                project.Project_Name = If(objRead2.IsDBNull(objRead2.GetOrdinal("Project_Name")), String.Empty, objRead2.Item("Project_Name"))
                project.Project_Short_Name = If(objRead2.IsDBNull(objRead2.GetOrdinal("Project_Short_Name")), String.Empty, objRead2.Item("Project_Short_Name"))
                project.Project_Synopsys = If(objRead2.IsDBNull(objRead2.GetOrdinal("Project_Synopsys")), String.Empty, objRead2.Item("Project_Synopsys"))
                project.Project_About = If(objRead2.IsDBNull(objRead2.GetOrdinal("Project_About")), String.Empty, objRead2.Item("Project_About"))

            End If

            objRead2.Close()
            objConn2.Close()
        Catch ex As Exception
            project = Nothing
        End Try

        Return project
    End Function

End Class
