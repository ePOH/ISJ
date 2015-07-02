<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="reset_admin_password.aspx.vb" Inherits="admin_reset_admin_password" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Reset Password</title>
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
      <h1>Reset Password</h1>
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
                            <asp:HyperLink ID="HL_Add_User" runat="server" NavigateUrl="~/admin/add_user.aspx">Add User</asp:HyperLink></td>
                        <td class="style4tb">
                            User:</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Users" runat="server" 
                    DataSourceID="SQL_DS_Users" DataTextField="User_Name" 
                    DataValueField="User_ID">
                </asp:DropDownList>
                            <asp:ListSearchExtender ID="DDL_Users_ListSearchExtender" runat="server" 
                                Enabled="True" TargetControlID="DDL_Users">
                            </asp:ListSearchExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_User" runat="server" NavigateUrl="~/admin/modify_user.aspx">Modify User</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Change_Password" runat="server" NavigateUrl="~/admin/change_admin_password.aspx">Change Password</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btn_muser" runat="server" Text="Reset Password" />
                            <asp:ConfirmButtonExtender ID="btn_muser_ConfirmButtonExtender" runat="server" 
                                ConfirmText="Are you sure you wish to reset this user's password?" Enabled="True" TargetControlID="btn_muser">
                            </asp:ConfirmButtonExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Reset_Password" runat="server" NavigateUrl="~/admin/reset_admin_password.aspx">Reset Password</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
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
<asp:SqlDataSource ID="SQL_DS_Users" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        
        
        SelectCommand="SELECT User_ID, User_First_Name + ' ' + User_Last_Name AS User_Name FROM User_Master_File ORDER BY User_Name"></asp:SqlDataSource>
        </asp:Content>