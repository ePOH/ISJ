<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="dashboard.aspx.vb" Inherits="dashboard" Title= "I Support Jamaica Dashboard" %>

<%@ Register src="_controls/popupLend.ascx" tagname="popupLend" tagprefix="uc1" %>


<asp:Content id="head" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="generic-content">
  <div class="container">
    <div class="row">   
     <!--<div class="sub-header">
  <div class="main">
    <div class="section">-->
      <h1>ABOUT YOU</h1>
       
      <div class="sub-header2"><asp:HyperLink ID="hl_manage_profile" runat="server" NavigateUrl="~/manage_profile.aspx">MANAGE PROFILE</asp:HyperLink></div>
    </div>
  <!--</div>
</div>-->

<div class="profiles">
  
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="feature">
          <div class="image"><asp:Image ID="im_profile" runat="server" Width="140" Height="140" /></div>
            <h4><asp:Label ID="lb_f_name" runat="server" Text=""></asp:Label>&nbsp;<asp:Label ID="lb_l_name" runat="server" Text=""></asp:Label></h4>
            <asp:Label ID="lb_bio" runat="server" Text=""></asp:Label>
        </div>
        <h3><asp:Label ID="lb_y_s" runat="server" Text=""></asp:Label></h3>
        
<!-- begin repeating region for supported projects -->
        
        <asp:Repeater ID="rep_supported" runat="server" DataSourceID="SQL_DS_Supported">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                <div class="feature">
                  <div class="image"><asp:Image ID="IMG_Supported" runat="server" Width="140" Height="140" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' /></div>
                  <h2><asp:Label ID="lb_business_name_supported" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 24)) %>'></asp:Label></h2>
                  <p><span><asp:Label ID="lb_business_synopsis_supported" runat="server" Text='<%# Left(DataBinder.Eval(Container.DataItem, "Project_Synopsys"), 150) %>'></asp:Label></span></p>
                  <%--<p><span><asp:Label ID="lb_business_details_supported" runat="server" Text='<%# Left(DataBinder.Eval(Container.DataItem, "Project_About"), 150) %>'></asp:Label></span></p>--%>
                  
                   <strong><em><asp:Label ID="lb_business_Contributed" runat="server" Text='<%# string.Format("{0}{1}", "$",FormatNumber(Math.Round(DataBinder.Eval(Container.DataItem, "Contributed_Amount"), 2), 2, , TriState.True, TriState.True)) %>' ForeColor="#007B3D"></asp:Label></em> USER CONTRIBUTION </strong>
                  <br />
                  <strong><em><asp:Label ID="lb_business_raised_supported" runat="server" Text='<%# string.Format("{0}{1}", "$",FormatNumber(Math.Round(DataBinder.Eval(Container.DataItem, "Project_Raised"), 2), 2, , TriState.True, TriState.True)) %>' ForeColor="#007B3D"></asp:Label></em> RAISED</strong>
                  <hr />
                  <em><asp:Label ID="lb_business_togo_supported" runat="server" Text='<%# string.Format("{0}{1}", "$",FormatNumber(Math.Round(DataBinder.Eval(Container.DataItem, "Project_Goal")-DataBinder.Eval(Container.DataItem, "Project_Raised"), 2), 2, , TriState.True, TriState.True)) %>' ForeColor="Black" Visible='<%# IIf(Eval("Project_Status") = 2, "False","True") %>' ></asp:Label></em><asp:Label ID="Label1" runat="server" Text='<%# IIf(Eval("Project_Status") = 2, " FULLY FUNDED","STILL TO GO") %>'></asp:Label>
                  <hr />
                  <em><asp:Label ID="Label2" runat="server" Text='<%# Eval("Contributors")%>' ForeColor="Black"></asp:Label></em> <span>TOTAL DONORS</span>
                </div>
                </ItemTemplate>
                <SeparatorTemplate>
			    </SeparatorTemplate>
            </asp:Repeater>
        
<!-- end repeating region -->
        
        <h3>YOU MIGHT BE INTERESTED IN:</h3>
        <div class="feature2">
          <div class="sub-feature">
            <h4>BUSINESSES</h4>
            
