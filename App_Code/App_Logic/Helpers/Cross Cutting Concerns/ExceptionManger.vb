
Imports System
Namespace ISJhelper


    Public NotInheritable Class ExceptionManager
        Public Shared Function DoLogAndGetFriendlyMessageForException(ex As Exception) As String
            Try
                Logger.LogError(ex)
            Catch e As Exception
            End Try

            Return GetFriendlyMessageForException(ex)
        End Function

        Public Shared Function GetFriendlyMessageForException(ex As Exception) As String
            Dim message As String = "Error: There was a problem while processing your request: " & Convert.ToString(ex.Message)

            If ex.InnerException IsNot Nothing Then
                Dim inner As Exception = ex.InnerException
                If TypeOf inner Is System.Data.Common.DbException Then
                    message = "Our database is currently experiencing problems. " + inner.Message
                ElseIf TypeOf inner Is NullReferenceException Then
                    message = "There are one or more required fields that are missing."
                ElseIf TypeOf inner Is ArgumentException Then
                    Dim paramName As String = DirectCast(inner, ArgumentException).ParamName
                    message = String.Concat("The ", paramName, " value is illegal.")
                ElseIf TypeOf inner Is ApplicationException Then
                    message = "Exception in application" + inner.Message
                Else
                    message = inner.Message

                End If
            End If

            Return MessageFormatter.GetFormattedErrorMessage(message)
        End Function
    End Class

End Namespace