<%@ Page Language="VB" MasterPageFile="MasterPage2.master" AutoEventWireup="false" CodeFile="project_parishes.aspx.vb" Inherits="project_parishes" %>



<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>I Support Jamaica Projects</title>
		<link href="Scripts/index.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="Scripts/jQuery_accordian.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="generic-content">
        <div class="container">
		
<div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>PROJECTS IN <asp:Label ID="lb_projects_parish" runat="server" Text=""></asp:Label></h1>
    </div>
  </div>
</div>

<div class="accordian">
  <div class="main">
    <div class="section">
      <div class="genericColumn">
        <h1><img src="Images/buttons/featured.jpg" width="125" height="105" alt="featured"></h1>
      </div>
	  
      <div class="row">
		<div class="col-md-9">
        <div class="row">
        
<!-- begin repeating region for projects -->
          <asp:Repeater ID="Projects_Featured" runat="server" DataSourceID="SQL_DS_Projects_Featured">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                 <div class="col-sm-5 col-md-3">
					<div class="thumbnail">
                          <asp:HyperLink ID="HL_Project_Img_Feature" runat="server">
                            <asp:Image ID="IMG_Project_Feature" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
                        </asp:HyperLink>
                          <div class="caption">
                              <div class="projectName"><asp:Label ID="lb_project_name_feature" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></div>
                              <div class="raised"><asp:Label ID="lb_project_raised_feature" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
                              <div class="left"><asp:Label ID="lb_project_left_feature" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
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
        <div class="class="col-md-3"">
          <p>
          PROJECTS<br />
          <strong><asp:Label ID="lb_projects_total" runat="server" Text=""></asp:Label></strong><br />
          TO DATE
          </p>
          <p class="toggle"><a href="projects_active_parish.aspx">SEE ALL</a></p>
        </div>
    </div>
  </div>
</div>


<div class="accordian">
  <div class="main">
    <div class="section">
      <div class="genericColumn">
        <h1><img src="Images/buttons/active.jpg" width="125" height="105" alt="active"></h1>
      </div>
	  
      <div class="row">
		<div class="col-md-9">
        <div class="row">
        
<!-- begin repeating region for projects -->

          <asp:Repeater ID="Projects_Active" runat="server" DataSourceID="SQL_DS_Projects_Active">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
					<div class="col-sm-5 col-md-3">
						<div class="thumbnail">
                            <asp:HyperLink ID="HL_Project_Img_Active" runat="server">
                          <asp:Image ID="IMG_Project_Active" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
                        </asp:HyperLink>
                          <div class="caption">
                            <div class="genericColumn">
                              <div class="projectName"><asp:Label ID="lb_project_name_active" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></div>
                            </div>
                              <div class="raised"><asp:Label ID="lb_project_raised_active" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
                              <div class="left"><asp:Label ID="lb_project_left_active" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
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
          <p class="hidden" >
          RAISED<br />
          <strong><asp:Label ID="lb_projects_raised" runat="server" Text=""></asp:Label></strong> M<br />
          TO DATE
          </p>
          <p class="toggle"><asp:HyperLink ID="hl_sa_active" runat="server" Text="SEE ALL"></asp:HyperLink></p>
      </div>
    </div>
  </div>
</div>


<div class="accordian">
  <div class="main">
    <div class="section">
      <div class="genericColumn">
        <h1><img src="Images/buttons/completed.jpg" width="125" height="105" alt="completed"></h1>
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
                            <asp:HyperLink ID="HL_Project_Img_Completed" runat="server">
                          <asp:Image ID="IMG_Project_Completed" runat="server" Width="190" Height="155" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' />
                        </asp:HyperLink>
                          <div class="caption">
                              <div class="projectName"><asp:Label ID="lb_project_name_completed" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></div>
                              <div class="raised"><asp:Label ID="lb_project_raised_completed" runat="server" Text='<%# "$" & FormatNumber(DataBinder.Eval(Container.DataItem, "Project_Raised"), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>RAISED</em></div>
                              <div class="left"><asp:Label ID="lb_project_left_completed" runat="server" Text='<%# "$" & FormatNumber((DataBinder.Eval(Container.DataItem, "Project_Goal") - DataBinder.Eval(Container.DataItem, "Project_Raised")), 0, , TriState.True, TriState.True) %>'></asp:Label>&nbsp;<em>TO GO</em></div>
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
          <p class ="hidden">
          LENDERS/DONERS <br />
          <strong><asp:Label ID="lb_projects_lenders" runat="server" Text=""></asp:Label></strong><br />
          TO DATE
          </p>
          <p class="toggle"><asp:HyperLink ID="hl_sa_complete" runat="server" Text="SEE ALL"></asp:HyperLink></p>
        </div>
    </div>
  </div>
</div>

</div>
</section>

<%--<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>&nbsp;</p>
    </div>
      
  </div></div>--%>



    <asp:SqlDataSource ID="SQL_DS_Projects_Active" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT Project_ID, Project_Image, Project_Goal, Project_Raised, Project_Parish, Project_Short_Name, Project_Type FROM Project_Data_File WHERE (Project_Status = 1) AND (Project_Parish = @param) and (Project_Data_File.Project_Type =1) ORDER BY Project_Name">
        <SelectParameters>
            <asp:QueryStringParameter Name="param" QueryStringField="parish" ConvertEmptyStringToNull="true" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_DS_Projects_Complete" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT Project_ID, Project_Image, Project_Goal, Project_Raised, Project_Parish, Project_Short_Name, Project_Type FROM Project_Data_File WHERE ((Project_Status = 2) or (Project_Status = 3)) AND (Project_Parish = @param) and (Project_Data_File.Project_Type =1) ORDER BY Project_Name">
        <SelectParameters>
            <asp:QueryStringParameter Name="param" QueryStringField="parish"  ConvertEmptyStringToNull="true"/>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_DS_Projects_Featured" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" SelectCommand="SELECT Project_Data_File.Project_ID, Project_Data_File.Project_Image, Project_Data_File.Project_Goal, Project_Data_File.Project_Raised, Project_Data_File.Project_Parish, Project_Data_File.Project_Short_Name, Project_Data_File.Project_Type FROM Project_Data_File INNER JOIN Project_Featured_Data_File ON Project_Data_File.Project_ID = Project_Featured_Data_File.Project_ID WHERE (Project_Data_File.Project_Parish = @param) and (Project_Data_File.Project_Type =1) ORDER BY Project_Data_File.Project_Name">
        <SelectParameters>
            <asp:QueryStringParameter Name="param" QueryStringField="parish" ConvertEmptyStringToNull="true"/>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_DS_Projects_Stats" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" SelectCommand="SELECT COUNT(Project_ID) AS Project_ID, SUM(Project_Raised) AS Project_Raised FROM Project_Data_File where Project_Type =1  ">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_DS_Projects_Lenders" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"  SelectCommand="SELECT COUNT(Transaction_ID) AS Lenders FROM Paypal_Transaction_Data_File">
    </asp:SqlDataSource>
  
    <asp:SqlDataSource ID="SQL_DS_Projects_Parish" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"         
        SelectCommand="SELECT Parish FROM Parish_Master_File WHERE (Parish_ID = @param)">
        <SelectParameters>
            <asp:QueryStringParameter Name="param" QueryStringField="parish" ConvertEmptyStringToNull="true" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>