<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="reset_password.aspx.vb" Inherits="reset_password" %>
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
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> </asp:ToolkitScriptManager>
        <div class="sub-header">
  <div class="main">
    <div class="section" style="margin:10px;">
      <h1>Reset Password</h1>
    </div>
  </div>
</div>

<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
          <table >
                    <tr>
                        
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Label ID="lb_session_name" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        
                        <td class="style4tb" colspan="3" style="text-align:left; padding-left:10px;">
                            <asp:HyperLink ID="HL_F_Pword" runat="server" NavigateUrl="~/forgot_password.aspx">Forgot your password?</asp:HyperLink>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="style4tb">
                            New Password:</td>
                            <td class="style2tb">
                                <asp:RegularExpressionValidator ID="Val_Reg_NPassword1" runat="server" ControlToValidate="tb_npassword1"
                            Display="Dynamic" ErrorMessage="Password has not met security requirements!" 
                                    ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{8,24}$" 
                                    ForeColor="Red" Text="*"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="Val_Req_NPassword1" runat="server" 
                        ErrorMessage="New Password is Required!" ControlToValidate="tb_npassword1" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_npassword1" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:BalloonPopupExtender ID="NPassword1_BalloonPopupExtender" runat="server" 
        BalloonPopupControlID="Panel1" CustomCssUrl="" 
        DynamicServicePath="" Enabled="True" ExtenderControlID="" 
        Position="BottomRight" TargetControlID="tb_npassword1">
    </asp:BalloonPopupExtender>
    <asp:Panel ID="Panel1" runat="server" CssClass="pup">
    Passwords must have a minimum of eight characters including at least one uppercase letter and at least one digit.
    </asp:Panel>
                            <asp:TextBoxWatermarkExtender ID="login_npassword1_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_npassword1" 
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>
                           
                            <asp:PasswordStrength ID="login_npassword1_PasswordStrength" runat="server" TextStrengthDescriptions="Poor;Weak;Fair;Strong" 
                                Enabled="True" TargetControlID="tb_npassword1">
                            </asp:PasswordStrength>
                            </td>
                    </tr>
                    <tr>
                        
                        <td class="style4tb">
                            Confirm Password:</td>
                            <td class="style2tb">
                            <asp:CompareValidator ID="Val_Comp_Confirm" runat="server" ControlToCompare="tb_npassword1"
                            ControlToValidate="tb_npassword2" ErrorMessage="Passwords do not match!" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="Val_Req_NPassword2" runat="server" 
                        ErrorMessage="Confirm Password is Required!" ControlToValidate="tb_npassword2" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_npassword2" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_npassword2_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_npassword2" 
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>
                            
                            <asp:PasswordStrength ID="login_npassword2_PasswordStrength" runat="server" TextStrengthDescriptions="Poor;Weak;Fair;Strong" 
                                Enabled="True" TargetControlID="tb_npassword2">
                            </asp:PasswordStrength>
                            </td>
                    </tr>
                    <tr>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btn_rpassword" runat="server" Text="Reset Password" /></td>
                    </tr>
                    <tr>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                        <asp:Label ID="Password_Change_Msg" runat="server" ForeColor="Red"></asp:Label>
                            <asp:ValidationSummary ID="Val_Sum_PWord" runat="server" ForeColor="Red" /></td>
                    </tr>
        </table>
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
