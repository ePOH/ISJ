'Namespace employee.Helpers
Imports System.IO

Imports System.Data
Imports System.Web.UI.WebControls
Imports System.Web.UI
Imports System.Text

Namespace ISJhelper
    Public Class MessageFormatter
        Public Enum MessageType
            Success
            [Error]
            Notice
        End Enum


        Public Shared Function GetFormattedSuccessMessage(ByVal message As String) As String
            Return GetFormattedMessage(message, MessageType.Success)
        End Function

        Public Shared Function GetFormattedErrorMessage(ByVal message As String) As String
            Return GetFormattedMessage(message, MessageType.Error)
        End Function

        Public Shared Function GetFormattedNoticeMessage(ByVal message As String) As String
            Return GetFormattedMessage(message, MessageType.Notice)
        End Function

        Public Shared Function GetFormattedMessage(ByVal message As String, Optional ByVal messageType As MessageType = MessageType.Notice) As String
            Select Case messageType
                Case messageType.Success
                    Return "<div class='success'>" & message & "</div>"
                Case messageType.[Error]
                    Return "<div class='error'>" & message & "</div>"
                Case Else
                    Return "<div class='notice'>" & message & "</div>"
            End Select

        End Function

        Public Shared Sub PrintGrid(ByVal myGrid As GridView)
            Dim sw As New StringWriter()
            Dim hw As New HtmlTextWriter(sw)
            myGrid.RenderControl(hw)
            Dim gridHTML As String = sw.ToString().Replace("""", "'").Replace(System.Environment.NewLine, "")
            Dim sb As New StringBuilder()
            sb.Append("<script type = 'text/javascript'>")
            sb.Append("window.onload = new function(){")
            sb.Append("var printWin = window.open('', '', 'left=0")
            sb.Append(",top=0,width=1000,height=600,status=0');")
            sb.Append("printWin.document.write(""")
            'Dim gv As GridView = DirectCast(Me.FindControl("myGridId"), GridView)
            'sb.Append(gv)
            sb.Append(gridHTML)
            sb.Append(""");")
            sb.Append("printWin.document.close();")
            sb.Append("printWin.focus();")
            sb.Append("printWin.print();")
            sb.Append("printWin.close();};")
            sb.Append("</script>")
            ''Page.ClientScript.RegisterStartupScript(Me.[GetType](), "GridPrint", sb.ToString())

        End Sub

    End Class



End Namespace
'End Namespace
