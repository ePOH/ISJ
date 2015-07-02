Imports AjaxControlToolkit

Partial Class _controls_popupLend
    Inherits System.Web.UI.UserControl
    Private m_TargetControlID As String = "Hid"

    Public WriteOnly Property TargetControlID() As String

        Set(ByVal value As String)
            m_TargetControlID = value

        End Set
    End Property

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Page_int(sender As Object, e As System.EventArgs) Handles Me.Init
        'ModalPopupExtender.ID = m_TargetControlID
        mpbb1f.ID = m_TargetControlID
        mpbb1f.TargetControlID = m_TargetControlID
    End Sub

    Protected Sub Getuseremail_pppopuplend(sender As Object, e As System.EventArgs)
        RegexUtilities.SendEmail(txtpppopuplenduseremail.Text)
    End Sub
End Class
