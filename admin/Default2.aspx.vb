
Imports System.Web.Configuration
Partial Class Default2


    Inherits System.Web.UI.Page
    Private provider As String = "RSAProtectedConfigurationProvider"
    Private section As String = "connectionStrings"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        If Session("login") <> "true" Then
            Response.Redirect("admin_login.aspx", True)
        End If
    End Sub
    Protected Sub btnEncrypt_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim confg As Configuration = WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath)
        Dim confgSect As ConfigurationSection = confg.GetSection(section)
        If confgSect IsNot Nothing Then
            confgSect.SectionInformation.ProtectSection(provider)
            confg.Save()
        End If
    End Sub
    Protected Sub btnDecrypt_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim config As Configuration = WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath)
        Dim confgSect As ConfigurationSection = config.GetSection(section)
        If confgSect.SectionInformation.IsProtected Then
            confgSect.SectionInformation.UnprotectSection()
            config.Save()
        End If
    End Sub


 
End Class
