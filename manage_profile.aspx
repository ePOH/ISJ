<%@ Page Language="VB" MasterPageFile="MasterPage2.master" AutoEventWireup="false" CodeFile="manage_profile.aspx.vb" Inherits="manage_profile" %>

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
<section class="generic-content">
  <div class="container">
    <div class="row">
    <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>MANAGE PROFILE</h1>
    </div>
  </div>
</div>

<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
        <p>
	<%--	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
          <table style="width:1000px;">
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Add_Project_Business" runat="server" NavigateUrl="~/change_password.aspx">Change Password</asp:HyperLink></td>
                        <td class="style4tb">
                            <asp:Label ID="lb_fname" runat="server" Text="First Name:"></asp:Label></td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_fname" runat="server" 
                        ErrorMessage="First Name is Required!" ControlToValidate="tb_fname" 
                                    Display="Dynamic" Text="*" ForeColor="Red" ClientIDMode="Static"></asp:RequiredFieldValidator></td>
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
                            </td>
                        <td class="style4tb">
                            <asp:Label ID="lb_lname" runat="server" Text="Last Name:"></asp:Label></td>
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
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_Parish" runat="server" Text="Email:"></asp:Label></td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_email" runat="server" ReadOnly="True" ForeColor="Gray"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_about" runat="server" Text="Synopsis:"></asp:Label></td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <CE:Editor ID="Profile_Bio" 
                                ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="410px" Height="200px" 
                                style="top: 0px; left: 0px">
                            </CE:Editor></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Image:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:AsyncFileUpload ID="Profile_Image" runat="server" 
                                ToolTip="Click here to choose file." Width="410px" />
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
                        <asp:Button ID="btn_update" runat="server" Text="Update Profile" /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Label ID="Label1" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                        <asp:ValidationSummary ID="Val_Sum_Users" runat="server" ForeColor="Red" />
                            <asp:Label ID="lb_msg" runat="server" ForeColor="Red"></asp:Label></td>
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
</div>
</div>
</section>
		</asp:Content>
