<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="add_user.aspx.vb" Inherits="admin_add_user" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Add User</title>
    <style type="text/css">
        .style1tb
        {
            width: 200px;
            text-align: right;
            vertical-align:top;
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
      <h1>Add User</h1>
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
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:HiddenField ID="hf_u_access_level" runat="server" /><asp:HiddenField ID="hf_u_status" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/Registered_Users.aspx">Registered User</asp:HyperLink>
                        &nbsp;
                        </td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btn_nuser" runat="server" Text="Add User" /></td>
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
        </asp:Content>