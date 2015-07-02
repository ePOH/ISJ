<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" MasterPageFile="~/ResponsiveMaster2.master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register src="_controls/SoonLend.ascx" tagname="SoonLend" tagprefix="uc1" %>
<%@ Register src="_controls/popupLend.ascx" tagname="popupLend" tagprefix="uc2" %>
<%@ Register src="_controls/Logotop.ascx" tagname="Logotop" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        section.callouts {
            height: auto;
        }

        .yellow-bar {
            margin-top: -45px;
        }

        section.projects {
            background-color: #fff;
        }

        .auto-style1
        {
            font-size: 64px;
        }

        .btn-givenow { 
            background-color: hsl(201, 100%, 30%) !important; 
            background-repeat: repeat-x; 
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#00a5ff", endColorstr="#006399"); 
            background-image: -khtml-gradient(linear, left top, left bottom, from(#00a5ff), to(#006399)); 
            background-image: -moz-linear-gradient(top, #00a5ff, #006399); 
            background-image: -ms-linear-gradient(top, #00a5ff, #006399); 
            background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #00a5ff), color-stop(100%, #006399)); 
            background-image: -webkit-linear-gradient(top, #00a5ff, #006399); 
            background-image: -o-linear-gradient(top, #00a5ff, #006399); 
            background-image: linear-gradient(#00a5ff, #006399); 
            border-color: #006399 #006399 hsl(201, 100%, 25%); 
            color: #fff !important; 
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33); 
            -webkit-font-smoothing: antialiased; 
            padding:7px 20px 7px 20px;
            text-decoration:none;
            border-radius: 5px !important;
            cursor:pointer;
        }

        .btn-givenow:hover {
            text-decoration:none;
        }

        

        .projects-card {
            overflow:auto;
            border-radius:5px;
        }

        .projects-card-title {
            font-family:inherit;
            font-size: 0.8em !important;
            font-weight: 500;
            line-height:1.1;
        }

        h4 {
            font: 300 24px 'Open Sans', sans-serif;
            margin: 0 0 10px;
            line-height: 1.0;
        }

        h6, .h6 {
            font-size: 12px;
        }
        h6, .h6 {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        h6, .h6 {
            font-family: inherit;
            font-weight: 500;
            line-height: 1.1;
            color: inherit;
        }

        .give-now-button {
            max-width:100%;
        }

        .banner-master-images {
            max-width:100%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <section class="callouts" style="min-height: 300px !important; margin-top:-40px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <a href="https://www.youtube.com/watch?v=IasPjY0JQ2c" target="_blank">
                        <img src="images/inspire-responsive.png" alt="" style="max-width: 100%; max-height: 100%;" /><!-- width="341" height="222"  -->
                    </a>
                    <br style="clear: both" />
                </div>
                <div class="col-sm-7">
                    <div class="callout-text">
                        <p>
                            ISupportJamaica.com is the leading crowd funding site in<br />
                            Jamaica. Our social mission focuses on the promotion of<br />
                            community empowerment, technology, innovation and<br />
                            entrepreneurial ambitions among Jamaicans and<br />
                            Jamaican interests.
                        </p>
                        <br style="clear: both" />
                    </div>
                    <div class="callout-icons" style="margin-bottom: 36px;">
                        <a href="http://www.firstangelsja.com/"> <!--"data-toggle="modal" data-target="#myModal">-->
                            <img src="images/u3416.png" onmouseover="this.src='images/u3416-r.png'" onmouseout="this.src='images/u3416.png'" alt="" id="investors">
                        </a>

                        <span style="position: absolute; margin-top: 55px ! important; margin-right: 10px ! important;" class="plus">+</span>

                        <a href="http://www.firstangelsja.com/">
                            <img style="margin-left: 15px;" src="images/u3405.png" onmouseover="this.src='images/u3405-r.png'" onmouseout="this.src='images/u3405.png'" alt="" id="ideas">
                        </a>

                        <span style="position: absolute; margin-top: 55px ! important; margin-right: 10px ! important;" class="equal">=</span>

                        <a href="http://www.firstangelsja.com/">
                            <img style="margin-left: 36px;" src="images/u3411.png" onmouseover="this.src='images/u3411-r.png'" onmouseout="this.src='images/u3411.png'" alt="" id="business">
                        </a>
                        <br style="clear: both" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="yellow-bar"></section>
    <section class="projects">
        <div class="container" style="text-align: center; padding-bottom: 50px;">
            <div class="row">
                <p class="header-link-action-text-container">
                    <a href="projects.aspx" class="header-link-action-text">Explore great projects and share with your friends 	
                    </a>
                </p>
            </div>
            <div class="row">
                <div class="popular-projects">
			    <asp:DataList ID="DataList1" runat="server" DataSourceID="SQL_DS_Projects" 
                      DataKeyField="Project_ID" RepeatDirection="Horizontal" RepeatLayout="Flow" >
                      <ItemStyle Width="290px" VerticalAlign="Top" />
                    <ItemTemplate>
                         <div class="img-thumbnail col-md-3" style="width: 280px; min-height: 440px; border-radius:4px !important; padding:3px;">
                            <div  style="color: #888!important; " >
							<asp:HyperLink ID="HL_IMG_Project_Give_Success" runat="server"   >
                            <div>
                                <asp:Image ID="IMG_Project_Give_Success" runat="server" class= "image"  AlternateText="Project Image" ImageUrl='<%# eval("Project_Image") %>' style="border-radius: 4px; width: 270px;height:143px;" />
                                <img id="imgAddSeal" runat="server" class="seal-image-holder" data-value='<%# Eval("Project_AddSeal").ToString().ToLower() %>' src="~/images/Seal2_blank.png" style="width:70px; height:70px; margin-top:-70px; margin-left:200px;" />
                            </div>
                              <asp:SlideShowExtender ID="SlideShowExtender1" runat="server" TargetControlID="IMG_Project_Give_Success"
                              SlideShowServiceMethod="GetSlides" AutoPlay="true" Loop="true"  UseContextKey='true' ContextKey='<%# eval("Project_ID") %>' >
                            </asp:SlideShowExtender>  
                          </asp:HyperLink>
                                    <div style="margin-top:-15px;">
										<div style="min-height:40px; max-height:50px; height:50px ; overflow:hidden;"><!-- style='overflow:auto; height:60px;'-->
											<h4><asp:Label ID="Label1" runat="server" Text='<%# eval("Project_Synopsys") %>' CssClass="projects-card-title" ></asp:Label></h4> 
										</div>
										<h6>Project ID: <asp:Label ID="txtprojectId" runat="server" Text='<%# eval("Project_ID") %>' ></asp:Label></h6>
										<div><!-- style='overflow:auto; height:60px;' -->
											<h6>by <asp:Label ID="Label2" runat="server" Text='<%# eval("Project_Owner_First_Name") %>' ></asp:Label></h6> 
										</div>
										<div style='height:60px; max-height:60px; overflow:hidden; text-overflow:ellipsis;'><!--  -->
											<asp:Label ID="lb_project_about" runat="server" Text= '<%# DataBinder.Eval(Container.DataItem, "Project_About") %>' Font-Size="12px" ></asp:Label>
										</div>
                                        <div style="text-align:center; margin-top:15px; margin-bottom:10px;">
                                            <a class="btn-givenow" href="project/<%# Eval("Project_Slug") %>">Give Now</a>
                                        </div>
                                    </div>   
                                    <div class ="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                            <p class="h6"><strong> Raised</strong></p>
                                            <p class="sect fl"> <%#  Math.Round(DataBinder.Eval(Container.DataItem, "Project_Raised") / DataBinder.Eval(Container.DataItem, "Project_Goal") * 100) %>%</p>
                                            </div>
                                            <div class="col-md-4">
                                            <p class="h6"><strong>Donations</strong></p>
                                            <p class="sect fl">$ <%# Math.Round(DataBinder.Eval(Container.DataItem, "Project_Raised"))%></p>
                                            </div>
                                            <div class="col-md-4">
                                            <p class="h6"><strong> Days Left</strong></p> 
                                            <p class="sect fl"><asp:Label ID="lbldaystogo" runat="server"></asp:Label></p> 	
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress " style="height:10px; margin-bottom:5px;">
                                        <div  class="progress-bar progress-bar-success" role="progressbar"  aria-valuenow='<%#  Math.Round(DataBinder.Eval(Container.DataItem, "Project_Raised") / DataBinder.Eval(Container.DataItem, "Project_Goal") * 100) %>' aria-valuemin="0" aria-valuemax="100" style='<%# String.Format("width: {0}%; Height:10px;",  Math.Round(DataBinder.Eval(Container.DataItem, "Project_Raised") / DataBinder.Eval(Container.DataItem, "Project_Goal") * 100)) %>'>                                        
                                        </div>
                                    </div>                                        
                            </div>
                         </div>
                    </ItemTemplate>
                </asp:DataList>
					</div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSourceNew" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
              SelectCommand="SELECT [URL], [Title], [HasRegisterButton],[NavigateUrl],[HasGiveNowButton],[GiveNowUrl],[GiveNowPosition] FROM [Home_ImageUrl]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SQL_DS_Projects" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT PDF.Project_AddSeal,Project_Featured_Data_File.Project_ID, PDF.Project_Owner_First_Name, PDF.Project_Name,PDF.Project_Slug,PDF.Project_About, Project_Featured_Data_File.Project_Type AS Project_Type_ID, Project_Type_Master_File.Project_Type, PDF.Project_Short_Name, PDF.Project_Synopsys, PDF.Project_Needs, PDF.Project_Image, PDF.Project_Status ,PDF.Project_Raised,PDF.Project_Goal , PDF.Project_End_Date FROM Project_Data_File PDF INNER JOIN Project_Featured_Data_File ON PDF.Project_ID = Project_Featured_Data_File.Project_ID INNER JOIN Project_Type_Master_File ON Project_Featured_Data_File.Project_Type = Project_Type_Master_File.Project_Type_ID ORDER BY Project_Featured_Data_File.SequenceNumber">
    </asp:SqlDataSource>
    <script src="assets/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $(".seal-image-holder").each(function () {
                if ($(this).attr("data-value") == 'true') {
                    $(this).attr("src", "images/Seal2.png");
                }
            });
        });
    </script>
</asp:Content>
