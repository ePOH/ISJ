Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports AjaxControlToolkit

'Imports AjaxControlToolkit


Partial Class uploadimage_uploadimage
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString)

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then

            BindAlbumDataList()

        End If

    End Sub




    Protected Sub AjaxFileUpload1_UploadComplete(sender As Object, e As AjaxFileUploadEventArgs) Handles AjaxFileUpload1.UploadComplete

        Dim filePath As String = String.Empty

        Try

            filePath = (Server.MapPath("~/Album/") & Convert.ToString(Guid.NewGuid()) & System.IO.Path.GetFileName(e.FileName))

            AjaxFileUpload1.SaveAs(filePath)

            Dim strFile As String = filePath.Substring(filePath.LastIndexOf("\"))

            Dim strFileName As String = strFile.Remove(0, 1)

            Dim strFilePath As String = "~/Album/" & strFileName

            Dim cmd As New SqlCommand("Insert into TB_IMG (IMAGE_NAME,IMAGE_PATH) values (@IMAGE_NAME,@IMAGE_PATH)", con)

            cmd.Parameters.AddWithValue("@IMAGE_NAME", strFileName)

            cmd.Parameters.AddWithValue("@IMAGE_PATH", strFilePath)

            con.Open()

            cmd.ExecuteNonQuery()

            con.Close()

            cmd.Dispose()

        Catch ex As Exception

            Response.Write(ex.Message.ToString())

        End Try

    End Sub




    Protected Sub BindAlbumDataList()

        Try

            Dim cmd As New SqlCommand("SELECT IMAGE_NAME,IMAGE_PATH FROM TB_IMG", con)

            con.Open()

            Dim dr As SqlDataReader = cmd.ExecuteReader()

            If dr.HasRows Then

                dlImages.DataSource = dr

                dlImages.DataBind()

            Else

                dlImages.DataSource = dr

                dlImages.DataBind()

            End If

        Catch ex As Exception

            Response.Write("Error Occured: " + ex.ToString())

        Finally

            con.Close()

        End Try

    End Sub



    Protected Sub btnViewAlbum_Click(sender As Object, e As EventArgs) Handles btnViewAlbum.Click

        BindAlbumDataList()

    End Sub


End Class
