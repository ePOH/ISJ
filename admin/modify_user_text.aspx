<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="modify_user_text.aspx.vb" Inherits="admin_modify_user_text" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Modify User</title>
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
      <h1>Modify User</h1>
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
                            First Name:</td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_fname" runat="server" 
                        ErrorMessage="First Name is Required!" ControlToValidate="tb_fname" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_fname" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_fname_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_fname" 
                                WatermarkText="First Name">
                            </asp:TextBoxWatermarkExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_User" runat="server" NavigateUrl="~/admin/modify_user.aspx">Modify User</asp:HyperLink></td>
                        <td class="style4tb">
                            Last Name:</td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_lname" runat="server" 
                        ErrorMessage="Last Name is Required!" ControlToValidate="tb_lname" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_lname" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_lname_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_lname" 
                                WatermarkText="Last Name">
                            </asp:TextBoxWatermarkExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Change_Password" runat="server" NavigateUrl="~/admin/change_admin_password.aspx">Change Password</asp:HyperLink></td>
                        <td class="style4tb">
                            Email Address:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="Val_Req_Email" runat="server" 
                        ErrorMessage="Email Address is Required!" ControlToValidate="tb_email" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="Val_Reg_Email" runat="server" ControlToValidate="tb_email"
                            Display="Dynamic" ErrorMessage="Email Address wrongly Formatted!" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ForeColor="Red" Text="*"></asp:RegularExpressionValidator>
                                    </td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_email_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_email" 
                                WatermarkText="email@domain.com">
                            </asp:TextBoxWatermarkExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Reset_Password" runat="server" NavigateUrl="~/admin/reset_admin_password.aspx">Reset Password</asp:HyperLink></td>
                        <td class="style4tb">
                            Status:</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Status" runat="server" 
                    DataSourceID="SQL_DS_Status" DataTextField="Status" 
                    DataValueField="Status_ID">
                </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/DonorList.aspx">Registered User</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:HiddenField ID="hf_u_access_level" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                        <asp:Button ID="btn_muser" runat="server" Text="Modify User" /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
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
                        <asp:ValidationSummary ID="Val_Sum_Users" runat="server" ForeColor="Red" /></td>
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
            
        
        
        
        SelectCommand="SELECT User_Master_File.* FROM User_Master_File WHERE (User_ID = @param)">
    <SelectParameters>
        <asp:SessionParameter Name="param" SessionField="User_ID" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_DS_Status" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        
        
        
        
        SelectCommand="SELECT News_Status_ID AS Status_ID, News_Status AS Status FROM News_Status_Data_File ORDER BY Status">
    </asp:SqlDataSource>
        </asp:Content>
