
Partial Class paypal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        'lb_first_name.Text = Request("first_name")
        lb_first_name.Text = Session("d_login_fname")
        sendmiltoyuer()

        Session.Remove("dt_s_Cart")

        'Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        'Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        'Dim strSQL As String = "INSERT INTO Paypal_Transaction_Data_File (Transaction_ID, Payment_Date, Payer_Email, Business, Payer_ID, Item_Number, Item_Name, Transaction_Type, Payment_Status, Pending_Reason, Payment_Type, MC_Gross, MC_Fee, MC_Currency, First_Name, Last_Name, Address_Street, Address_City, Address_State, Address_Zip, Address_Country, Donor_ID) VALUES ('" & Request("txn_id") & "', '" & Request("payment_date") & "', '" & Request("payer_email") & "', '" & Request("business") & "', '" & Request("payer_id") & "', '" & Request("item_number") & "', '" & Request("item_name") & "', '" & Request("txn_type") & "', '" & Request("payment_status") & "', '" & Request("pending_reason") & "', '" & Request("payment_type") & "', '" & Request("mc_gross") & "', '" & Request("mc_fee") & "', '" & Request("mc_currency") & "', '" & Request("first_name") & "', '" & Request("last_name") & "', '" & Request("address_street") & "', '" & Request("address_city") & "', '" & Request("address_state") & "', '" & Request("address_zip") & "', '" & Request("address_country") & "', '" & Request("custom") & "')"
        'objConn.Open()
        'Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        'objComm.ExecuteNonQuery()
        'objComm.Connection.Close()



        'For Each dtRow In Session("dt_s_Cart").Rows

        '    Dim P_ID As String = dtRow(0)
        '    Dim P_Amt As String = dtRow(2)

        '    Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        '    Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
        '    Dim strSQL1 As String = "INSERT INTO Donor_Transaction_Data_File (Donor_ID, Paypal_Transaction_ID, Project_ID, Project_Amount) VALUES (" & Request("custom") & ", '" & Request("txn_id") & "', '" & P_ID & "', '" & P_Amt & "')"
        '    objConn1.Open()
        '    Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        '    objComm1.ExecuteNonQuery()
        '    objComm1.Connection.Close()
        '    objConn1.Close()

        'Next

        'If Request("payment_status") = "Completed" Or Request("payment_status") = "Processed" Or Request("payment_status") = "Created" Or Request("payment_status") = "Pending" Then
        '    For Each dtRow1 In Session("dt_s_Cart").Rows
        '        Dim P_ID1 As String = dtRow1(0)
        '        Dim P_Amt1 As String = dtRow1(2)
        '        Dim strConn2 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        '        Dim objConn2 As New Data.SqlClient.SqlConnection(strConn2)
        '        Dim strSQL2 As String = "UPDATE Project_Data_File SET Project_Raised = Project_Raised + '" & P_Amt1 & "' WHERE (Project_ID = " & P_ID1 & ")"
        '        objConn2.Open()
        '        Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
        '        objComm2.ExecuteNonQuery()
        '        objComm2.Connection.Close()
        '        objConn2.Close()
        '    Next
        'End If

        ''Session.Abandon()
    End Sub


    Protected Sub sendmiltoyuer()

        Dim sMsg As String

        sMsg = "Hi " & Session("d_f_name") & "," & vbCrLf & "<br/> <br/>"
        sMsg += "" & vbCrLf & ""
        sMsg += " Thank you for your payment." & vbCrLf & "  "
        sMsg += "Your transaction has been completed.." & "" & vbCrLf & ""


        sMsg += "<p> You may log into your account at www.paypal.com/us to view details of this transaction.</p>"



        'Dim TheseCredentials As New Net.NetworkCredential("noreply@bluerangett.com", "n0_reply")

        Try

            Dim bcc As Dictionary(Of String, String)
            bcc.Add("orlando876@yahoo.com", "Orlando Waisome")

            EmailManager.SendEmail(sMsg, "I Support Jamaica Payment confirmation..", Session("d_email"), Session("d_f_name") & " " & Session("d_l_name"), "I Support Jamaica Team <ISupportJamaica@jnbs.com>", bcc)

        Catch EXC As Exception
            Trace.Warn(EXC.Message)
        End Try

    End Sub
End Class
