<%@ Page title ="Business | I Support Jamaica "Language="VB" MasterPageFile="MasterPage2.master" AutoEventWireup="false" CodeFile="businesses.aspx.vb" Inherits="businesses" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <%--<title>I Support Jamaica Businesses</title>--%>
    <%--<script type="text/javascript" src="Scripts/jQuery_accordian.js"></script>--%>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="generic-header">
        <a href="https://www.youtube.com/watch?v=IasPjY0JQ2c" target="_blank"><img src="images/business1.png" alt="Banner Image" width="100%" /></a> 
    </section>
     <section class="generic-content">
        <div class="container">
			<div class="row">
                <div class="featured-projects">
                    <div class="row">
						<div class="col-md-12">
							<h1><span class="label label-primary">FEATURED</span></h1>
						</div>
					</div>
                    <div class="row">
						<div class="col-md-9">
							<div class="row">
								<!-- begin repeating region for projects -->
                                   <asp:Repeater ID="Projects_Featured" runat="server" DataSourceID="SQL_DS_Projects_Featured">
                                    <HeaderTemplate>   </HeaderTemplate>
                                    <ItemTemplate>
                                        <div class="col-sm-5 col-md-3">
											<div class="thumbnail">
                                              <div class="image">
                                                <asp:HyperLink ID="HL_Project_Img_Feature" runat="server" NavigateUrl='<%# "business_details.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>
                                              <asp:Image ID="IMG_Project_Feature" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
                                            </asp:HyperLink>
                                              </div>
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
                                <SeparatorTemplate>
			                    </SeparatorTemplate>
                            </asp:Repeater>
                    <!-- end repeating region -->
							</div>
						</div>
						<div class="col-md-3">
							<p>
								BUSINESS<br />
								<strong><asp:Label ID="lb_projects_total" runat="server" Text=""></asp:Label></strong><br />
								TO DATE
							</p>
							<p class="toggle"><a href="businesses_active.aspx">SEE ALL</a></p>
							<%--<a href="parishes.aspx"><img src="/images/buttons/findProject.jpg" alt="Find A Project In Your Parish" width="200px" /></a>--%>
						</div>
					</div>


                </div>
            </div>

            <div class="row">
				<div class="active-projects">
					<div class="row">
						<div class="col-md-12">
							<h1><span class="label label-primary">ACTIVE</span></h1>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="row">
								<!-- begin repeating region for projects -->
                                <asp:Repeater ID="Projects_Active" runat="server" DataSourceID="SQL_DS_Projects_Active">
                                    <HeaderTemplate> </HeaderTemplate>
                                    <ItemTemplate>
                                        <div class="col-sm-5 col-md-3">
											<div class="thumbnail">
                                               <asp:HyperLink ID="HL_Project_Img_Active" runat="server" NavigateUrl='<%# "business_details.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>
                                                 <asp:Image ID="IMG_Project_Active" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
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
                                    <SeparatorTemplate>
			                        </SeparatorTemplate>
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
							<p class="toggle"><a href="businesses_active.aspx">SEE ALL</a></p>
						</div>
                    </div>
				</div>
			</div>

            	<div class="row">
				<div class="completed-projects">
					<div class="row">
						<div class="col-md-12">
							<h1><span class="label label-primary">COMPLETED</span></h1>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="row">
								<!-- begin repeating region for projects -->
                                 <asp:Repeater ID="Projects_Completed" runat="server" DataSourceID="SQL_DS_Projects_Complete">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <div class="col-sm-5 col-md-3">
											<div class="thumbnail">
                                                <asp:HyperLink ID="HL_Project_Img_Completed" runat="server" NavigateUrl='<%# "business_details.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>
                                              <asp:Image ID="IMG_Project_Completed" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
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
                                    <SeparatorTemplate>
			                        </SeparatorTemplate>
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
							<p class="toggle"><a href="businesses_complete.aspx">SEE ALL</a></p>
						</div>
					</div>
				</div>
            </div>
        </div>
    </section>
  <%--  <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>BUSINESSES</h1>
    </div>
  </div>
</div>
--%>
<%--<div class="accordian">
  <div class="main">
    <div class="section">
      <div class="genericColumn">
        <h1><asp:Image ID="Image2" runat="server"  ImageUrl="~/Images/buttons/featured.jpg" width="125" height="105" AlternateText="featured" /></h1>
      </div>
      <div class="genericColumn">
        <div class="group">
        
<!-- begin repeating region for projects -->
        
       
          
<!-- end repeating region -->
          
        </div>
      </div>
      <div class="genericColumn">
        <div class="stats">
          <p>
          BUSINESS<br />
          <strong><asp:Label ID="lb_projects_total" runat="server" Text=""></asp:Label></strong><br />
          TO DATE
          </p>
          <p class="toggle"><a href="#">SEE ALL</a></p>
        </div>
      </div>
    </div>
  </div>
</div>--%>
<%--
<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <div class="rule">&nbsp;</div>
    </div>
  </div>
