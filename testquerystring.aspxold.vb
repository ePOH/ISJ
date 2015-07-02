Imports ISJhelper
Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Partial Class testquerystring
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        'MyData.ImagePath = Server.MapPath("~/Images/profiles")
        'Dim strUrl As String = Request.Url.ToString
        'MyData.Url = strUrl.Substring(0, strUrl.LastIndexOf("/")) & "/Images/profiles"

        SlideShowExtender1.SlideShowServiceMethod = "GetSlides"

        SlideShowExtender1.UseContextKey = True
        SlideShowExtender1.ContextKey = 11


        Me.lblDonorvid.Text = MessageFormatter.GetFormattedNoticeMessage(Request.QueryString("aa_email"))
        Me.lblemail.Text = MessageFormatter.GetFormattedNoticeMessage(Request.QueryString("aaid"))


    End Sub

    <System.Web.Services.WebMethod()> _
<System.Web.Script.Services.ScriptMethod()> _
    Public Shared Function GetPictures() As AjaxControlToolkit.Slide()
        Dim di As New DirectoryInfo(MyData.ImagePath)
        Dim s(di.GetFiles.Length - 1) As AjaxControlToolkit.Slide
        Dim x As Integer = 0
        For Each fi As FileInfo In di.GetFiles()
            s(x) = New AjaxControlToolkit.Slide(MyData.Url & fi.Name, "", Path.GetFileNameWithoutExtension(fi.Name))
            x += 1
        Next
        Return s
    End Function


    <System.Web.Services.WebMethod(), System.Web.Script.Services.ScriptMethod()> _
    Public Shared Function GetSlides(ByVal contextKey As String) As AjaxControlToolkit.Slide()

        MsgBox(contextKey)

        Dim ProjectId As String = (HttpContext.Current.Request.QueryString("ProjectId"))

        Dim dv As New Data.DataView
        dv = getmyimage(ProjectId).Tables(0).DefaultView

        Dim imgSlide(4) As AjaxControlToolkit.Slide


        imgSlide(0) = New AjaxControlToolkit.Slide(dv.Table.Rows(0)("Project_Image"), "", "")

        For i = 1 To 3
            If Not String.IsNullOrEmpty(dv.Table.Rows(0)("Project_Image" & i).ToString) Then
                imgSlide(i) = New AjaxControlToolkit.Slide(dv.Table.Rows(0)("Project_Image" & i), "", "")
            End If
        Next
        'imgSlide(1) = New AjaxControlToolkit.Slide(dv.Table.Rows(1)("Project_Image1"), "", "")
        'imgSlide(2) = New AjaxControlToolkit.Slide(dv.Table.Rows(2)("Project_Image2"), "", "")
        'imgSlide(3) = New AjaxControlToolkit.Slide(dv.Table.Rows(3)("Project_Image3"), "", "")

        Return (imgSlide)

    End Function

    Public Shared Function getmyimage(ByVal ProjectId As Integer) As DataSet

        Dim myerror As String = ""
        Dim mydataset As New DataSet
        '' mydataset = Nothing
        Try
            Dim paramEmail As Data.SqlClient.SqlParameter
            paramEmail = New Data.SqlClient.SqlParameter("@ProjectId", SqlDbType.VarChar, 50)
            paramEmail.Value = ProjectId

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New SqlConnection(strConn)
            ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
            Dim strSQL As String = "SELECT Project_Data_File.Project_Image,Project_Image1,Project_Image2,Project_Image3 FROM Project_Data_File INNER JOIN Home_Page_Data_File ON Project_Data_File.Project_ID = Home_Page_Data_File.Project_ID ORDER BY Project_Data_File.Project_Type, Project_Data_File.Project_Status "
            objConn.Open()
            Dim objComm As New SqlDataAdapter()
            objComm.SelectCommand = New SqlCommand(strSQL, objConn)
            objComm.SelectCommand.CommandType = CommandType.Text
            '' objComm.Parameters.Add(paramEmail)

            objComm.Fill(mydataset)

            'If objRead.Read() Then
            '    result = True
            'End If

            'objRead.Close()

            objConn.Close()
        Catch ex As Exception

            myerror = ex.ToString
            myerror += myerror + "444"
        End Try

        Return mydataset

    End Function
	
	 Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Dim randID As String
        randID = RandomPassword.Getpassword(8)
        'Try


        Dim md5Hasher As New System.Security.Cryptography.MD5CryptoServiceProvider()
        Dim hashedBytes As Byte()
        Dim encoder As New UTF8Encoding()
        'hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(randID))
        hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(yourPassword.Text))
        'Dim paramPwd As Data.SqlClient.SqlParameter
        'paramPwd = New Data.SqlClient.SqlParameter("@Password", Data.SqlDbType.Binary, 16)
        'paramPwd.Value = hashedBytes


        'Dim paramEmail1 As Data.SqlClient.SqlParameter
        'paramEmail1 = New Data.SqlClient.SqlParameter("@y_Email", Data.SqlDbType.VarChar, 50)
        'paramEmail1.Value = yourEmail.Text

        'Dim paramFname As Data.SqlClient.SqlParameter
        'paramFname = New Data.SqlClient.SqlParameter("@y_fname", Data.SqlDbType.VarChar, 50)
        'paramFname.Value = your_fname.Text

        'Dim paramlname As Data.SqlClient.SqlParameter
        'paramlname = New Data.SqlClient.SqlParameter("@y_lname", Data.SqlDbType.VarChar, 50)
        'paramlname.Value = your_lname.Text

        'Dim paramStatus As Data.SqlClient.SqlParameter
        'paramStatus = New Data.SqlClient.SqlParameter("@Status", Data.SqlDbType.Int)
        'paramStatus.Value = hf_d_status.Value

        'Dim paramRandId As Data.SqlClient.SqlParameter
        'paramRandId = New Data.SqlClient.SqlParameter("@RandId", Data.SqlDbType.VarChar, 64)
        'paramRandId.Value = randID

        '    Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        '    Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
        '    ''Dim strSQL1 As String = "INSERT INTO Donor_Master_File (Donor_First_Name, Donor_Last_Name, Donor_Password, Donor_Email, Donor_Status, Donor_VID) VALUES ('" & your_fname.Text & "', '" & your_lname.Text & "', @Password, '" & yourEmail.Text & "', " & hf_d_status.Value & ", '" & randID & "')"
        '    Dim strSQL1 As String = "INSERT INTO Donor_Master_File (Donor_First_Name, Donor_Last_Name, Donor_Password, Donor_Email, Donor_Status, Donor_VID) VALUES (@y_fname, @y_lname, @Password, @y_Email, @Status, @RandId)"
        '    objConn1.Open()
        '    Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)

        '    objComm1.Parameters.Add(paramFname)
        '    objComm1.Parameters.Add(paramlname)
        '    objComm1.Parameters.Add(paramPwd)
        '    objComm1.Parameters.Add(paramEmail1)
        '    objComm1.Parameters.Add(paramStatus)
        '    objComm1.Parameters.Add(paramRandId)


        '    objComm1.ExecuteNonQuery()

        '    objComm1.Connection.Close()
        '    objConn1.Close()
        'Catch ex As Exception
        '    myerror = ex.ToString
        '    myerror += myerror + "444"

        'End Try
        Dim sMsg As String
        Dim sLnk As String = "https://www.isupportjamaica.com/activate_account.aspx?aaid=" & randID & "&aa_email=" & yourEmail.Text
        sMsg = "Hello Orlando" & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"
        sMsg += "Thank you for registering for I Support Jamaica. In order to activate your account kindly  <a href='" & sLnk & "'>click here</a>." & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"

        sMsg += "" & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"
        sMsg += "<b>Disclaimer:</b> If you feel you have received this email in error and/or you have not recently requested to reset your password on our website, call I Support Jamaica customer service at +1 (888) 991 4065/6 (for Jamaica) or +1 (800) 462-9003 (from United States of America)  1 800 462 9003 (from Canada) 0 800 328 0387 (United Kingdom)." & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"
        sMsg += "I Support Jamaica Team." & vbCrLf & "<br>"
        sMsg += "" & vbCrLf & "<br>"
        sMsg += "https://www.isupportjamaica.com/" & vbCrLf & "<br>"


        Try

            EmailManager.SendEmail(sMsg, "I Support Jamaica confirmation email.", yourEmail.Text, "New User", "I Support Jamaica Team <info@isupportjamaica.com>", Nothing)

        Catch EXC As Exception
            Trace.Warn(EXC.Message)
            MsgBox(EXC.Message)
        End Try
        'Catch ex1 As System.Data.SqlClient.SqlException
        '    lblerrormessage.Text = MessageFormatter.GetFormattedErrorMessage("An error occurs, Please Try again #1")
        'Catch ex As Exception
        '    lblerrormessage.Text = MessageFormatter.GetFormattedErrorMessage("An error occurs, Please Try again #2")


        'End Try
    End Sub

End Class


Public Class MyData
    Private Shared _Path As String
    Private Shared _Url As String

    Public Shared Property ImagePath() As String
        Get
            Return _Path
        End Get
        Set(ByVal value As String)
            _Path = value
        End Set
    End Property

    Public Shared Property Url() As String
        Get
            Return _Url
        End Get
        Set(ByVal value As String)
            _Url = value
        End Set
    End Property
End Class


