Imports CuteEditor
Imports System.IO
Imports ISJhelper
Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page

    <System.Web.Services.WebMethod(), System.Web.Script.Services.ScriptMethod()> _
    Public Shared Function GetSlides(ByVal contextKey As String) As AjaxControlToolkit.Slide()

        ''MsgBox(contextKey)

        Dim ProjectId As String = contextKey

        Dim dv As New Data.DataView
        dv = getmyimage(ProjectId).Tables(0).DefaultView

        Dim imgSlide(4) As AjaxControlToolkit.Slide


        imgSlide(0) = New AjaxControlToolkit.Slide(dv.Table.Rows(0)("Project_Image"), "", "")

        For i = 1 To 3
            If Not String.IsNullOrEmpty(dv.Table.Rows(0)("Project_Image" & i).ToString) Then
                imgSlide(i) = New AjaxControlToolkit.Slide(dv.Table.Rows(0)("Project_Image" & i), "", "")
            End If
        Next

        Return (imgSlide)

    End Function

    Public Shared Function getmyimage(ByVal ProjectId As Integer) As DataSet
        '' MsgBox(ProjectId)
        Dim myerror As String = ""
        Dim mydataset As New DataSet
        '' mydataset = Nothing
        Try
            Dim paramProjectId As Data.SqlClient.SqlParameter
            paramProjectId = New Data.SqlClient.SqlParameter("@ProjectId", SqlDbType.Int)
            paramProjectId.Value = ProjectId

            Dim strConn As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
            Dim objConn As New SqlConnection(strConn)
            ''Dim strSQL As String = "SELECT Donor_ID, Donor_First_Name, Donor_Last_Name, Donor_Email FROM Donor_Master_File WHERE (Donor_Email = '" & yourEmail.Text & "')"
            Dim strSQL As String = "SELECT Project_Data_File.Project_Image,Project_Image1,Project_Image2,Project_Image3 FROM Project_Data_File  WHERE (Project_Data_File.Project_ID = @ProjectId) ORDER BY Project_Data_File.Project_Type, Project_Data_File.Project_Status "
            objConn.Open()
            Dim objAdpt As New SqlDataAdapter()

            Dim objComm As New Data.SqlClient.SqlCommand(strSQL, objConn)
            objComm.Parameters.Add(paramProjectId)

            objAdpt.SelectCommand = objComm
            objAdpt.SelectCommand.CommandType = CommandType.Text
            '' objComm.Parameters.Add(paramEmail)

            objAdpt.Fill(mydataset)

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

    Protected Sub DataList1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList1.ItemDataBound
        If (e.Item.ItemType = ListItemType.Item) Or _
          (e.Item.ItemType = ListItemType.AlternatingItem) Then

            Dim dr As DataRowView = DirectCast(e.Item.DataItem, DataRowView)

            Dim status As Integer = Convert.ToInt16(dr("Project_Type_ID"))
            Dim projectId As String = dr("Project_ID").ToString
            Dim ProjectEndDate As DateTime = e.Item.DataItem("Project_End_Date").ToString
            Dim timeval As Integer
            timeval = DateDiff("d", DateValue(Now), ProjectEndDate)
            CType(e.Item.FindControl("lbldaystogo"), Label).Text = If(timeval >= 0, timeval, 0)

            CType(e.Item.FindControl("txtprojectId"), Label).Text = projectId.PadLeft(4, "0")
            If status = 1 Then
                CType(e.Item.FindControl("HL_IMG_Project_Give_Success"), HyperLink).NavigateUrl = String.Format(String.Format("~/project_details.aspx?pid={0}", dr("Project_ID")))
            Else
                CType(e.Item.FindControl("HL_IMG_Project_Give_Success"), HyperLink).NavigateUrl = String.Format(String.Format("~/business_details.aspx?pid={0}", dr("Project_ID")))
            End If
        End If
    End Sub
End Class