<!-- begin repeating region for yellow region articles -->

             
              <div class="article">
            <asp:Repeater ID="rep_business" runat="server" DataSourceID="SQL_DS_Business_Interest">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
              <!--  <div class="article"> -->
                    <div class="image"><asp:Image ID="IMG_Business" runat="server" Width="100" Height="100" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' /></div>
                        <h4><asp:Label ID="lb_business_name" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></h4>
                        <p><asp:Label ID="lb_business_synopsis" runat="server" Text='<%# Left(DataBinder.Eval(Container.DataItem, "Project_Synopsys"), 75) %>'></asp:Label><br/>
                        <%--<asp:HyperLink ID="hl_business_details" runat="server" NavigateUrl='<%# "business_details.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>READ MORE</asp:HyperLink>--%>
                        <asp:HyperLink ID="HyperLinkuu" runat="server" >READ MORE</asp:HyperLink>
                     <%--   <asp:ModalPopupExtender ID="mpbb1j" runat="server" PopupControlID="Paneldash1" TargetControlID="HyperLinkuu" 
                            CancelControlID="btndashClose" BackgroundCssClass="modalBackground">
                        </asp:ModalPopupExtender>--%>
                        <asp:Panel ID="Paneldash1" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                           
    We're so excited to announce a new feature coming soon which will allow you to LEND to micro-enterprises in Jamaica. Let us notify you when we launch this exciting feature of ISupportJamaica by giving us your Email
    <asp:TextBox ID="txtdashmail" runat="server"></asp:TextBox>, or if you would like to GIVE to a project, 
              
              <asp:HyperLink ID="hlgivedashnow" runat="server" NavigateUrl="~/projects.aspx">click here.</asp:HyperLink>
              
              <br /> <br />
    <asp:Button ID="btndashClose" runat="server" Text="Cancel" /> &nbsp;<asp:Button ID="btndashOK" runat="server" Text="Submit" OnClick="Getuserdashemail" />
     <div>&nbsp;<br /> </div>
                        </asp:Panel>
                        </p>
              
                  <!--  </div> -->
                </ItemTemplate>
                <SeparatorTemplate>
			    </SeparatorTemplate>
            </asp:Repeater>
              </div>
<!-- end repeating region -->

          </div>
          <div class="sub-feature2">
          <h4>PROJECTS</h4>
          
<!-- begin repeating region for green region articles -->
  <div class="article">
            <asp:Repeater ID="rep_project" runat="server" DataSourceID="SQL_DS_Project_Interest">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
               <!-- <div class="article"> -->
                    <div class="image"><asp:Image ID="IMG_Project" runat="server" Width="100" Height="100" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") %>' /></div>
                        <h4><asp:Label ID="lb_project_name" runat="server" Text='<%# UCase(Left(DataBinder.Eval(Container.DataItem, "Project_Short_Name"), 25)) %>'></asp:Label></h4>
                        <p><asp:Label ID="lb_project_synopsis" runat="server" Text='<%# Left(DataBinder.Eval(Container.DataItem, "Project_Synopsys"), 75) %>'></asp:Label><br/>
                        <asp:HyperLink ID="hl_project_details" runat="server" NavigateUrl='<%# "project_details.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>READ MORE</asp:HyperLink></p>
                    <!--</div> -->
                </ItemTemplate>
                <SeparatorTemplate>
			    </SeparatorTemplate>
            </asp:Repeater>
         </div>   
<!-- end repeating region -->

          </div>
        </div>
       
      </div>
     
      <div class="genericColumn">
      </div>
      
    </div>
  </div> 
</div>

<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>
          <asp:HiddenField ID="hf_s_id" runat="server" />
        </p>
    </div>
  </div>
</div>

<asp:SqlDataSource ID="SQL_DS_Project_Interest" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT TOP (1) Project_Data_File.Project_ID, Project_Data_File.Project_Type, Project_Data_File.Project_Short_Name, Project_Data_File.Project_Synopsys, Project_Data_File.Project_Image FROM Home_Page_Data_File INNER JOIN Project_Data_File ON Home_Page_Data_File.Project_ID = Project_Data_File.Project_ID WHERE (Project_Data_File.Project_Status = 1) AND (Project_Data_File.Project_Type = 1) ORDER BY NEWID()"></asp:SqlDataSource>

<asp:SqlDataSource ID="SQL_DS_Business_Interest" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
        SelectCommand="SELECT TOP (1) Project_Data_File.Project_ID, Project_Data_File.Project_Type, Project_Data_File.Project_Short_Name, Project_Data_File.Project_Synopsys, Project_Data_File.Project_Image FROM Home_Page_Data_File INNER JOIN Project_Data_File ON Home_Page_Data_File.Project_ID = Project_Data_File.Project_ID WHERE (Project_Data_File.Project_Status = 1) AND (Project_Data_File.Project_Type = 2) ORDER BY NEWID()"></asp:SqlDataSource>

<asp:SqlDataSource ID="SQL_DS_Supported" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"   
        SelectCommand="SQL_DS_Supported" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter ControlID="hf_s_id" Name="d_s_id" PropertyName="Value" />
    </SelectParameters>
    </asp:SqlDataSource>
	</div>
	</div>
	</section>
</asp:Content>