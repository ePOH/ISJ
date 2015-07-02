
Namespace ISJhelper


    Partial Public Class BasePage
        Inherits System.Web.UI.Page

        Public Shared Function Scrub(text As String) As String
            Return text.Replace("&nbsp;", "")

        End Function


    End Class

End Namespace