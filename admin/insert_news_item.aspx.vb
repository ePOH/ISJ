
Partial Class admin_insert_news_item
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If

        If Not Page.IsPostBack Then
            Dim News_RelatedProject As DropDownList = CType(FV_Add_News.FindControl("News_Related_Project_Id_Control"), DropDownList)
            If Not News_RelatedProject Is Nothing Then
                News_RelatedProject.Items.Insert(0, "")
            End If

            Dim News_DateTextBox As TextBox = CType(FV_Add_News.FindControl("News_DateTextBox"), TextBox)
            News_DateTextBox.Text = Date.Now().ToShortDateString

            'Dim News_TypeTextBox As DropDownList = CType(FV_Add_News.FindControl("News_TypeTextBox"), DropDownList)
            'News_TypeTextBox.SelectedValue = 1

            Dim News_Mod_DateTextBox As HiddenField = CType(FV_Add_News.FindControl("News_Mod_DateTextBox"), HiddenField)
            News_Mod_DateTextBox.Value = Date.Now.ToShortDateString

            Dim News_Mod_ByTextBox As HiddenField = CType(FV_Add_News.FindControl("News_Mod_ByTextBox"), HiddenField)
            News_Mod_ByTextBox.Value = 1

            Dim News_StatusTextBox As HiddenField = CType(FV_Add_News.FindControl("News_StatusTextBox"), HiddenField)
            News_StatusTextBox.Value = 1

            If Not String.IsNullOrEmpty(Request("nid")) And Not Page.IsPostBack Then

                

                Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn As New Data.SqlClient.SqlConnection(strConn)
                Dim strSQL As String = "SELECT * FROM News_Data_File WHERE News_Id=" & Request("nid")
                objConn.Open()
                Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
                Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()
                If objRead.Read() Then


                    FV_Add_News.ChangeMode(FormViewMode.Edit)

                    News_RelatedProject = CType(FV_Add_News.FindControl("News_Related_Project_Id_Control"), DropDownList)
                    News_RelatedProject.Items.Insert(0, "")

                    News_DateTextBox.Text = Convert.ToDateTime(objRead("News_Mod_Date")).ToShortDateString()
                    Dim NewsTitle As TextBox = CType(FV_Add_News.FindControl("News_TitleTextBox"), TextBox)
                    NewsTitle.Text = objRead("News_Title").ToString
                    News_RelatedProject.SelectedValue = objRead("News_Related_Project_Id").ToString()
                    Dim NewsContent As CuteEditor.Editor = CType(FV_Add_News.FindControl("News_BodyTextBox"), CuteEditor.Editor)
                    NewsContent.Text = objRead("News_Body").ToString
                End If

            End If
        End If
    End Sub

    Protected Sub FV_Add_News_Updated(sender As Object, e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FV_Add_News.ItemUpdated
        Dim News_RelatedProject As DropDownList = CType(FV_Add_News.FindControl("News_Related_Project_Id_Control"), DropDownList)
        If Not String.IsNullOrEmpty(Request("nid")) Then
            Dim News_ImageTextBox As AjaxControlToolkit.AsyncFileUpload = CType(FV_Add_News.FindControl("News_ImageTextBox"), AjaxControlToolkit.AsyncFileUpload)
            If News_ImageTextBox.HasFile Then

                Dim path As String = MapPath("~/images/news/" & News_ImageTextBox.FileName)
                Dim savepath As String = MapPath("~/images/news/" & Request("nid") & Right(path, 4))
                News_ImageTextBox.SaveAs(savepath)
                Dim imgpath As String = "images/news/" & Request("nid") & Right(path, 4)

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
                Dim strSQL1 As String = "UPDATE News_Data_File SET News_Related_Project_Id=" & News_RelatedProject.SelectedValue & ", News_Image = '" & imgpath & "' WHERE News_ID=" & Request("nid")
                objConn1.Open()
                Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
                objComm1.ExecuteNonQuery()
                UserLogin.AdminLog(Session("login_email"), "UPDATED", "News_Data_File", "News_ID : " & Request("nid") & " News_Image : " & imgpath)
                objComm1.Connection.Close()
                objConn1.Close()

            Else

                Dim imgpath As String = "images/news/home_thumbnail.jpg"

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
                Dim strSQL1 As String = "UPDATE News_Data_File SET News_Related_Project_Id=" & News_RelatedProject.SelectedValue & ", News_Image = '" & imgpath & "' WHERE News_ID=" & Request("nid")
                objConn1.Open()
                Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
                objComm1.ExecuteNonQuery()
                UserLogin.AdminLog(Session("login_email"), "UPDATED", "News_Data_File", "News_ID : " & Request("nid") & " News_Image : " & imgpath)
                objComm1.Connection.Close()
                objConn1.Close()

            End If
        End If

        Session("msg_admin") = "News Item Updated Successfully!"

        Dim theThread As New Threading.Thread(AddressOf SendEmailToUsers)
        theThread.Start()

		Response.Redirect("admin.aspx", True)
    End Sub

    Protected Sub FV_Add_News_ItemInserted(sender As Object, e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FV_Add_News.ItemInserted

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT MAX(News_ID) AS News_ID FROM News_Data_File"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()
        Dim News_RelatedProject As DropDownList = CType(FV_Add_News.FindControl("News_Related_Project_Id_Control"), DropDownList)
        If objRead.Read() Then
            UserLogin.AdminLog(Session("login_email"), "INSERTED", "News_Data_File", "News_ID : " & objRead.Item("News_ID"))
            Dim News_ImageTextBox As AjaxControlToolkit.AsyncFileUpload = CType(FV_Add_News.FindControl("News_ImageTextBox"), AjaxControlToolkit.AsyncFileUpload)
            If News_ImageTextBox.HasFile Then

                Dim path As String = MapPath("~/images/news/" & News_ImageTextBox.FileName)
                Dim savepath As String = MapPath("~/images/news/" & objRead.Item("News_ID") & Right(path, 4))
                News_ImageTextBox.SaveAs(savepath)
                Dim imgpath As String = "images/news/" & objRead.Item("News_ID") & Right(path, 4)

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
                Dim strSQL1 As String = "UPDATE News_Data_File SET News_Related_Project_Id=" & News_RelatedProject.SelectedValue & ", News_Image = '" & imgpath & "' FROM Latest_News_Article INNER JOIN News_Data_File ON Latest_News_Article.News_ID = News_Data_File.News_ID"
                objConn1.Open()
                Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
                objComm1.ExecuteNonQuery()
                UserLogin.AdminLog(Session("login_email"), "UPDATED", "News_Data_File", "News_ID : " & objRead.Item("News_ID") & " News_Image : " & imgpath)
                objComm1.Connection.Close()
                objConn1.Close()

            Else

                Dim imgpath As String = "images/news/home_thumbnail.jpg"

                Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
                Dim strSQL1 As String = "UPDATE News_Data_File SET News_Related_Project_Id=" & News_RelatedProject.SelectedValue & ", News_Image = '" & imgpath & "' FROM Latest_News_Article INNER JOIN News_Data_File ON Latest_News_Article.News_ID = News_Data_File.News_ID"
                objConn1.Open()
                Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
                objComm1.ExecuteNonQuery()
                UserLogin.AdminLog(Session("login_email"), "UPDATED", "News_Data_File", "News_ID : " & objRead.Item("News_ID") & " News_Image : " & imgpath)
                objComm1.Connection.Close()
                objConn1.Close()

            End If
            objRead.Close()
            objConn.Close()
        End If

        Session("msg_admin") = "News Item Added Successfully!"

        Dim theThread As New Threading.Thread(AddressOf SendEmailToUsers)
        theThread.Start()

        Response.Redirect("admin.aspx", True)

    End Sub

    Sub SendEmailToUsers()
        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim objComm As New Data.SqlClient.SqlCommand("SELECT TOP 3 News_ID, News_Date, News_Title, News_Image, News_Body FROM News_Data_File WHERE (News_Status = 1) ORDER BY News_Date DESC, News_Image", objConn)
        objConn.Open()
        Dim reader As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        Dim news As New List(Of NewsDetails)
        While reader.Read()
            Dim newsDetail As New NewsDetails
            newsDetail.News_Body = reader("News_Body").ToString()
            newsDetail.News_ID = reader("News_ID").ToString()
            newsDetail.News_Date = Convert.ToDateTime(reader("News_Date"))
            newsDetail.News_Title = reader("News_Title").ToString()
            newsDetail.News_Image = reader("News_Image").ToString()
            news.Add(newsDetail)
        End While
        reader.Close()

        Dim emails As New List(Of String)
        objComm.CommandText = "SELECT Donor_Email FROM Donor_Master_File WHERE IsApproved = 1"
        Dim userEmailReader As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()
        While userEmailReader.Read()
            emails.Add(userEmailReader("Donor_Email").ToString())
        End While

        objConn.Close()
        objComm.Dispose()
        objConn.Dispose()

        Dim sMsg As String
        sMsg = GenerateNewsEmail(news)

        'emails.Clear()
        'emails.Add("r.campbell@epohjm.com")
        'emails.Add("m.watson@epohjm.com")
        'emails.Add("mikeydread1@gmail.com")
        'emails.Add("robles.franco@gmail.com")



        Dim defaultEmailAddresses = ConfigurationManager.AppSettings("DefaultEmailAddress")


        If (String.IsNullOrEmpty(defaultEmailAddresses)) Then
            For Each item As String In emails
                Try

                    EmailManager.SendEmail(sMsg, "ISupportJamaica - News Center", item, String.Empty, "I Support Jamaica Team <info@isupportjamaica.com>", Nothing)

                Catch EXC As Exception
                    Trace.Warn(EXC.Message)
                End Try
            Next
        Else
            Try

                EmailManager.SendEmail(sMsg, "ISupportJamaica - News Center", "default@email.com", String.Empty, "I Support Jamaica Team <info@isupportjamaica.com>", Nothing)

            Catch EXC As Exception
                Trace.Warn(EXC.Message)
            End Try
        End If

    End Sub

    Private Function GenerateNewsEmail(ByVal newsDetails As List(Of NewsDetails)) As String
        Dim body As String = String.Empty

        body += "<!DOCTYPE html>"
        body += "<html xmlns=""http://www.w3.org/1999/xhtml\"">"
        body += "<head>"
        body += " <link href=""https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700"" rel=""stylesheet"" type=""text/css"" />"
        body += " </head>"
        body += " <body style=""line-height: 16px; font-family: ""Open Sans Condensed""; font-size:18px;"">"
        body += " <div style=""width:100%; width:1297px;"">"
        body += " <div style=""width: 100%; height: 451px; background-image: url('images/emailBanner.png')"">"
        body += " &nbsp;"
        body += " </div>"
        body += " <div style=""text-align:center;"">"
        body += " <div style=""width: 80%; float: none; margin: auto; text-align: left; font-weight: bold;"">"
        body += " Dear ISJ User,"
        body += " </div>"
        body += " <div style=""padding-top:50px; line-height:0px; width: 80%; float: none; margin: auto; text-align: left; font-weight: bold;"">"
        body += " <h1 style=""font-size:50px"">News from</h1><br />"
        body += " <h1 style=""font-size:50px"">ISupportJamaica</h1>"
        body += " </div>"
        body += " <div style=""padding-top:30px; width: 80%; float: none; margin: auto; text-align: left; font-weight: bold;"">"
        body += " <b>Take a look:&nbsp;<a href=""https://www.isupportjamaica.com/news_center.aspx"">https://www.isupportjamaica.com/news_center.aspx</a></b>"
        body += " </div>"
        body += " <div style=""padding-top:50px; padding-bottom:50px; width: 80%; float: none; margin: auto; text-align: left; font-weight: bold;"">"
        body += " Sincerely, <br/>"
        body += " ISupportJamaica"
        body += " </div>"
        body += " </div>"
        body += " <div style=""width: 100%; margin: 10px 0px 10px 0px; "">"
        body += " <div style=""width:24%; float:left; background-color:#5FBCDE; height: 3px;"">"
        body += " &nbsp;"
        body += " </div>"
        body += " <div style=""float:left; width:1%;"">"
        body += " &nbsp;"
        body += " </div>"
        body += " <div style=""width: 24%; float: left; background-color: #58A232; height: 3px; "">"
        body += " &nbsp;"
        body += " </div>"
        body += " <div style=""float:left; width:1%;"">"
        body += " &nbsp;"
        body += " </div>"
        body += " <div style=""width: 24%; float: left; background-color: #BED73F; height: 3px; "">"
        body += " &nbsp;"
        body += " </div>"
        body += " <div style=""float:left; width:1%;"">"
        body += " &nbsp;"
        body += " </div>"
        body += " <div style=""width: 24%; float: left; background-color: #E7FBA0; height: 3px; "">"
        body += " &nbsp;"
        body += " </div>"
        body += " </div>"
        body += " <div style=""width:99%; text-align:right; padding-top:10px;"">"
        body += " Email: - ISupportJamaica@jnbs.com<br />"
        body += " Web: - ISupportJamaica.com<br />"
        body += " Tel: - 926 - 1344<br />"
        body += " Ext: - 2703 - 4"
        body += " </div>"
        body += " </div>"
        body += " </body>"
        body += " </html>"
        Return body
    End Function

    Protected Sub FV_Add_News_ItemInserting(sender As Object, e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FV_Add_News.ItemInserting

    End Sub
End Class

Public Class NewsDetails
    Public Property News_ID As String
    Public Property News_Date As DateTime
    Public Property News_Title As String
    Public Property News_Image As String
    Public Property News_Body As String
End Class
