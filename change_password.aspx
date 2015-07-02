<%@ Page Language="VB" MasterPageFile="MasterPage2.master" AutoEventWireup="false" CodeFile="change_password.aspx.vb" Inherits="change_password" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Manage Profile</title>
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
                            <asp:HyperLink ID="HL_Add_User" runat="server" NavigateUrl="~/manage_profile.aspx">Manage Profile</asp:HyperLink></td>
                        <td class="style4tb">
                            Current Password:</td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_CPassword" runat="server" 
                        ErrorMessage="Current Password is Required!" ControlToValidate="tb_cpassword" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_cpassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_cpassword_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_cpassword" 
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>
                            <asp:PasswordStrength ID="login_cpassword_PasswordStrength" runat="server" 
                                Enabled="True" TargetControlID="tb_cpassword">
                            </asp:PasswordStrength>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            New Password:</td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_NPassword1" runat="server" 
                        ErrorMessage="New Password is Required!" ControlToValidate="tb_npassword1" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_npassword1" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_npassword1_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_npassword1" 
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>
                            <asp:PasswordStrength ID="login_npassword1_PasswordStrength" runat="server" 
                                Enabled="True" TargetControlID="tb_npassword1">
                            </asp:PasswordStrength>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
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
                            <asp:PasswordStrength ID="login_npassword2_PasswordStrength" runat="server" 
                                Enabled="True" TargetControlID="tb_npassword2">
                            </asp:PasswordStrength>
                            </td>
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
                            <asp:Button ID="btn_cpassword" runat="server" Text="Change Password" /></td>
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
                            <asp:ValidationSummary ID="Val_Sum_PWord" runat="server" ForeColor="Red" /></td>
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
    <asp:SqlDataSource ID="SQL_DS_Project_Type" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        SelectCommand="SELECT * FROM [Project_Type_Master_File]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SQL_DS_Parishes" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        SelectCommand="SELECT * FROM [Parish_Master_File] ORDER BY [Parish]"></asp:SqlDataSource>
        </asp:Content>
