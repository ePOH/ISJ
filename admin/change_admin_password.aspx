<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="change_admin_password.aspx.vb" Inherits="admin_change_admin_password" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Change Password</title>
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
      <h1>Change Password</h1>
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
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Label ID="lb_session_name" runat="server"></asp:Label></td>
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
                            <asp:HyperLink ID="HL_Add_User" runat="server" NavigateUrl="~/admin/add_user.aspx">Add User</asp:HyperLink></td>
                        <td class="style4tb">
                            Current Password:</td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_CPassword" runat="server" 
                        ErrorMessage="Current Password is Required!" ControlToValidate="tb_cpassword" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_cpassword" runat="server" TextMode="Password" CausesValidation="true" ></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_cpassword_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_cpassword" 
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>                         

                           
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_User" runat="server" NavigateUrl="~/admin/modify_user.aspx">Modify User</asp:HyperLink></td>
                        <td class="style4tb">
                            New Password:</td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_NPassword1" runat="server" 
                        ErrorMessage="New Password is Required!" ControlToValidate="tb_npassword1"  ValidationGroup="changeAdmin"
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    
                                    
                                    </td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_npassword1" runat="server" TextMode="Password" ValidationGroup="changeAdmin" CausesValidation="true"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_npassword1_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_npassword1"  
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>
                              <asp:PasswordStrength ID="login_password_PasswordStrength" runat="server" StrengthIndicatorType="Text"  
                                Enabled="True" TargetControlID="tb_npassword1" MinimumUpperCaseCharacters ="1" MinimumNumericCharacters="1" MinimumSymbolCharacters="1"
                                 RequiresUpperAndLowerCaseCharacters ="true" PreferredPasswordLength="12"  >
                            </asp:PasswordStrength>
                             <asp:RegularExpressionValidator ID="Val_Reg_yourPassword" runat="server" ControlToValidate="tb_npassword1"
                            Display="Dynamic" ErrorMessage="Password has not met security requirements!" 
                                    ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{12,24}$" 
                                    ForeColor="Red" Text="*" ValidationGroup="changeAdmin"></asp:RegularExpressionValidator>
                            
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Change_Password" runat="server" NavigateUrl="~/admin/change_admin_password.aspx">Change Password</asp:HyperLink></td>
                        <td class="style4tb">
                            Confirm Password:</td>
                            <td class="style2tb">
                            <asp:CompareValidator ID="Val_Comp_Confirm" runat="server" ControlToCompare="tb_npassword1"
                            ControlToValidate="tb_npassword2" ErrorMessage="Passwords do not match!" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="Val_Req_NPassword2" runat="server" 
                        ErrorMessage="Confirm Password is Required!" ControlToValidate="tb_npassword2" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_npassword2" runat="server" TextMode="Password" ValidationGroup="changeAdmin" CausesValidation="true"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_npassword2_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_npassword2" 
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>                          
                            <asp:PasswordStrength ID="PasswordStrength1" runat="server" StrengthIndicatorType="Text"  
                                Enabled="True" TargetControlID="tb_npassword2" MinimumUpperCaseCharacters ="1" MinimumNumericCharacters="1" MinimumSymbolCharacters="1"
                                 RequiresUpperAndLowerCaseCharacters ="true" PreferredPasswordLength="12"  >
                            </asp:PasswordStrength>
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
                    <tr>
                        <td class="style1tb">
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/Registered_Users.aspx">Registered User</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btn_cpassword" runat="server" Text="Change Password" ValidationGroup="changeAdmin" CausesValidation="true"/></td>
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
                        <asp:Label ID="Password_Change_Msg" runat="server" ForeColor="Red"></asp:Label>
                            <asp:ValidationSummary ID="Val_Sum_PWord" runat="server" ForeColor="Red"  ValidationGroup="changeAdmin"  /></td>
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