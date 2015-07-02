Imports Microsoft.VisualBasic

Public Class onelove

    Inherits System.Web.UI.Page

    Public Shared Function Scrubrr(text As String) As String
        Return text.Replace("&nbsp;", "")

    End Function

End Class
