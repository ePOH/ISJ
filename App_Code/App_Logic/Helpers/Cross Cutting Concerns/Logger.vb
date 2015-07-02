Imports System
Imports System.IO
Imports System.Web

Namespace ISJhelper

    Public NotInheritable Class Logger
        Private Sub New()
        End Sub

        Public Shared Sub LogError()
            Dim ex As System.Exception = System.Web.HttpContext.Current.Server.GetLastError()
            LogError(ex)

        End Sub

        Public Shared Sub LogError(ex As Exception)
            Dim currentContext = HttpContext.Current

            If ex.Message.Equals("File does not exist.") Then
                currentContext.ClearError()
                Return
            End If

            Dim logSummery As String, logDetails As String, filePath As String = "No file path found.", url As String = "No url found to be reported."

            If currentContext IsNot Nothing Then
                filePath = currentContext.Request.FilePath
                url = currentContext.Request.Url.AbsoluteUri
            End If

            logSummery = ex.Message
            logDetails = ex.ToString()

            '-----------------------------------------------------

            Dim path As String = System.Web.HttpContext.Current.Server.MapPath("~/App_Resources/system/log/log.txt")
            Dim fStream As New FileStream(path, FileMode.Append, FileAccess.Write)
            Dim bfs As New BufferedStream(fStream)
            Dim sWriter As New StreamWriter(bfs)

            'insert a separator line
            sWriter.WriteLine("=================================================================================================")

            'create log for header
            sWriter.WriteLine(logSummery)
            sWriter.WriteLine("Log time:" + DateTime.Now)
            sWriter.WriteLine("URL: " & url)
            sWriter.WriteLine("File Path: " & filePath)

            'create log for body
            sWriter.WriteLine(logDetails)

            'insert a separator line
            sWriter.WriteLine("=================================================================================================")

            sWriter.Close()

        End Sub
    End Class

End Namespace