</div>--%>
<%--
<div class="accordian">
  <div class="main">
    <div class="section">
      <div class="genericColumn">
        <h1>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/buttons/active.jpg"  width="125" height="105" AlternateText ="active"/></h1>
          
      </div>
      <div class="genericColumn">
        <div class="group">
        
<!-- begin repeating region for projects -->

          <asp:Repeater ID="Projects_Active" runat="server" DataSourceID="SQL_DS_Projects_Active">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="project">
                        <div class="active">
                          <div class="image">
                            <asp:HyperLink ID="HL_Project_Img_Active" runat="server" NavigateUrl='<%# "business_details.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>
                          <asp:Image ID="IMG_Project_Active" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
                        </asp:HyperLink>
                          </div>
                          <div class="caption">
                            <div class="genericColumn">
                              <div class="projectName"><asp:Label ID="lb_project_name_active" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></div>
                            </div>
                            <div class="genericColumn">
                              <div class="raised"><asp:Label ID="lb_project_raised_active" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
                              <div class="left"><asp:Label ID="lb_project_left_active" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
                            </div>
                          </div>
                        </div>
                      </div>
                </ItemTemplate>
                <SeparatorTemplate>
			    </SeparatorTemplate>
            </asp:Repeater>
          
<!-- end repeating region -->

        </div>
      </div>
      <div class="genericColumn">
        <div class="stats">
          <p>
          RAISED<br />
          <strong><asp:Label ID="lb_projects_raised" runat="server" Text=""></asp:Label></strong> M<br />
          TO DATE
          </p>
          <p class="toggle"><a href="businesses_active.aspx">SEE ALL</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
--%><%--
<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <div class="rule">&nbsp;</div>
    </div>
  </div>
</div>--%>
<%--
<div class="accordian">
  <div class="main">
    <div class="section">
      <div class="genericColumn">
        <h1><img src="Images/buttons/completed.jpg" width="125" height="105" alt="completed"></h1>
      </div>
      <div class="genericColumn">
        <div class="group">
        
<!-- begin repeating region for projects -->
        
          <asp:Repeater ID="Projects_Completed" runat="server" DataSourceID="SQL_DS_Projects_Complete">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="project">
                        <div class="completed">
                          <div class="image">
                            <asp:HyperLink ID="HL_Project_Img_Completed" runat="server" NavigateUrl='<%# "business_details.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>
                          <asp:Image ID="IMG_Project_Completed" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
                        </asp:HyperLink>
                          </div>
                          <div class="caption">
                            <div class="genericColumn">
                              <div class="projectName"><asp:Label ID="lb_project_name_completed" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></div>
                            </div>
                            <div class="genericColumn">
                              <div class="raised"><asp:Label ID="lb_project_raised_completed" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
                              <div class="left"><asp:Label ID="lb_project_left_completed" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
                            </div>
                          </div>
                        </div>
                      </div>
                </ItemTemplate>
                <SeparatorTemplate>
			    </SeparatorTemplate>
            </asp:Repeater>
          
<!-- end repeating region -->
          
        </div>
      </div>
      <div class="genericColumn">
        <div class="stats">
          <p>
          LENDERS/DONERS <br />
          <strong><asp:Label ID="lb_projects_lenders" runat="server" Text=""></asp:Label></strong><br />
          TO DATE
          </p>
          <p class="toggle"><a href="businesses_complete.aspx">SEE ALL</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
--%>
<%--<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>&nbsp;</p>
    </div>
  </div>
</div>--%>

    <asp:SqlDataSource ID="SQL_DS_Projects_Active" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"  
         SelectCommand="SELECT TOP (3) Project_ID, Project_Short_Name, Project_Image, Project_Goal, Project_Raised FROM Project_Data_File WHERE (Project_Status = 1) AND (Project_Type = 2) ORDER BY NEWID()">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SQL_DS_Projects_Complete" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT TOP (3) Project_ID, Project_Short_Name, Project_Image, Project_Goal, Project_Raised FROM Project_Data_File WHERE (Project_Status = 2) AND (Project_Type = 2) ORDER BY NEWID()">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SQL_DS_Projects_Featured" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
         SelectCommand="SELECT Project_Data_File.Project_ID, Project_Data_File.Project_Short_Name, Project_Data_File.Project_Image, Project_Data_File.Project_Goal, Project_Data_File.Project_Raised FROM Project_Data_File INNER JOIN Project_Featured_Data_File ON Project_Data_File.Project_ID = Project_Featured_Data_File.Project_ID WHERE (Project_Data_File.Project_Type = 2) ORDER BY newid()">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SQL_DS_Projects_Stats" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT COUNT(Project_ID) AS Project_ID, SUM(Project_Raised) AS Project_Raised FROM Project_Data_File WHERE (Project_Type = 2)">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_DS_Projects_Lenders" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        
        
        
        
        SelectCommand="SELECT COUNT(Transaction_ID) AS Lenders FROM Paypal_Transaction_Data_File">
    </asp:SqlDataSource>
</asp:Content>
