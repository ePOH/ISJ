Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail
Imports System.IO
''Imports System.Web.Mail
Imports System.Data
Imports System
Imports System.Configuration
Imports System.Web
Imports System.Text


''for reiver not in code

Partial Class ABQipn
    '  Inherits System.Web.UI.Page
    '  Private CmdString As String,
    '      objHttp As String,
    '      Txn_id As String,
    '      Payment_status As String,
    '      Receiver_email As String,
    '      Custom As String, _
    'Payment_gross As String,
    'Payer_email As String,
    'Payment_fee As String,
    'Txn_type As String, _
    'First_name As String,
    'Last_name As String,
    'Notify_version As String,
    'Verify_sign As String


    '  Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
    '      ' assign posted variables to local variables
    '      Txn_id = Request.QueryString("txn_id")
    '      Payment_status = Request.QueryString("Payment_status")
    '      Receiver_email = Request.QueryString("Receiver_email")
    '      Custom = Request.QueryString("Custom")
    '      Payment_gross = Request.QueryString("Payment_gross")
    '      Payer_email = Request.QueryString("Payer_email")
    '      Payment_fee = Request.QueryString("Payment_fee")
    '      Txn_type = Request.QueryString("Txn_type")
    '      First_name = Request.QueryString("First_name")
    '      Last_name = Request.QueryString("Last_name")
    '      Notify_version = Request.QueryString("Notify_version")
    '      Verify_sign = Request.QueryString("Verify_sign")

    '      Dim strSandbox As String = "https://www.sandbox.paypal.com/cgi-bin/webscr"
    '      Dim strLive As String = "https://www.paypal.com/cgi-bin/webscr"
    '      Dim req As HttpWebRequest = CType(WebRequest.Create(strSandbox), HttpWebRequest)

    '      'Set values for the request back
    '      req.Method = "POST"
    '      req.ContentType = "application/x-www-form-urlencoded"
    '      Dim Param() As Byte = Request.BinaryRead(HttpContext.Current.Request.ContentLength)
    '      Dim strRequest As String = Encoding.ASCII.GetString(Param)
    '      strRequest = strRequest + "&cmd=_notify-validate"
    '      req.ContentLength = strRequest.Length

    '      ' post to paypal and await response : use: "https://www.paypal.com/cgi-bin/webscr" for real;
    '      Dim proxy As New WebProxy(New System.Uri("http://ntproxyus.lxa.perfora.net:3128"))
    '      req.Proxy = proxy

    '      'Send the request to PayPal and get the response
    '      Dim streamOut As StreamWriter = New StreamWriter(req.GetRequestStream(), Encoding.ASCII)
    '      streamOut.Write(strRequest)
    '      streamOut.Close()
    '      Dim streamIn As StreamReader = New StreamReader(req.GetResponse().GetResponseStream())
    '      Dim strResponse As String = streamIn.ReadToEnd()
    '      streamIn.Close()

    '      ' Process the response from PayPal.

    '      Select Case Txn_type
    '          Case "subscr_signup"
    '              'This IPN is for a subscription sign-up
    '              MakeActiveAd()
    '              MailUsTheItem("Ad Subscription Recieved")
    '              Exit Select
    '          Case "subscr_cancel"
    '              'This IPN is for a subscription cancellation
    '              MakeINActiveAd()
    '              MailUsTheItem("Ad Subscription Cancelled")
    '              Exit Select
    '          Case "subscr_failed"
    '              'This IPN is for a subscription payment failure
    '              MakeINActiveAd()
    '              MailUsTheItem("FAILURE: Subscription failed")
    '              Exit Select
    '          Case "subscr_payment"
    '              'This IPN is for a subscription payment
    '              MakeActiveAd()
    '              MailUsTheItem("Ad Payment Recieved")
    '              Exit Select
    '          Case "subscr_eot"
    '              'This IPN is for a subscription's end of term
    '              MakeINActiveAd()
    '              MailUsTheItem("FAILURE: Subscription end of term")
    '              Exit Select
    '      End Select
    '  End Sub
    '  Sub MailUsTheItem(ByVal TagMsg As String)
    '      Dim objMM As New MailMessage()
    '      Dim MailClient As New SmtpClient
    '      objMM.To.Add("christopher@christopherwhitson.com")
    '      objMM.From = New MailAddress("<ads@abqfind.com>")
    '      'objMM.BodyFormat = MailFormat.Text

    '      objMM.IsBodyHtml = False
    '      objMM.Priority = MailPriority.High
    '      objMM.Subject = TagMsg
    '      objMM.Body = TagMsg & " on the ABQfind Website at " + DateTime.Now & vbCrLf & vbCrLf & _
    '                  "Ad Id: " + Custom & vbCrLf & _
    '                  "Txn_id: " + Txn_id & vbCrLf & _
    '                  "Payer Email: " + Payer_email & vbCrLf & _
    '                  "Last Name: " + Last_name & vbCrLf & _
    '                  "First Name: " + First_name & vbCrLf & _
    '                  vbCrLf
    '      '' MailClient. = "smtp.1and1.com"
    '      MailClient.Host = "smtp.1and1.com"
    '      MailClient.Port = 25
    '      MailClient.UseDefaultCredentials = True
    '      'MailClient.Credentials = TheseCredentials

    '      'objMM.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "chris.whitson@abqshow.com")
    '      'objMM.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "1notoner2")
    '      'objMM.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 25)
    '      'objMM.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1)
    '      'objMM.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2)
    '      'objMM.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout", 10)
    '      'objMM.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", False)
    '      'objMM.
    '      MailClient.Send(objMM)

    '  End Sub
    '  Sub MakeActiveAd()
    '      Dim connectionString As String = ConfigurationManager.ConnectionStrings("DBConnectionString1").ConnectionString
    '      Dim updateSql As String = "UPDATE ad_listings SET bizFree = @bizFree WHERE adID = " & Custom
    '      Using myConnection As New SqlConnection(connectionString)
    '          myConnection.Open()
    '          Dim myCommand As New SqlCommand(updateSql, myConnection)
    '          myCommand.Parameters.AddWithValue("@bizFree", False)
    '          myCommand.Parameters.AddWithValue("@adId", Custom)
    '          myCommand.ExecuteNonQuery()
    '          myConnection.Close()
    '      End Using
    '  End Sub
    '  Sub MakeINActiveAd()
    '      Dim connectionString As String = ConfigurationManager.ConnectionStrings("DBConnectionString1").ConnectionString
    '      Dim updateSql As String = "UPDATE ad_listings SET bizFree = @bizFree WHERE adID = " & Custom
    '      Using myConnection As New SqlConnection(connectionString)
    '          myConnection.Open()
    '          Dim myCommand As New SqlCommand(updateSql, myConnection)
    '          myCommand.Parameters.AddWithValue("@bizFree", True)
    '          myCommand.Parameters.AddWithValue("@adId", Custom)
    '          myCommand.ExecuteNonQuery()
    '          myConnection.Close()
    '      End Using
    '  End Sub
    '  Sub LogTheError()
    '      Dim connectionString As String = ConfigurationManager.ConnectionStrings("AspNetSqlProvider").ConnectionString
    '      Dim insertSql As String = "INSERT INTO pmt_errors_log(adid, response, txn_id, txn_type, receiver_email, payment_status, payment_gross, timestamp) VALUES (@adid, @response, @txn_id, @txn_type, @receiver_email, @payment_status, @payment_gross, @timestamp)"
    '      Using myConnection As New SqlConnection(connectionString)
    '          myConnection.Open()
    '          Dim myCommand As New SqlCommand(insertSql, myConnection)
    '          myCommand.Parameters.AddWithValue("@adid", Custom)
    '          myCommand.Parameters.AddWithValue("@response", Response)
    '          myCommand.Parameters.AddWithValue("@txn_id", Txn_id)
    '          myCommand.Parameters.AddWithValue("@txn_type", Txn_type)
    '          myCommand.Parameters.AddWithValue("@receiver_email", Receiver_email)
    '          myCommand.Parameters.AddWithValue("@payment_status", Payment_status)
    '          myCommand.Parameters.AddWithValue("@payment_gross", Payment_gross)
    '          myCommand.Parameters.AddWithValue("@timestamp", DateTime.Now)
    '          myCommand.ExecuteNonQuery()
    '          myConnection.Close()
    '      End Using
    '  End Sub
End Class
