Imports System.Net
Imports System.IO
Partial Class paypal_ipn_new
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Dim strSandbox As String = "https://www.sandbox.paypal.com/cgi-bin/webscr"
        Dim strLive As String = "https://www.paypal.com/cgi-bin/webscr"
        Dim req As HttpWebRequest = CType(WebRequest.Create(strSandbox), HttpWebRequest)

        req.Method = "POST"
        req.ContentType = "application/x-www-form-urlencoded"
        Dim Param() As Byte = Request.BinaryRead(HttpContext.Current.Request.ContentLength)
        Dim strRequest As String = Encoding.ASCII.GetString(Param)
        strRequest = strRequest + "&cmd=_notify-validate"
        req.ContentLength = strRequest.Length

        Dim streamOut As StreamWriter = New StreamWriter(req.GetRequestStream(), Encoding.ASCII)
        streamOut.Write(strRequest)
        streamOut.Close()
        Dim streamIn As StreamReader = New StreamReader(req.GetResponse().GetResponseStream())
        Dim strResponse As String = streamIn.ReadToEnd()
        streamIn.Close()

        'If strResponse = "VERIFIED" And Request("receiver_email") = "cnimblett-facilitator@hotmail.com" Then
        ''If strResponse = "VERIFIED" And Request("receiver_email") = "testisupportjamaica@jnbs.com" Then
        If strResponse = "VERIFIED" And Request("receiver_email") = "isupportjamaica@jnbs.com" Then
            Dim paramDate As Data.SqlClient.SqlParameter
            paramDate = New Data.SqlClient.SqlParameter("@P_Date", Data.SqlDbType.DateTime)
            paramDate.Value = Left(Request("payment_date"), 21)
            Dim mc_gross As Decimal = Request("mc_gross")
            Dim donor_id As Integer = Request("custom")

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New Data.SqlClient.SqlConnection(strConn)
            Dim strSQL As String = "UPDATE Paypal_Transaction_Data_File SET Payment_Status = '" & Request("payment_status") & "', Pending_Reason = '" & Request("pending_reason") & "' WHERE (Transaction_ID = '" & Request("txn_id") & "')"
            strSQL += " IF @@ROWCOUNT=0 "
            strSQL += "INSERT INTO Paypal_Transaction_Data_File (Transaction_ID, Payment_Date, Payer_Email, Business, Payer_ID, Item_Number, Item_Name, Transaction_Type, Payment_Status, Pending_Reason, Payment_Type, MC_Gross, MC_Fee, MC_Currency, First_Name, Last_Name, Address_Street, Address_City, Address_State, Address_Zip, Address_Country, Donor_ID) VALUES ('" & Request("txn_id") & "', @P_Date, '" & Request("payer_email") & "', '" & Request("business") & "', '" & Request("payer_id") & "', '" & Request("item_number") & "', '" & Request("item_name") & "', '" & Request("txn_type") & "', '" & Request("payment_status") & "', '" & Request("pending_reason") & "', '" & Request("payment_type") & "', " & mc_gross & ", '" & Request("mc_fee") & "', '" & Request("mc_currency") & "', '" & Request("first_name") & "', '" & Request("last_name") & "', '" & Request("address_street") & "', '" & Request("address_city") & "', '" & Request("address_state") & "', '" & Request("address_zip") & "', '" & Request("address_country") & "', " & donor_id & ")"
            objConn.Open()
            Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
            objComm.Parameters.Add(paramDate)
            objComm.ExecuteNonQuery()
            objComm.Connection.Close()
            objConn.Close()

            Dim i As Integer
            For i = 1 To Request("num_cart_items")

                Dim P_ID As String
                Dim P_Amt As String
                If Request("num_cart_items") > 1 Then
                    P_ID = Request("item_number" & i)
                    P_Amt = Request("mc_gross_" & i)
                Else
                    P_ID = Request("item_number1")
                    P_Amt = Request("mc_gross_1")
                End If

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
                Dim strSQL1 As String

                If Request("payment_status") = "Completed" Or Request("payment_status") = "Processed" Then
                    strSQL1 = "UPDATE Donor_Transaction_Data_File SET Payment_Status = 1 WHERE (Paypal_Transaction_ID = '" & Request("txn_id") & "') AND (NOT (Payment_Status = 1))"
                    strSQL1 += " IF @@ROWCOUNT=0 "
                    strSQL1 = "INSERT INTO Donor_Transaction_Data_File (Donor_ID, Paypal_Transaction_ID, Project_ID, Project_Amount, Payment_Status) VALUES (" & Request("custom") & ", '" & Request("txn_id") & "', '" & P_ID & "', '" & P_Amt & "', 1)"
                    strSQL1 += " IF @@ROWCOUNT>0 "
                    strSQL1 += "UPDATE Project_Data_File SET Project_Raised = Project_Raised + '" & P_Amt & "' WHERE (Project_ID = " & P_ID & ")"
                Else
                    strSQL1 = "INSERT INTO Donor_Transaction_Data_File (Donor_ID, Paypal_Transaction_ID, Project_ID, Project_Amount) VALUES (" & Request("custom") & ", '" & Request("txn_id") & "', '" & P_ID & "', '" & P_Amt & "')"
                End If

                objConn1.Open()
                Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
                objComm1.ExecuteNonQuery()
                objComm1.Connection.Close()
                objConn1.Close()

            Next

        ElseIf strResponse = "INVALID" Then
            'log for manual investigation
        Else
            'Response wasn't VERIFIED or INVALID, log for manual investigation
        End If

    End Sub
End Class
