<%@ Page Title="Projects | I Support Jamaica" Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="projects.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .project-image {
            max-width:100%;
            max-height:155px;
            min-height:155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="generic-header">
        <a href="https://www.youtube.com/watch?v=IasPjY0JQ2c" target="_blank"><img src="images/banner4.png" alt="Banner Image" style="max-height:100%; max-width:100%; margin-top:-30px;" /></a> 
    </section>

    <section class="generic-content">
        <div class="container">
			<div class="row">
				<div class="featured-projects">
					<div class="row" style="padding-top:20px;">
						<div class="col-md-12">
							<h1><span class="label label-primary" style="border-radius:5px !important;">FEATURED</span></h1>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="row">
								<!-- begin repeating region for projects -->
								<asp:Repeater ID="Projects_Featured" runat="server" DataSourceID="SQL_DS_Projects_Featured">
									<HeaderTemplate></HeaderTemplate>
									<ItemTemplate>
										<div class="col-sm-5 col-md-3">
											<div class="thumbnail" style="border-radius:5px !important;">
												<asp:HyperLink ID="HL_Project_Img_Feature" runat="server" NavigateUrl='<%# "project/" & DataBinder.Eval(Container.DataItem, "Project_Slug")%>'>
													<asp:Image ID="IMG_Project_Feature" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' CssClass="project-image" />
												</asp:HyperLink>
												<div class="caption">
													<h5><asp:Label ID="lb_project_name_feature" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></h5>
													<p>
														<div class="raised"><asp:Label ID="lb_project_raised_feature" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
												<div class="left"><asp:Label ID="lb_project_left_feature" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
													</p>
												</div>
											</div>
										</div>
									</ItemTemplate>
									<SeparatorTemplate></SeparatorTemplate>
								</asp:Repeater>
								<!-- end repeating region -->
							</div>
						</div>
						<div class="col-md-3">
							<p>
								PROJECTS<br />
								<strong><asp:Label ID="lb_projects_total" runat="server" Text=""></asp:Label></strong><br />
								TO DATE
							</p>
							<p class="toggle"><a href="projects_active.aspx">SEE ALL</a></p>
							<a href="parishes.aspx"><img src="/images/buttons/findProject.jpg" alt="Find A Project In Your Parish" width="200px" /></a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="active-projects">
					<div class="row" style="padding-top:20px;">
						<div class="col-md-12">
							<h1><span class="label label-primary" style="border-radius:5px !important;">ACTIVE</span></h1>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="row">
								<!-- begin repeating region for projects -->
								<asp:Repeater ID="Projects_Active" runat="server" DataSourceID="SQL_DS_Projects_Active">
									<HeaderTemplate></HeaderTemplate>
									<ItemTemplate>
										<div class="col-sm-5 col-md-3">
											<div class="thumbnail" style="border-radius:5px !important;">
												<asp:HyperLink ID="HL_Project_Img_Active" runat="server" NavigateUrl='<%# "project/" & DataBinder.Eval(Container.DataItem, "Project_Slug")%>'>
													<asp:Image ID="IMG_Project_Active" runat="server" CssClass="project-image" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
												</asp:HyperLink>
												<div class="caption">
													<h5><asp:Label ID="lb_project_name_active" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></h5>
													<p>
														<div class="raised"><asp:Label ID="lb_project_raised_active" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
														<div class="left"><asp:Label ID="lb_project_left_active" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
													</p>
												</div>
											</div>
										</div>
									</ItemTemplate>
									<SeparatorTemplate></SeparatorTemplate>
								</asp:Repeater>
								<!-- end repeating region -->
							</div>
						</div>
						<div class="col-md-3">
							<p class="hidden">
								RAISED<br />
								<strong><asp:Label ID="lb_projects_raised" runat="server" Text=""></asp:Label></strong> M<br />
								TO DATE
								</p>
							<p class="toggle"><a href="projects_active.aspx">SEE ALL</a></p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="completed-projects">
					<div class="row" style="padding-top:20px;">
						<div class="col-md-12">
							<h1><span class="label label-primary" style="border-radius:5px !important;">COMPLETED</span></h1>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="row">
								<!-- begin repeating region for projects -->
								<asp:Repeater ID="Projects_Completed" runat="server" DataSourceID="SQL_DS_Projects_Complete">
									<HeaderTemplate></HeaderTemplate>
									<ItemTemplate>
										<div class="col-sm-5 col-md-3" >
											<div class="thumbnail" style="border-radius:5px !important;">
												<asp:HyperLink ID="HL_Project_Img_Completed" runat="server" NavigateUrl='<%# "project/" & DataBinder.Eval(Container.DataItem, "Project_Slug")%>'>
													<asp:Image ID="IMG_Project_Completed" runat="server" CssClass="project-image" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
												</asp:HyperLink>
												<div class="caption">
													<h5><asp:Label ID="lb_project_name_completed" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></h5>
													<p>
														<div class="raised"><asp:Label ID="lb_project_raised_completed" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
														<div class="left"><asp:Label ID="lb_project_left_completed" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
													</p>
												</div>
											</div>
										</div>
									</ItemTemplate>
									<SeparatorTemplate></SeparatorTemplate>
								</asp:Repeater>
								<!-- end repeating region -->
							</div>
						</div>
						<div class="col-md-3">
							<p class="hidden">
								LENDERS/DONERS<br />
								<strong><asp:Label ID="lb_projects_lenders" runat="server" Text=""></asp:Label></strong><br />
								TO DATE
							</p>
							<p class="toggle"><a href="projects_complete.aspx">SEE ALL</a></p>
						</div>
					</div>
				</div>
			</div>

            <div class="row">
				<div class="completed-projects">
					<div class="row">
						<div class="col-md-12">
							<h1><span class="label label-primary" style="border-radius:5px !important;">ARCHIVED</span></h1>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="row">
								<!-- begin repeating region for projects -->
								<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SQL_DS_Projects_Archived">
									<HeaderTemplate></HeaderTemplate>
									<ItemTemplate>
										<div class="col-sm-5 col-md-3">
											<div class="thumbnail">
												<asp:HyperLink ID="HL_Project_Img_Completed" runat="server" NavigateUrl='<%# "project/" & DataBinder.Eval(Container.DataItem, "Project_Slug") %>'>
													<asp:Image ID="IMG_Project_Completed" runat="server" CssClass="project-image" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
												</asp:HyperLink>
												<div class="caption">
													<h5><asp:Label ID="lb_project_name_completed" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></h5>
													<p>
														<div class="raised"><asp:Label ID="lb_project_raised_completed" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
														<div class="left"><asp:Label ID="lb_project_left_completed" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
													</p>
												</div>
											</div>
										</div>
									</ItemTemplate>
									<SeparatorTemplate></SeparatorTemplate>
								</asp:Repeater>
								<!-- end repeating region -->
							</div>
						</div>
						<div class="col-md-3">
							<p class="hidden">
								LENDERS/DONERS<br />
								<strong><asp:Label ID="Label1" runat="server" Text=""></asp:Label></strong><br />
								TO DATE
							</p>
							<p class="toggle"><a href="projects_complete.aspx">SEE ALL</a></p>
						</div>
					</div>
				</div>
			</div>
			
			<asp:SqlDataSource ID="SQL_DS_Projects_Active" runat="server" 
				ConnectionString="<%$ ConnectionStrings:ConnISJ %>"         
				SelectCommand="SELECT TOP (4) P.Project_ID, P.Project_Short_Name, P.Project_Slug, P.Project_Image, P.Project_Goal, P.Project_Raised,PA.SequenceNo
                    FROM Project_Data_File P
                    LEFT OUTER JOIN Projects_Sequence_Active PA ON P.Project_ID = PA.Project_ID
                    WHERE (P.Project_Status = 1) AND (P.Project_Type = 1) ORDER BY PA.SequenceNo ASC">
			</asp:SqlDataSource>
			<asp:SqlDataSource ID="SQL_DS_Projects_Complete" runat="server" 
				ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
				SelectCommand="SELECT TOP (4) P.Project_ID, P.Project_Short_Name, P.Project_Slug, P.Project_Image, P.Project_Goal, P.Project_Raised,PA.SequenceNo
                    FROM Project_Data_File P
                    LEFT OUTER JOIN Projects_Sequence_Completed PA ON P.Project_ID = PA.Project_ID
                    WHERE ((P.Project_Status = 2) OR (P.Project_Status = 3)) AND (P.Project_Type = 1) ORDER BY PA.SequenceNo ASC">
			</asp:SqlDataSource>
            <asp:SqlDataSource ID="SQL_DS_Projects_Archived" runat="server" 
				ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
				SelectCommand="SELECT TOP (4) Project_ID, Project_Short_Name, Project_Slug, Project_Image, Project_Goal, Project_Raised FROM Project_Data_File WHERE (Project_Status = 4) ORDER BY NEWID()">
			</asp:SqlDataSource>
            <!-- SELECT Project_Data_File.Project_ID, Project_Data_File.Project_Short_Name, Project_Data_File.Project_Image, Project_Data_File.Project_Goal, Project_Data_File.Project_Raised FROM Project_Data_File INNER JOIN Project_Featured_Data_File ON Project_Data_File.Project_ID = Project_Featured_Data_File.Project_ID WHERE (Project_Data_File.Project_Type = 1) ORDER BY newid() -->
			<asp:SqlDataSource ID="SQL_DS_Projects_Featured" runat="server" 
				ConnectionString="<%$ ConnectionStrings:ConnISJ %>"         
				SelectCommand="SELECT PDF.Project_AddSeal,Project_Featured_Data_File.Project_ID, PDF.Project_Owner_First_Name, PDF.Project_Name, PDF.Project_Slug,PDF.Project_About, Project_Featured_Data_File.Project_Type AS Project_Type_ID, Project_Type_Master_File.Project_Type, PDF.Project_Short_Name, PDF.Project_Synopsys, PDF.Project_Needs, PDF.Project_Image, PDF.Project_Status ,PDF.Project_Raised,PDF.Project_Goal , PDF.Project_End_Date FROM Project_Data_File PDF INNER JOIN Project_Featured_Data_File ON PDF.Project_ID = Project_Featured_Data_File.Project_ID INNER JOIN Project_Type_Master_File ON Project_Featured_Data_File.Project_Type = Project_Type_Master_File.Project_Type_ID ORDER BY Project_Featured_Data_File.SequenceNumber">

			</asp:SqlDataSource>
			<asp:SqlDataSource ID="SQL_DS_Projects_Stats" runat="server" 
				ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
				SelectCommand="SELECT COUNT(Project_ID) AS Project_ID, SUM(Project_Raised) AS Project_Raised FROM Project_Data_File WHERE (Project_Type = 1)">
			</asp:SqlDataSource>
			<asp:SqlDataSource ID="SQL_DS_Projects_Lenders" runat="server" 
				ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
				SelectCommand="SELECT COUNT(Transaction_ID) AS Lenders FROM Paypal_Transaction_Data_File">
			</asp:SqlDataSource>
        </div>
    </section>
</asp:Content>

