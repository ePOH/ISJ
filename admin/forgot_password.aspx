<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forgot_password.aspx.vb" Inherits="admin_forgot_password" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Forgot Your Password</title>
    <link href="../Scripts/index.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="../favicon.ico" type="image/x-icon">
    <script type="text/javascript" src="../Scripts/jQuery_minified.js"></script>
    <style type="text/css">
        .style1tb
        {
            width: 200px;
            text-align: right;
        }
        .style4tb
        {
            width: 150px;
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
            width: 1150px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="header">
            <div class="banner1">
            <div class="banner">
              <div class="slogan">ADMIN PANEL</div>
            </div>
          </div>
  
          <div class="banner2">
            <div class="nav">

              </div>
          </div>
        </div>
        <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>Forgot Your Password</h1>
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
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Email Address:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="Val_Req_Email" runat="server" 
                        ErrorMessage="Email Address is Required!" ControlToValidate="login_email" 
                                    Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Val_Reg_Email" runat="server" ControlToValidate="login_email"
                            Display="Dynamic" ErrorMessage="Email Address wrongly Formatted!" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ForeColor="Red" Text="*"></asp:RegularExpressionValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="login_email" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="login_email_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="login_email" 
                                WatermarkText="email@domain.com">
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
                            <asp:Button ID="btn_Reset" runat="server" Text="Reset Password" /></td>
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
                        <asp:Label ID="Login_Msg" runat="server" ForeColor="Red"></asp:Label>
                            <asp:ValidationSummary ID="Val_Sum_Email" runat="server" ForeColor="Red" /></td>
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
        <asp:NoBot ID="Login_NoBot" runat="server" />
    </div>
  </div>
</div>
        <div class="footer">
          <div class="banner2">
            <div class="main">
              <div class="hand">&nbsp;</div>
              <div class="copyright">
                The impetus to succeed and support comes from the same place...Inside © 2009 - 2012 JNF. All rights reserved.
              </div>
            </div>
          </div>
        </div>
    </form>
</body>
</html>
