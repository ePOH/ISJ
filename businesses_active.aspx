<%@ Page Language="VB" MasterPageFile="MasterPage2.master" AutoEventWireup="false" CodeFile="businesses_active.aspx.vb" Inherits="businesses_active" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>I Support Jamaica Businesses</title>
    <link href="Scripts/index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="generic-content">
	<div class="container">
		<div class="row">

<div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>ACTIVE BUSINESSES</h1>
    </div>
  </div>
</div>

<div class="accordian">
  <div class="main">
    <div class="section">
      <div class="genericColumn">
        <h1><img src="Images/buttons/active.jpg" width="125" height="105" alt="active"></h1>
      </div>
      <div class="genericColumn">
        <div class="group">
        
<!-- begin repeating region for projects -->
        
          <asp:ListView ID="ListView1" runat="server" 
                DataSourceID="SQL_DS_Projects_Active">
                <LayoutTemplate>
                     <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                </LayoutTemplate>
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
    </asp:ListView>
          
<!-- end repeating region -->
          
        </div>
      </div>
      
    </div>
  </div>
</div>

<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>
        <asp:DataPager ID="DataPager2" runat="server" PagedControlID="ListView1" PageSize="9">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                    ShowLastPageButton="True" />
            </Fields>
        </asp:DataPager>
      </p>
    </div>
  </div>
</div>

    <asp:SqlDataSource ID="SQL_DS_Projects_Active" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        
        
        SelectCommand="SELECT Project_ID, Project_Short_Name, Project_Image, Project_Goal, Project_Raised FROM Project_Data_File WHERE (Project_Status = 1) AND (Project_Type = 2) ORDER BY Project_Name">
    </asp:SqlDataSource>

    </div>
	</div>
</section> 
    </asp:Content>