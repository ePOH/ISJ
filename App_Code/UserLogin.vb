Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System

Public Class UserLogin

    Private strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString

    Private objConn1 As New SqlConnection(strConn)


    Public Sub New()
        'By default, show the form tag

    End Sub

    Public Shared Function Isemailexist(ByVal email As String) As Boolean
        Dim result As Boolean = False
        Dim myerror As String = ""
        Try

            Dim paramEmail As Data.SqlClient.SqlParameter
            paramEmail = New Data.SqlClient.SqlParameter("@DEmail", Data.SqlDbType.VarChar, 50)
            paramEmail.Value = email

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New Data.SqlClient.SqlConnection(strConn)
            ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
            Dim strSQL As String = "SELECT Donor_Email FROM Donor_Master_File WHERE (Donor_Email = @DEmail )"
            objConn.Open()
            Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
            objComm.Parameters.Add(paramEmail)
            Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

            If objRead.Read() Then
                result = True
            End If

            objRead.Close()
            objConn.Close()
        Catch ex As Exception
            myerror += myerror + "444"
            myerror = ex.ToString

        End Try

        Return result

    End Function

    


    Public Shared Function IsAccountValidated(ByVal email As String) As Boolean
        Dim result As Boolean = False
        Dim myerror As String = ""
        Try

            Dim paramEmail As Data.SqlClient.SqlParameter
            paramEmail = New Data.SqlClient.SqlParameter("@DEmail", Data.SqlDbType.VarChar, 50)
            paramEmail.Value = email

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New Data.SqlClient.SqlConnection(strConn)
            ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
            Dim strSQL As String = "SELECT Donor_Email FROM Donor_Master_File WHERE (Donor_Email = @DEmail ) and  (Donor_Status = 1) and Donor_VID is  NULL"
            objConn.Open()
            Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
            objComm.Parameters.Add(paramEmail)
            Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

            If objRead.Read() Then
                result = True
            End If

            objRead.Close()
            objConn.Close()
        Catch ex As Exception
            myerror += myerror + "444"
            myerror = ex.ToString

        End Try

        Return result

    End Function

    Public Shared Sub AdminLog(ByVal email As String, ByVal Action As String, ByVal Affectedarea As String, Optional ByVal Description As String = "")

        Dim myerror As String = ""


        Dim sqlConn As SqlConnection
        Dim sqlCmd As SqlCommand
        Dim strConnection As String

        strConnection = ConfigurationManager.ConnectionStrings("ConnISJ").ToString
        sqlConn = New SqlConnection(strConnection)

        sqlCmd = New SqlCommand("adminlog", sqlConn)
        sqlCmd.CommandType = CommandType.StoredProcedure

        Try
            Dim paramEmail As SqlParameter
            paramEmail = New SqlParameter("@email", Data.SqlDbType.VarChar, 50)
            paramEmail.Value = email

            Dim paramAction As SqlParameter
            paramAction = New SqlParameter("@action", Data.SqlDbType.VarChar, 50)
            paramAction.Value = Action

            Dim paramAffectedArea As SqlParameter
            paramAffectedArea = New SqlParameter("@AffectedArea", Data.SqlDbType.VarChar, 50)
            paramAffectedArea.Value = Affectedarea

            Dim paramDescription As SqlParameter
            paramDescription = New SqlParameter("@Description", Data.SqlDbType.Text)
            paramDescription.Value = Description

            sqlCmd.Parameters.Add(paramEmail)
            sqlCmd.Parameters.Add(paramAction)
            sqlCmd.Parameters.Add(paramAffectedArea)
            sqlCmd.Parameters.Add(paramDescription)

            sqlCmd.Connection.Open()
            sqlCmd.ExecuteNonQuery()

        Catch ex As Exception
            myerror += myerror + "444"
            myerror = ex.ToString

        Finally

            sqlCmd.Connection.Close()
            sqlCmd.Dispose()
        End Try

    End Sub

    Public Shared Sub LoginAttempt(ByVal email As String, ByVal IPAddress As String, ByVal validAttempt As Boolean)

        Dim myerror As String = ""


        Dim sqlConn As SqlConnection
        Dim sqlCmd As SqlCommand
        Dim strConnection As String

        strConnection = ConfigurationManager.ConnectionStrings("ConnISJ").ToString
        sqlConn = New SqlConnection(strConnection)

        sqlCmd = New SqlCommand("LoginAttempt", sqlConn)
        sqlCmd.CommandType = CommandType.StoredProcedure

        'Try
        '    Dim paramEmail As SqlParameter
        '    paramEmail = New SqlParameter("@email", Data.SqlDbType.VarChar, 50)
        '    paramEmail.Value = email

        '    Dim paramAction As SqlParameter
        '    paramAction = New SqlParameter("@action", Data.SqlDbType.VarChar, 50)
        '    paramAction.Value = Action

        '    Dim paramAffectedArea As SqlParameter
        '    paramAffectedArea = New SqlParameter("@AffectedArea", Data.SqlDbType.VarChar, 50)
        '    paramAffectedArea.Value = Affectedarea

        '    Dim paramDescription As SqlParameter
        '    paramDescription = New SqlParameter("@Description", Data.SqlDbType.Text)
        '    paramDescription.Value = Description

        '    sqlCmd.Parameters.Add(paramEmail)
        '    sqlCmd.Parameters.Add(paramAction)
        '    sqlCmd.Parameters.Add(paramAffectedArea)
        '    sqlCmd.Parameters.Add(paramDescription)

        '    sqlCmd.Connection.Open()
        '    sqlCmd.ExecuteNonQuery()

        'Catch ex As Exception
        '    myerror += myerror + "444"
        '    myerror = ex.ToString

        'Finally

        '    sqlCmd.Connection.Close()
        '    sqlCmd.Dispose()
        'End Try

    End Sub

    Public Sub CreateuserAccount()

    End Sub


End Class
