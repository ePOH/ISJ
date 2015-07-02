<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="delete_project_chooser.aspx.vb" Inherits="admin_delete_project_chooser" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Delete Project/Business</title>
    <style type="text/css">
        .style1tb
        {
            width: 200px;
            text-align: right;
        }
        .style4tb
        {
            width: 200px;
            text-align: right;
            vertical-align:top;
        }
        .style2tb
        {
            width: 30px;
            vertical-align:top;
        }
        .style5tb
        {
            width: 1100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>Delete Project/Business</h1>
    </div>
  </div>
</div>

<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
        <p>
          <table style="width:1000px;">
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Add_Project_Business" runat="server" NavigateUrl="~/admin/add_project.aspx">Add Project/Business</asp:HyperLink></td>
                        <td class="style4tb">
                            Type:</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Project_Type" runat="server" 
                                DataSourceID="SQL_DS_Project_Type" DataTextField="Project_Type" 
                                DataValueField="Project_Type_ID" AutoPostBack="True">
                            </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_Project_Business" runat="server" NavigateUrl="~/admin/modify_project_chooser.aspx">Modify Project/Business</asp:HyperLink></td>
                        <td class="style4tb">
                            Title:</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Project_Title" runat="server" 
                                DataSourceID="SQL_DS_Project" DataTextField="Project_Name" 
                                DataValueField="Project_ID" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:ListSearchExtender ID="DDL_Project_Title_ListSearchExtender" 
                                runat="server" Enabled="True" TargetControlID="DDL_Project_Title">
                            </asp:ListSearchExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Delete_Project_Business" runat="server" NavigateUrl="~/admin/delete_project_chooser.aspx">Delete Project/Business</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btn_mproject" runat="server" Text="Delete" />
                            <asp:ConfirmButtonExtender ID="btn_mproject_ConfirmButtonExtender" 
                                runat="server" ConfirmText="Are you sure you wish to delete this record?" Enabled="True" TargetControlID="btn_mproject">
                            </asp:ConfirmButtonExtender>
                        </td>
                    </tr>
        </table>
        </p>
        </div>
      </div>   
    </div>
  </div> 
</div>

<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>&nbsp;</p>
    </div>
  </div>
</div>
<asp:NoBot ID="NoBot1" runat="server" />
<asp:SqlDataSource ID="SQL_DS_Project_Type" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        SelectCommand="SELECT * FROM [Project_Type_Master_File]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SQL_DS_Project" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        
        
        SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File WHERE (Project_Type = @param)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDL_Project_Type" Name="param" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
        </asp:Content>