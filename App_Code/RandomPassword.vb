Imports Microsoft.VisualBasic

Public Class RandomPassword

    Public Shared Function Getpassword(ByVal pl As Integer) As String
        Getpassword = ""
        Randomize()

        Dim sTempStr1 As String
        sTempStr1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        sTempStr1 = Mid(sTempStr1, Int(Len(sTempStr1) * Rnd() + 1), 1)

        Dim sTempStr2 As String
        sTempStr2 = "1234567890"
        sTempStr2 = Mid(sTempStr2, Int(Len(sTempStr2) * Rnd() + 1), 1)

        Dim sTempStr3 As String
        sTempStr3 = "~$%}{}"
        sTempStr3 = Mid(sTempStr3, Int(Len(sTempStr3) * Rnd() + 1), 1)

        Dim sTempStr As String, iTempLength As Integer, sTempRand As String = "", randID As String
        sTempStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890~$%}{}"
        For iTempLength = 1 To pl
            sTempRand = sTempRand & Mid(sTempStr, Int(Len(sTempStr) * Rnd() + 1), 1)

        Next
        randID = sTempStr1 & sTempRand & sTempStr3 & sTempStr2



        Return randID
    End Function




End Class
