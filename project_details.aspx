﻿<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="project_details.aspx.vb" Inherits="project_details" Title="I Support Jamaica Projects" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<%@ Register src="_controls/socialmedia.ascx" tagname="socialmedia" tagprefix="uc1" %>


<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <link href="/Scripts/index-custom.css" rel="stylesheet" type="text/css" />
    
   
    <script type='text/javascript' src='/Scripts/jQuery_minified.js'></script>
    <script type="text/javascript" src="/Scripts/jQuery_progressBar.js"></script>
    <script type="text/javascript" src="/Scripts/jQuery_tabs.js"></script>
    <script type="text/javascript" src="/Scripts/swfobject.js"></script>
   
    <script type="text/javascript">

        var url = "null"; // make value dynamic. url = null to disable video.
        var flashvars = false;
        var params = {
            wmode: "transparent"
        };
        var attributes = {
            id: "video",
            styleclass: "video"
        };
        if (url) {
            swfobject.embedSWF(url, "video", "420", "270", "10", "Scripts/expressInstall.swf", flashvars, params, attributes);
        }
  
    </script>
    <style>
        .button2 {
            display: block;
            width: 160px;
            padding-top: 5px;
            padding-right: 10px;
            padding-bottom: 5px;
            padding-left: 0px;
            margin-right: auto;
            margin-left: auto;
            margin-top: 15px;
            background-color: #007A3D;
            text-align: center;
            font-family: 'Open Sans Condensed';
            font-size: 10pt;
            font-weight: 700;
            color: #FFF;
            border-radius: 5px;
        }
    </style>
    <style type="text/css">
        .main-project-image-responsive {
            max-width:100%;
            max-height:100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="generic-content">
	<div class="container">
		<div class="row" style="padding:10px;">

			<div class="sub-header">
				<div class="main">
					<div class="section">
                        <div class="col-md-12">
                            <div class="thumbnail">
							    <asp:Image ID="im_project_image_tn" runat="server" Width="100" Height="70" />
						    </div>
						    <div class="caption">
							    <h1><asp:Label ID="lb_project_name" runat="server" Text=""></asp:Label></h1>
							    <h3><asp:Label ID="lb_project_synopsys" runat="server" Text=""></asp:Label></h3>
						    </div>
                        </div>
					</div>
				</div>
			</div>
			
			<div id="tab-group" class="tab-group">
				<div class="nav">
					<div class="main">
						<div class="section">
							<a href="javascript:;" id="aboutButton">ABOUT</a>
						</div>
					</div>
				</div>
  
				<div id="about" class="main" style="margin-bottom:20px;">
					<div class="section">
						<div class="genericColumn">
							<div class="feature">
								<div class="col-md-12">
									<% If Request.QueryString("pid") = "94" Then%>
									    <iframe width="475" height="326" src="https://www.youtube.com/embed/ljrSKLMEq5M" frameborder="0" allowfullscreen></iframe>
										<asp:Image ID="im_project_image_blank" runat="server" Width="475" Height="326" Visible="False" />
                                    <% Else%>
                                        <asp:Image ID="im_project_image" runat="server" CssClass="main-project-image-responsive" />
                                    <% End If%>
								</div>
                                <div class="col-md-12">
							          <h2>ABOUT THIS PROJECT</h2>
							  
							          <p><asp:Label ID="lb_project_about" runat="server" Text="Label"></asp:Label></p>
							          <h2>HOW YOUR DONATION WILL HELP</h2>
							   
							          <p><asp:Label ID="lb_project_needs" runat="server" Text="Label"></asp:Label></p>
							          <h2>ABOUT <asp:Label ID="lb_project_fn" runat="server" Text="Label"></asp:Label></h2>
							          <p><asp:Label ID="lb_project_aim" runat="server" Text="Label"></asp:Label></p>
							          <h2></h2>
							          <p><asp:Label ID="lb_project_jnsbl" runat="server" Text="Label"></asp:Label></p>
                                    </div>
							</div>
						</div>
					  
						<div class="genericColumn">
							<div class="donate">
								<div class="progressBar">
									<img id="imgDonateHand" runat="server" src="~/Images/donateHand_empty.jpg" width="86" height="235">
								</div>
								<div class="progressInfo">
									<p class="amount">$<asp:Label ID="lb_project_raised" runat="server" Text="Label"></asp:Label></p>
									<p><span id="percent" class="percent"><asp:Label ID="lb_project_raised_pc" runat="server" Text="Label"></asp:Label></span>
									<span class="percent">% RAISED</span><br/>
									of US$<asp:Label ID="lb_project_goal" runat="server" Text="Label"></asp:Label><br/></p>
									<p class="timeLeft"><img id="imgStopWatch" runat="server" src="~/Images/stopwatch.jpg" alt="stopwatch" width="38" height="44" align="absmiddle" /><asp:Label ID="lb_project_time" runat="server" Text="Label"></asp:Label> <sup>DAYS LEFT</sup></p>
								</div>
								<div class="submit">
									<asp:HiddenField ID="cmd" runat="server" /> 
									<asp:HiddenField ID="business" runat="server" />
									<asp:HiddenField ID="item_number" runat="server" />
									<asp:HiddenField ID="item_name" runat="server" />
									<asp:HiddenField ID="amount" runat="server" />
									<asp:HiddenField ID="no_shipping" runat="server" />
									<asp:HiddenField ID="return" runat="server" />
									<asp:HiddenField ID="cancel_return" runat="server" />
									<asp:HiddenField ID="rm" runat="server" />
									<asp:Button ID="btn_Submit" runat="server" CssClass="button" Text="GIVE TO THIS PROJECT"/>
									
							<%--		<asp:ScriptManager ID="ScriptManager1" runat="server">
									</asp:ScriptManager>--%>
									
									<%--<asp:ModalPopupExtender ID="submit_ModalPopupExtender" runat="server" 
										Enabled="True" TargetControlID="btn_Submit" PopupControlID="Panel1">
									</asp:ModalPopupExtender>--%>
									  <asp:Button ID="btn_Full_Funded" runat="server" CssClass="button" Text="Fully Funded" />
									  <asp:Button ID="btn_Unsuccessful" runat="server" CssClass="button" Text="Unsuccessfully Funded" />
									  <asp:Button ID="btn_check_out" runat="server" CssClass="button" Text="CHECK OUT" />
								</div>
							</div>  
        
							<div class="above" >
								<uc1:socialmedia ID="socialmedia1" runat="server" />
							</div>
						</div>

      
							<div class="genericColumn">   
								<div class="aside">
									<h1>RECENT UPDATES</h1>
									<%--<asp:Repeater ID="Projects_Updates" runat="server" DataSourceID="SQL_DS_Projects_Updates">
										<HeaderTemplate>
											</HeaderTemplate>
										<ItemTemplate>
											<div class="article">
												<h4><asp:Label ID="lb_project_update_date" runat="server" Text='<%# FormatDateTime(DataBinder.Eval(Container.DataItem, "Project_Update_Date"), DateFormat.ShortDate) %>'></asp:Label></h4>
												<asp:Label ID="lb_project_update" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Project_Update") %>'></asp:Label>
											</div>
										</ItemTemplate>
										<SeparatorTemplate>
											</SeparatorTemplate>
									</asp:Repeater>--%>
								</div>       
                                <div style="margin-top: -15px;">
                                    <asp:Panel ID="Panel1" runat="server" Width="100%" BackColor="Silver" 
										  BorderColor="#F8F8F8" BorderStyle="Solid" HorizontalAlign="Center">
										<div class="project">
										  <p></p>
										  <p><asp:DropDownList ID="DD_value" runat="server" DataSourceID="SQL_DS_DD_Value" DataTextField="DD_Value" DataValueField="DD_Value_ID"></asp:DropDownList></p>
											<p><asp:Button ID="btn_c_Out" runat="server" CssClass="button2" Text="OK" Width="35" />
											<asp:Button ID="btn_c_Cancel" runat="server" CssClass="button2" Text="Cancel" 
										  Width="65px" /></p>
                                            <br  style="clear:both"/>
										</div>
                                        <br  style="clear:both"/>
									</asp:Panel>
                                </div>
							</div>
      
						</div>
					</div>
   
				</div>
			</div>
		</div>

<asp:SqlDataSource ID="SQL_DS_Project_Details" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT Project_ID, Project_Name, Project_Synopsys, Project_About, Project_Needs, Project_Aim, Project_JNSBL, Project_Image, Project_Start_Date, Project_End_Date, Project_Goal, Project_Raised, Project_Status, Project_Updates FROM Project_Data_File WHERE (Project_ID = 1)"></asp:SqlDataSource>       
        <asp:SqlDataSource ID="SQL_DS_Projects_Updates" runat="server"         
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"         
        SelectCommand="SELECT Project_Update_Date, Project_Update FROM Project_Update_Data_File WHERE (Project_ID = @param)  ORDER BY Project_Update_Date DESC">
            <SelectParameters>
                <asp:Parameter  Name="param" ConvertEmptyStringToNull="true" DbType="Int16" />
            </SelectParameters>
    </asp:SqlDataSource>

   <%--     <asp:SqlDataSource ID="SQL_DS_DD_Value" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
         SelectCommand="SELECT DD_Value_ID, DD_Value FROM DD_Values_Master_File GROUP BY DD_Value_ID, DD_Value ORDER BY DD_Value_ID">
    </asp:SqlDataSource>--%>

         <asp:SqlDataSource ID="SQL_DS_DD_Value" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
         SelectCommand="(SELECT DD_Value_ID, DD_Value FROM DD_Values_Master_File where DD_Value_ID < (SELECT (Project_Goal-Project_Raised )  FROM Project_Data_File WHERE (Project_ID = @param) and  (Project_Type = 1)) GROUP BY DD_Value_ID, DD_Value UNION all SELECT (Project_Goal-Project_Raised )as DD_Value_ID  ,'$' + CONVERT(varchar(12), (Project_Goal-Project_Raised ), 1)  as DD_Value FROM Project_Data_File WHERE (Project_ID = @param) and  (Project_Type = 1) and (Project_Goal-Project_Raised )<'501')">
         
           <SelectParameters>
              
                 <asp:QueryStringParameter Name="param" QueryStringField="pid" 
                        DbType="Int16" />
             <%--   <asp:QueryStringParameter Name="param" QueryStringField="pid" ConvertEmptyStringToNull="true"/>--%>
            </SelectParameters>
    </asp:SqlDataSource>
</section>
</asp:Content>


