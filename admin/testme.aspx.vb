Imports RegexUtilities
Imports ISJhelper
Imports System.Web.Security.Membership


Partial Class admin_testme_
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'Randomize()
        'ltlerrormessage.Text = MessageFormatter.GetFormattedErrorMessage("Start")
        'Dim sTempStr1 As String
        'sTempStr1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        'sTempStr1 = Mid(sTempStr1, Int(Len(sTempStr1) * Rnd() + 1), 1)
        'ltlerrormessage.Text += MessageFormatter.GetFormattedErrorMessage(sTempStr1)
        'Dim sTempStr2 As String
        'sTempStr2 = "1234567890"
        'sTempStr2 = Mid(sTempStr2, Int(Len(sTempStr2) * Rnd() + 1), 1)
        'ltlerrormessage.Text += MessageFormatter.GetFormattedErrorMessage(sTempStr2)
        'Dim sTempStr3 As String
        'sTempStr3 = "][?/<~#`!@$%^&*()+=}|:;,>{}"
        'sTempStr3 = Mid(sTempStr3, Int(Len(sTempStr3) * Rnd() + 1), 1)
        'ltlerrormessage.Text += MessageFormatter.GetFormattedErrorMessage(sTempStr3)
        'Dim sTempStr As String, iTempLength As Integer, sTempRand As String = "", randID As String
        'sTempStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890][?/<~#`!@$%^&*()+=}|:;,>{}"
        'For iTempLength = 1 To 8
        '    sTempRand = sTempRand & Mid(sTempStr, Int(Len(sTempStr) * Rnd() + 1), 1)
        '    ltlerrormessage.Text += MessageFormatter.GetFormattedErrorMessage(sTempRand)
        'Next
        'randID = sTempStr1 & sTempRand & sTempStr3 & sTempStr2
        'ltlerrormessage.Text += MessageFormatter.GetFormattedErrorMessage(randID)

        'Dim tt As Membership

        'Dim pass As String = GeneratePassword(8, 2)
        'ltlerrormessage.Text += MessageFormatter.GetFormattedErrorMessage(pass)
        Dim TestString As String = "][/<~#!@$%*()+=}|>{}"
        Dim EncodedString As String = ""

        Me.lblencoder.Text = Server.HtmlEncode(TestString)
        Me.lbldecoder.Text = Server.HtmlDecode(TestString)


    End Sub

    Sub ValidateBtn_OnClick(sender As Object, e As EventArgs)
        If Page.IsValid Then
            lblOutput.Text = "Page is valid." + Server.HtmlEncode("&")
        Else
            lblOutput.Text = "Page is not valid!"
        End If
    End Sub
    Sub ServerValidation(source As Object, arguments As ServerValidateEventArgs)

        Dim num As Integer = Integer.Parse(arguments.Value)
        arguments.IsValid = ((num Mod 2) = 0)

    End Sub

End Class
