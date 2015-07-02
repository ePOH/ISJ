Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System

Partial Class admin_add_project
    Inherits System.Web.UI.Page

    Protected Sub DDL_Project_Type_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles DDL_Project_Type.SelectedIndexChanged
        If DDL_Project_Type.SelectedValue = 2 Then

            lb_fname.Text = "Business Name:"
            login_fname_TextBoxWatermarkExtender.WatermarkText = "Business Name"
            lb_about.Text = "About the Business:"
            Val_Req_fname.ErrorMessage = "Business Name is Required!"
            AboutTextBox_RequiredFieldValidator.ErrorMessage = "About the Business is Required!"
            lb_needs.Text = "What is needed:"
            NeedsTextBox_RequiredFieldValidator.ErrorMessage = "What is needed is Required!"
            lb_aim.Text = "How will Loan help:"
            AimTextBox_RequiredFieldValidator.ErrorMessage = "How will Loan help is Required!"
            lb_jnsbl.Text = "Entity and JNSBL:"
            Proj_VideoTextBox.Visible = True
            lb_pvideo.Text = "Video"
            'lb_lname.Visible = False
            'Val_Req_lname.Visible = False
            'tb_lname.Visible = False
            'login_lname_TextBoxWatermarkExtender.Enabled = False

        ElseIf DDL_Project_Type.SelectedValue = 1 Then

            lb_fname.Text = "Organisation Name:"
            login_fname_TextBoxWatermarkExtender.WatermarkText = "Organisation Name"
            lb_about.Text = "About the Project:"
            Val_Req_fname.ErrorMessage = "Organisation Name is Required!"
            AboutTextBox_RequiredFieldValidator.ErrorMessage = "About the Project is Required!"
            lb_needs.Text = "How you can help:"
            NeedsTextBox_RequiredFieldValidator.ErrorMessage = "How you can help is Required!"
            lb_aim.Text = "About the Entity:"
            AimTextBox_RequiredFieldValidator.ErrorMessage = "About the Entity is Required!"
            lb_jnsbl.Text = "Details:"
            Proj_VideoTextBox.Visible = False
            lb_pvideo.Text = ""
            'lb_lname.Visible = True
            'Val_Req_lname.Visible = True
            'tb_lname.Visible = True
            'login_lname_TextBoxWatermarkExtender.Enabled = True

        End If
    End Sub

    Protected Sub btn_muser_Click(sender As Object, e As System.EventArgs) Handles btn_muser.Click

        Dim Ptype As Data.SqlClient.SqlParameter
        Ptype = New Data.SqlClient.SqlParameter("@Ptype", Data.SqlDbType.Int)
        Ptype.Value = DDL_Project_Type.SelectedValue

        Dim fname As Data.SqlClient.SqlParameter
        fname = New Data.SqlClient.SqlParameter("@fname", Data.SqlDbType.VarChar)
        fname.Value = tb_fname.Text

        'Dim lname As Data.SqlClient.SqlParameter
        'lname = New Data.SqlClient.SqlParameter("@lname", Data.SqlDbType.VarChar)
        'lname.Value = tb_lname.Text

        Dim pname As Data.SqlClient.SqlParameter
        pname = New Data.SqlClient.SqlParameter("@pname", Data.SqlDbType.VarChar)
        pname.Value = tb_pname.Text

        

        Dim psname As Data.SqlClient.SqlParameter
        psname = New Data.SqlClient.SqlParameter("@psname", Data.SqlDbType.VarChar)
        psname.Value = tb_psname.Text

        Dim synopsis As Data.SqlClient.SqlParameter
        synopsis = New Data.SqlClient.SqlParameter("@synopsis", Data.SqlDbType.VarChar)
        synopsis.Value = tb_synopsis.Text

        Dim about As Data.SqlClient.SqlParameter
        about = New Data.SqlClient.SqlParameter("@about", Data.SqlDbType.NText)
        about.Value = About_TextBox.Text

        Dim needs As Data.SqlClient.SqlParameter
        needs = New Data.SqlClient.SqlParameter("@needs", Data.SqlDbType.NText)
        needs.Value = Needs_TextBox.Text

        Dim aim As Data.SqlClient.SqlParameter
        aim = New Data.SqlClient.SqlParameter("@aim", Data.SqlDbType.NText)
        aim.Value = Aim_TextBox.Text

        Dim jnsbl As Data.SqlClient.SqlParameter
        jnsbl = New Data.SqlClient.SqlParameter("@jnsbl", Data.SqlDbType.NText)
        jnsbl.Value = JNSBL_TextBox.Text

        Dim pparish As Data.SqlClient.SqlParameter
        pparish = New Data.SqlClient.SqlParameter("@pparish", Data.SqlDbType.Int)
        pparish.Value = DDL_Parish.SelectedValue

        Dim yt_vid As Data.SqlClient.SqlParameter
        yt_vid = New Data.SqlClient.SqlParameter("@yt_vid", Data.SqlDbType.VarChar)
        yt_vid.Value = Proj_VideoTextBox.Text

        Dim sdate As Data.SqlClient.SqlParameter
        sdate = New Data.SqlClient.SqlParameter("@sdate", Data.SqlDbType.Date)
        sdate.Value = Start_DateTextBox.Text

        Dim edate As Data.SqlClient.SqlParameter
        edate = New Data.SqlClient.SqlParameter("@edate", Data.SqlDbType.Date)
        edate.Value = End_DateTextBox.Text

        Dim pstatus As Data.SqlClient.SqlParameter
        pstatus = New Data.SqlClient.SqlParameter("@pstatus", Data.SqlDbType.Int)
        pstatus.Value = hf_project_Status.Value

        Dim PGoal_US As Data.SqlClient.SqlParameter
        PGoal_US = New Data.SqlClient.SqlParameter("@PGoal_US", Data.SqlDbType.Money)
        PGoal_US.Value = tb_Goal.Text

        Dim PGoal_JA As Data.SqlClient.SqlParameter
        PGoal_JA = New Data.SqlClient.SqlParameter("@PGoal_JA", Data.SqlDbType.Money)
        PGoal_JA.Value = tb_Goal_J.Text

        Dim AddSeal As Data.SqlClient.SqlParameter
        AddSeal = New Data.SqlClient.SqlParameter("@Project_AddSeal", Data.SqlDbType.Int)
        AddSeal.Value = Proj_AddSeal.Checked

        Dim strConn1 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn1 As New Data.SqlClient.SqlConnection(strConn1)
        'Dim strSQL1 As String = "INSERT INTO Project_Data_File (Project_Type, Project_Owner_First_Name, Project_Owner_Last_Name, Project_Name, Project_Short_Name, Project_Synopsys, Project_About, Project_Needs, Project_Aim, Project_JNSBL, Project_Parish, Project_Start_Date, Project_End_Date, Project_Goal, Project_Goal_J, Project_Status) VALUES (" & DDL_Project_Type.SelectedValue & ", '" & tb_fname.Text & "', '" & tb_lname.Text & "', '" & tb_pname.Text & "', '" & tb_psname.Text & "', '" & tb_synopsis.Text & "', '" & About_TextBox.Text & "', '" & Needs_TextBox.Text & "', '" & Aim_TextBox.Text & "', '" & JNSBL_TextBox.Text & "', " & DDL_Parish.SelectedValue & ", '" & FormatDateTime(Start_DateTextBox.Text, DateFormat.ShortDate) & "', '" & FormatDateTime(End_DateTextBox.Text, DateFormat.ShortDate) & "', " & tb_Goal.Text & ", " & tb_Goal_J.Text & ", " & hf_project_Status.Value & ")"
        Dim strSQL1 As String = "INSERT INTO Project_Data_File (Project_Type, Project_Owner_First_Name, Project_Name, Project_Short_Name, Project_Synopsys, Project_About, Project_Needs, Project_Aim, Project_JNSBL, Project_Parish, Project_Video, Project_Start_Date, Project_End_Date, Project_Goal, Project_Goal_J, Project_Status, Project_AddSeal, Project_Slug) VALUES" &
                                                             " ( @Ptype, @fname, @pname, @psname, @synopsis, @about, @needs, @aim, @jnsbl, @pparish , @yt_vid, @sdate, @edate, @PGoal_US, @PGoal_JA,  @pstatus, @Project_AddSeal,dbo.UDF_GenerateSlug(@pname))"
        objConn1.Open()
        Dim objComm1 As New Data.SqlClient.SqlCommand(strSQL1, objConn1)
        objComm1.Parameters.Add(Ptype)
        objComm1.Parameters.Add(fname)
        'objComm1.Parameters.Add(lname)
        objComm1.Parameters.Add(pname)
        objComm1.Parameters.Add(psname)
        objComm1.Parameters.Add(synopsis)
        objComm1.Parameters.Add(about)
        objComm1.Parameters.Add(needs)
        objComm1.Parameters.Add(aim)
        objComm1.Parameters.Add(jnsbl)
        objComm1.Parameters.Add(pparish)
        objComm1.Parameters.Add(yt_vid)
        objComm1.Parameters.Add(sdate)
        objComm1.Parameters.Add(edate)
        objComm1.Parameters.Add(pstatus)
        objComm1.Parameters.Add(PGoal_US)
        objComm1.Parameters.Add(PGoal_JA)
        objComm1.Parameters.Add(AddSeal)
        objComm1.ExecuteNonQuery()
        UserLogin.AdminLog(Session("login_email"), "INSERT", "PROJECT", "Project Name : " & tb_pname.Text & "ProjectType: " & DDL_Project_Type.SelectedValue & " StartDate: " & Start_DateTextBox.Text & " EndDate : " & End_DateTextBox.Text)
        objComm1.Connection.Close()
        objConn1.Close()

        Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
        Dim objConn As New Data.SqlClient.SqlConnection(strConn)
        Dim strSQL As String = "SELECT MAX(Project_ID) AS Project_ID FROM Project_Data_File"
        objConn.Open()
        Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
        Dim objRead As Data.SqlClient.SqlDataReader = objComm.ExecuteReader()

        If objRead.Read() Then

            Dim path, path2, path3, path4 As String
            Dim savepath, savepath2, savepath3, savepath4 As String
            Dim imgpath, imgpath2, imgpath3, imgpath4 As String

            If Proj_ImageTextBox.HasFile Then
                path = MapPath("~/images/projects/" & Proj_ImageTextBox.FileName)
                savepath = MapPath("~/images/projects/" & objRead.Item("Project_ID") & Right(path, 4))
                Proj_ImageTextBox.SaveAs(savepath)
                imgpath = "images/projects/" & objRead.Item("Project_ID") & Right(path, 4)
            Else
                imgpath = "images/projects/projectBackground_1.jpg"
            End If

            If Proj_ImageTextBox2.HasFile Then
                path2 = MapPath("~/images/projects/" & Proj_ImageTextBox2.FileName)
                savepath2 = MapPath("~/images/projects/" & objRead.Item("Project_ID") & "a" & Right(path2, 4))
                Proj_ImageTextBox2.SaveAs(savepath2)
                imgpath2 = "images/projects/" & objRead.Item("Project_ID") & "a" & Right(path2, 4)
            Else
                imgpath2 = Nothing
            End If

            If Proj_ImageTextBox3.HasFile Then
                path3 = MapPath("~/images/projects/" & Proj_ImageTextBox3.FileName)
                savepath3 = MapPath("~/images/projects/" & objRead.Item("Project_ID") & "b" & Right(path3, 4))
                Proj_ImageTextBox3.SaveAs(savepath3)
                imgpath3 = "images/projects/" & objRead.Item("Project_ID") & "b" & Right(path3, 4)
            Else
                imgpath3 = Nothing
            End If

            If Proj_ImageTextBox4.HasFile Then
                path4 = MapPath("~/images/projects/" & Proj_ImageTextBox4.FileName)
                savepath4 = MapPath("~/images/projects/" & objRead.Item("Project_ID") & "c" & Right(path4, 4))
                Proj_ImageTextBox4.SaveAs(savepath4)
                imgpath4 = "images/projects/" & objRead.Item("Project_ID") & "c" & Right(path4, 4)
            Else
                imgpath4 = Nothing
            End If


            Dim paramProject_Image As SqlParameter
            paramProject_Image = New SqlParameter("@Project_Image", Data.SqlDbType.VarChar, 50)
            If Not String.IsNullOrEmpty(imgpath) Then
                paramProject_Image.Value = imgpath
            Else
                paramProject_Image.Value = DBNull.Value
            End If



            Dim paramProject_Image1 As SqlParameter
            paramProject_Image1 = New SqlParameter("@Project_Image1", Data.SqlDbType.VarChar, 50)
            If Not String.IsNullOrEmpty(imgpath2) Then
                paramProject_Image1.Value = imgpath2
            Else
                paramProject_Image1.Value = DBNull.Value
            End If

            Dim paramProject_Image2 As SqlParameter
            paramProject_Image2 = New SqlParameter("@Project_Image2", Data.SqlDbType.VarChar, 50)
            If Not String.IsNullOrEmpty(imgpath3) Then
                paramProject_Image2.Value = imgpath3
            Else
                paramProject_Image2.Value = DBNull.Value
            End If

            Dim paramProject_Image3 As SqlParameter
            paramProject_Image3 = New SqlParameter("@Project_Image3", Data.SqlDbType.VarChar, 50)
            If Not String.IsNullOrEmpty(imgpath4) Then
                paramProject_Image3.Value = imgpath4
            Else
                paramProject_Image3.Value = DBNull.Value
            End If

            Dim paramProject_Id As SqlParameter
            paramProject_Id = New SqlParameter("@Project_ID", Data.SqlDbType.Int)
            paramProject_Id.Value = objRead.Item("Project_ID")

            Dim strConn2 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn2 As New Data.SqlClient.SqlConnection(strConn2)
            Dim strSQL2 As String = "UPDATE Project_Data_File SET Project_Image = @Project_Image , Project_Image1 = @Project_Image1 , Project_Image2 =@Project_Image2, Project_Image3 = @Project_Image3 WHERE (Project_ID = @Project_ID)"
            objConn2.Open()
            Dim objComm2 As New Data.SqlClient.SqlCommand(strSQL2, objConn2)
            objComm2.Parameters.Add(paramProject_Image)
            objComm2.Parameters.Add(paramProject_Image1)
            objComm2.Parameters.Add(paramProject_Image2)
            objComm2.Parameters.Add(paramProject_Image3)
            objComm2.Parameters.Add(paramProject_Id)
            objComm2.ExecuteNonQuery()
            UserLogin.AdminLog(Session("login_email"), "UPDATE", "PROJECT", "Project_Image : " & imgpath)
            objComm2.Connection.Close()
            objConn2.Close()

            objRead.Close()
            objConn.Close()
        End If

        Session("msg_admin") = "The Record has been added successfully."
        Response.Redirect("admin.aspx", True)

    End Sub

    Protected Sub Page_InitComplete(sender As Object, e As System.EventArgs) Handles Me.InitComplete
        Proj_VideoTextBox.Visible = False
        lb_pvideo.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
        hf_project_Status.Value = 1
    End Sub
End Class
