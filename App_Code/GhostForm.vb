Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports System.Web.UI.HtmlControls

''' <summary>
''' This is a special form that can _not_ render the actual form tag, but always render the contents
''' </summary>
Public Class GhostForm
    Inherits System.Web.UI.HtmlControls.HtmlForm
    Protected _render As Boolean

    Public Property RenderFormTag() As Boolean
        Get
            Return _render
        End Get
        Set(value As Boolean)
            _render = value
        End Set
    End Property

    Public Sub New()
        'By default, show the form tag
        _render = True
    End Sub

    Protected Overrides Sub RenderBeginTag(writer As HtmlTextWriter)
        'Only render the tag when _render is set to true
        If _render Then
            MyBase.RenderBeginTag(writer)
        End If
    End Sub

    Protected Overrides Sub RenderEndTag(writer As HtmlTextWriter)
        'Only render the tag when _render is set to true
        If _render Then
            MyBase.RenderEndTag(writer)
        End If
    End Sub
End Class
