''Imports Microsoft.VisualBasic
Imports System.Globalization
Imports System.Text.RegularExpressions
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System


Public Class RegexUtilities
    Dim invalid As Boolean = False

    Public Function IsValidEmail(ByVal strIn As String) As Boolean
        invalid = False
        If String.IsNullOrEmpty(strIn) Then Return False

        ' Use IdnMapping class to convert Unicode domain names.
        strIn = Regex.Replace(strIn, "(@)(.+)$", AddressOf Me.DomainMapper)
        If invalid Then Return False

        ' Return true if strIn is in valid e-mail format.
        Return Regex.IsMatch(strIn, _
               "^(?("")(""[^""]+?""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" + _
               "(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9]{2,17}))$",
               RegexOptions.IgnoreCase)
    End Function

    Private Function DomainMapper(ByVal match As Match) As String
        ' IdnMapping class with default property values.
        Dim idn As New IdnMapping()

        Dim domainName As String = match.Groups(2).Value
        Try
            domainName = idn.GetAscii(domainName)
        Catch e As ArgumentException
            invalid = True
        End Try
        Return match.Groups(1).Value + domainName
    End Function


    Public Shared Function IsNameValid(ByVal name As String) As Boolean

        If name.Length > 0 Then
            If Regex.IsMatch(name, "^[a-zA-Z''-'\s]{1,40}$") Then
                Return True
            Else
                Return False

            End If
        End If
        Return False

    End Function

    Public Shared Sub SendEmail(ByVal email As String)
        Dim reg As New RegexUtilities
        Dim myerror As String = ""
        If reg.IsValidEmail(email) = True Then

            Dim sqlConn As SqlConnection
            Dim sqlCmd As SqlCommand
            Dim strConnection As String
            Dim paramEmail As SqlParameter

            strConnection = ConfigurationManager.ConnectionStrings("ConnISJ").ToString
            sqlConn = New SqlConnection(strConnection)

            sqlCmd = New SqlCommand("proposedBusinessMail", sqlConn)
            sqlCmd.CommandType = CommandType.StoredProcedure

            Try


                paramEmail = New SqlParameter("@Email", Data.SqlDbType.VarChar, 50)
                paramEmail.Direction = ParameterDirection.Input
                paramEmail.Value = email
                sqlCmd.Parameters.Add(paramEmail)

                sqlCmd.Connection.Open()
                sqlCmd.ExecuteNonQuery()

            Catch ex As Exception
                myerror += myerror + "444"
                myerror = ex.ToString
            Finally

                sqlCmd.Connection.Close()
                sqlCmd.Dispose()
            End Try

        End If

    End Sub



End Class
