<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="add_project.aspx.vb" Inherits="admin_add_project" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Add New Project/Business</title>


    <style type="text/css">
        .style1tb
        {
            width: 200px;
            text-align: right;
        }
        .style4tb
        {
            width: 220px;
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
            width: 1080px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>Add New Project/Business</h1>
    </div>
  </div>
</div>

<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
          <table style="width:1000px;">
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Add_Project_Business" runat="server" NavigateUrl="~/admin/add_project.aspx">Add Project/Business</asp:HyperLink></td>
                        <td class="style4tb">
                            <asp:Label ID="lb_Project_Type" runat="server" Text="Type:"></asp:Label></td>
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
                            <asp:Label ID="lb_pname" runat="server" Text="Title:"></asp:Label></td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_pname" runat="server" 
                        ErrorMessage="Project or Business Title is Required!" ControlToValidate="tb_pname" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_pname" runat="server" Width="333px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_pname_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_pname" 
                                WatermarkText="Project or Business Title">
                            </asp:TextBoxWatermarkExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Delete_Project_Business" runat="server" NavigateUrl="~/admin/delete_project_chooser.aspx">Delete Project/Business</asp:HyperLink></td>
                        <td class="style4tb">
                            <asp:Label ID="lb_psname" runat="server" Text="Short Title:"></asp:Label></td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_psname" runat="server" 
                        ErrorMessage="Short Title is Required!" ControlToValidate="tb_psname" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="Val_Reg_psnamel" runat="server" ControlToValidate="tb_psname"
                            Display="Dynamic" ErrorMessage="Maximum Chars. reached (25)." 
                                    ValidationExpression="^.{4,25}$" 
                                    ForeColor="Red" Text="*"></asp:RegularExpressionValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_psname" runat="server" MaxLength="26"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_psname_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_psname" 
                                WatermarkText="Short Title">
                            </asp:TextBoxWatermarkExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_fname" runat="server" Text="Organisation Name:"></asp:Label></td>
                            <td class="style2tb">
                                <asp:RequiredFieldValidator ID="Val_Req_fname" runat="server" 
                        ErrorMessage="First Name is Required!" ControlToValidate="tb_fname" 
                                    Display="Dynamic" Text="*" ForeColor="Red" ClientIDMode="Static"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_fname" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_fname_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_fname" 
                                WatermarkText="Organisation Name">
                            </asp:TextBoxWatermarkExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_Parish" runat="server" Text="Parish:"></asp:Label></td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Parish" runat="server" 
                                DataSourceID="SQL_DS_Parishes" DataTextField="Parish" 
                                DataValueField="Parish_ID">
                            </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            </td>
                        <td class="style4tb">
                            <asp:Label ID="lb_synopsis" runat="server" Text="Synopsis:"></asp:Label></td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="Val_Req_synopsis" runat="server" 
                        ErrorMessage="Synopsis is Required!" ControlToValidate="tb_synopsis" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_synopsis" runat="server" Width="333px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="synopsis_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_synopsis" 
                                WatermarkText="Synopsis">
                            </asp:TextBoxWatermarkExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_about" runat="server" Text="About the Project:"></asp:Label></td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="AboutTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage="About the Project is Required!" ControlToValidate="About_TextBox" Text="*" 
                                    ForeColor="Red" Display="Dynamic" ClientIDMode="Static"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <CE:Editor ID="About_TextBox" 
                                ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="410px" Height="200px" 
                                style="top: 0px; left: 0px">
                            </CE:Editor></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_needs" runat="server" Text="How you can help:"></asp:Label></td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="NeedsTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage="How you can help is Required!" ControlToValidate="Needs_TextBox" Text="*" 
                                    ForeColor="Red" Display="Dynamic" ClientIDMode="Static"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <CE:Editor ID="Needs_TextBox" 
                                ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="410px" Height="200px" 
                                style="top: 0px; left: 0px">
                            </CE:Editor></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_aim" runat="server" Text="About the Entity:"></asp:Label></td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="AimTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage="About the Entity is Required!" ControlToValidate="Aim_TextBox" Text="*" 
                                    ForeColor="Red" Display="Dynamic" ClientIDMode="Static"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <CE:Editor ID="Aim_TextBox" 
                                ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="410px" Height="200px" 
                                style="top: 0px; left: 0px">
                            </CE:Editor></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_jnsbl" runat="server" Text="Details:"></asp:Label></td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <CE:Editor ID="JNSBL_TextBox" 
                                ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="410px" Height="150px" 
                                style="top: 0px; left: 0px">
                            </CE:Editor></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Image 1:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:AsyncFileUpload ID="Proj_ImageTextBox" runat="server" ToolTip="Click here to choose file." /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Image 2:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:AsyncFileUpload ID="Proj_ImageTextBox2" runat="server" ToolTip="Click here to choose file." /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Image 3:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:AsyncFileUpload ID="Proj_ImageTextBox3" runat="server" ToolTip="Click here to choose file." /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Image 4:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:AsyncFileUpload ID="Proj_ImageTextBox4" runat="server" ToolTip="Click here to choose file." /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Add Seal:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:CheckBox ID="Proj_AddSeal" runat="server" ToolTip="Add Seal to Images" Text="" /> </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:Label ID="lb_pvideo" runat="server"></asp:Label></td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:TextBox ID="Proj_VideoTextBox" runat="server" MaxLength="11" />
                            <asp:TextBoxWatermarkExtender ID="Proj_Video_TextBoxWatermarkExtender1" 
                                runat="server" Enabled="True" TargetControlID="Proj_VideoTextBox" 
                                WatermarkText="11 Character Code">
                            </asp:TextBoxWatermarkExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Start Date:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="Start_DateTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage="Start Date is Required!" ControlToValidate="Start_DateTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="Start_DateTextBox" runat="server" />
                <asp:TextBoxWatermarkExtender ID="Start_DateTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="Start_DateTextBox" 
                    WatermarkText="dd/mm/yyyy">
                </asp:TextBoxWatermarkExtender>
                <asp:CalendarExtender ID="Start_DateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="Start_DateTextBox" TodaysDateFormat="dd/mm/yyy" 
                                DaysModeTitleFormat="MMMM, yyyy" Format="dd/MM/yyyy">
                </asp:CalendarExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            End Date:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="End_DateTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage="End Date is Required!" ControlToValidate="End_DateTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="End_DateTextBox" runat="server" />
                <asp:TextBoxWatermarkExtender ID="End_DateTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="End_DateTextBox" 
                    WatermarkText="dd/mm/yyyy">
                </asp:TextBoxWatermarkExtender>
                <asp:CalendarExtender ID="End_DateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="End_DateTextBox" TodaysDateFormat="dd/mm/yyy" 
                                DaysModeTitleFormat="MMMM, yyyy" Format="dd/MM/yyyy">
                </asp:CalendarExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Goal US$:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="Val_Req_Goal_US" runat="server" 
                        ErrorMessage="Goal in US$ is Required!" ControlToValidate="tb_Goal" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="Val_Reg_Goal" runat="server" ControlToValidate="tb_Goal"
                            Display="Dynamic" ErrorMessage="Goal US$ wrongly Formatted!" 
                                    ValidationExpression="^([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(\.[0-9][0-9])?$" 
                                    ForeColor="Red" Text="*"></asp:RegularExpressionValidator>
                                    </td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_Goal" runat="server" BorderColor="Black" 
                                style="top: 0px; left: 0px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="Goal_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_Goal" 
                                WatermarkText="9,999,999.99">
                            </asp:TextBoxWatermarkExtender>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Goal J$:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="Val_Req_Goal_J" runat="server" 
                        ErrorMessage="Goal in J$ is Required!" ControlToValidate="tb_Goal_J" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="Val_Reg_Goal_J" runat="server" ControlToValidate="tb_Goal_J"
                            Display="Dynamic" ErrorMessage="Goal J$ wrongly Formatted!" 
                                    ValidationExpression="^([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(\.[0-9][0-9])?$" 
                                    ForeColor="Red" Text="*"></asp:RegularExpressionValidator>
                                    </td>
                        <td class="style5tb">
                            <asp:TextBox ID="tb_Goal_J" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="Goal_J_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="tb_Goal_J" 
                                WatermarkText="9,999,999.99">
                            </asp:TextBoxWatermarkExtender>
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
                        <asp:HiddenField ID="hf_project_Status" runat="server" />
                        <asp:Button ID="btn_muser" runat="server" Text="Add Record" /></td>
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