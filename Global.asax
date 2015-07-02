<%@ Application Language="VB" %>
<%@ Import Namespace="System.Web.UI.WebControls.Expressions" %>

<script runat="server">
    

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    
        ISJhelper.Logger.LogError()
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Application_AcquireRequestState(ByVal sender As Object, ByVal e As EventArgs)

        Dim enviroment = ConfigurationManager.AppSettings("Enviroment")
        If (enviroment = "test") Then
            If Not System.Web.HttpContext.Current.Session Is Nothing Then
                If (IsNothing(Session("test_login"))) Then
                    Dim sUrl = Request.Url.LocalPath.ToLower()
                    If Not sUrl.Contains("test_login.aspx") Then
                        HttpContext.Current.Response.Redirect("~/test_login.aspx")
                    End If
                End If
            End If
        End If
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        Dim sUrl = Request.Url.LocalPath.ToLower()
        
        
        If sUrl.Contains("/project/") Then
            Dim newFlag As Boolean = False
            If sUrl.Contains("/project.aspx") Then
                sUrl = sUrl.Replace("/project.aspx", "")
                newFlag = True
            End If
            If sUrl.Contains("default.aspx") Then
                HttpContext.Current.Response.Redirect("~/Default.aspx")
            Else
                If sUrl.Contains("login.aspx") Then
                    HttpContext.Current.Response.Redirect("~/login.aspx")
                    Return
                End If
                Try
                    Dim strConn2 As String = ConfigurationManager.ConnectionStrings("ConnISJ").ConnectionString
                    Dim objConn2 As New Data.SqlClient.SqlConnection(strConn2)
                
                
                    Dim finalUrl As String = sUrl.Substring(sUrl.ToLower().IndexOf("/project/") + 7)

                    Dim finalQList As String() = finalUrl.Split("/"c)

                    finalUrl = finalQList(1)
                
                    Dim objProject As ProjectDetail = ProjectDetail.GetBySlug(finalUrl)
                    If objProject IsNot Nothing Then
                        Dim rewriteURL As String = ""
                        If objProject.Project_ID = 0 Then
                            HttpContext.Current.Response.Redirect("../Default.aspx")
                        Else
                            rewriteURL = Convert.ToString("../project_details.aspx?pid=") & objProject.Project_ID

                            Dim sSlash = "/"
                            If Request.Url.LocalPath.EndsWith(sSlash) Then
                                rewriteURL = Convert.ToString("../") & rewriteURL
                            End If

                            rewriteURL = rewriteURL.Replace("//", "/")
                            HttpContext.Current.RewritePath(rewriteURL, False)
                            Return
                        End If
                    Else
                        HttpContext.Current.Response.Redirect("../Default.aspx")
                        Return
                    End If
                Catch generatedExceptionName As Exception
                    HttpContext.Current.Response.Redirect("../Default.aspx")
                    Return
                End Try
            End If
        End If
    End Sub
</script>