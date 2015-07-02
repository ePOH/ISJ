Imports System.Net
Imports System.Net.Mail
Imports System.Net.Security
Imports System.Security.Cryptography.X509Certificates
Imports Microsoft.VisualBasic

Public Class EmailManager

    Inherits System.Web.UI.Page

    Public Shared Sub SendEmail(ByVal sMsg As String, ByVal subject As String, ByVal emailAddress As String, ByVal displayName As String, ByVal from As String, ByVal bcc As Dictionary(Of String, String))

        Dim defaultEmailAddresses = ConfigurationManager.AppSettings("DefaultEmailAddress")
        Dim NetMail As New Net.Mail.MailMessage
        Dim MailClient As New Net.Mail.SmtpClient

        Try
            'ServicePointManager.ServerCertificateValidationCallback = New System.Net.Security.RemoteCertificateValidationCallback(AddressOf customCertValidation)


            NetMail.From = New Net.Mail.MailAddress(from)

            If (Not String.IsNullOrEmpty(defaultEmailAddresses)) Then
                Dim toDefault = defaultEmailAddresses.Split(New [Char]() {";"c})
                For Each defEmail As String In toDefault
                    NetMail.To.Add(New Net.Mail.MailAddress(defEmail, String.Empty))
                Next
            Else
                NetMail.To.Add(New Net.Mail.MailAddress(emailAddress, displayName))

                If (bcc IsNot Nothing) Then
                    For Each item As KeyValuePair(Of String, String) In bcc
                        NetMail.Bcc.Add(New Net.Mail.MailAddress(item.Key, item.Value))
                    Next
                End If
            End If


            NetMail.IsBodyHtml = True
            NetMail.Subject = subject
            NetMail.Body = sMsg
            MailClient.Host = "127.0.0.1" '"cloud.epohjm.com"
            MailClient.Port = 25 '587
            MailClient.UseDefaultCredentials = True 'False
            MailClient.DeliveryMethod = SmtpDeliveryMethod.Network
            'MailClient.Credentials = New NetworkCredential("victorl@epohjm.com", "bU8WfD&Kg1tB")
            'MailClient.EnableSsl = True
            MailClient.Send(NetMail)

        Catch EXC As Exception
            Throw
        Finally
            NetMail.Dispose()
            NetMail = Nothing
            MailClient = Nothing
        End Try
    End Sub
    Private Shared Function customCertValidation(ByVal sender As Object, _
                                                ByVal cert As X509Certificate, _
                                                ByVal chain As X509Chain, _
                                                ByVal errors As SslPolicyErrors) As Boolean

        Return True

    End Function

End Class
