<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="Scripts/jQuery_minified.js"></script>
    <script type="text/javascript" src="Scripts/jQuery_loginForm.js"></script>
    <script type="text/javascript" src="Scripts/jQuery_logoutForm.js"></script>
    <script type="text/javascript">
        function ValidateChecked(oSrc, args) {
            if (document.all["<%=chk.ClientID%>"].checked == false) {
                alert("Agree to Terms and Conditions.");
                args.IsValid = false;
            }
        }
    </script>
    <style type="text/css">
        .main {
            margin-right: auto;
            margin-left: auto;
        }

        .contact .group h1 {
            background-image: url(../Images/projects/contact.jpg);
            background-repeat: no-repeat;
            background-position: 0px 0px;
            padding-top: 20pt;
            padding-bottom: 20pt;
            padding-left: 20px;
            padding-right: 20px;
            border-top-right-radius: 15px;
            border-top-left-radius: 15px;
            font-family: 'Open Sans Condensed';
            color: #FDDB0A;
            font-size: 30pt;
            font-weight: 700;
        }

        h1 {
            font-family: "Arial Black", Gadget, sans-serif;
            font-weight: normal;
            color: #B2B5A0;
            font-size: 18pt;
            line-height: 24pt;
            margin-bottom: 0pt;
        }

        .contact .group .group {
            margin: 0px;
            border-right-width: 2px;
            border-bottom-width: 2px;
            border-left-width: 2px;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-right-color: #719E55;
            border-bottom-color: #719E55;
            border-left-color: #719E55;
            border-bottom-right-radius: 15px;
            border-bottom-left-radius: 15px;
            padding-top: 15pt;
            padding-bottom: 15pt;
        }

        .genericColumn {
            float: left;
            display: inline-block;
        }

        .contact .group {
            margin-right: 20px;
        }

        h3 {
            color: #B2B5A0;
            font-size: 14pt;
            line-height: 18pt;
            display: block;
            font-size: 1.17em;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            font-weight: bold;
        }

        .contact .group h3 {
            color: #000;
            clear: none;
            margin: 0;
        }

        .loginForm {
            z-index: 10;
            position: absolute;
            top: 65px;
            right: 180px;
            width: 300px;
            height: 150pt;
            /*background-color: #B2B5A0;*/
            background-image: url(../Images/hand_inverse.jpg);
            background-position: 200px 90pt;
            background-repeat: no-repeat;
            border-bottom-left-radius: 15px;
            border-bottom-right-radius: 15px;
            overflow: hidden;
            display: none;
        }

            .loginForm label {
                display: block;
                margin-bottom: 10pt;
            }

            .loginForm input {
                color: #719E55;
                padding: 5px;
                border-radius: 5px;
            }

            .loginForm fieldset {
                width: 250px;
                margin-top: 10pt;
                margin-left: 10px;
            }

            .loginForm a {
                background-color: transparent;
                padding: 0px;
                font-size: 8pt;
                border-radius: 0px;
                margin: 0px;
            }

            .loginForm .button {
                margin-right: 10px;
                padding-right: 10px;
                padding-left: 5px;
                color: #007B3D;
                background-color: #E5E6E6;
            }

                .loginForm .button:hover {
                    background-color: #000;
                }

        .buttonGroup .logIn {
            display: inline-block;
            float: left;
            height: 130px;
            background-repeat: no-repeat;
            background-position: 0px 0px;
            margin-bottom: 10px;
            border-radius: 10px !important;
        }

        .logIn {
            width: 175px;
        }

        .buttonGroup .signUp {
            background-image: url(../Images/buttons/signUp.jpg);
            border-top-right-radius: 0px;
            border-bottom-right-radius: 0px;
        }

        .buttonGroup .logIn {
            background-image: url(../Images/buttons/logIn.jpg);
            border-top-left-radius: 0px;
            border-bottom-left-radius: 0px;
        }

        .buttonGroup .give, .buttonGroup .lend {
            width: 170px;
        }

        .buttonGroup .give {
            margin-right: 10px;
            background-image: url(../Images/buttons/give.jpg);
        }

        .buttonGroup .lend {
            background-image: url(../Images/buttons/lend.jpg);
        }

        .buttonGroup .findProject {
            width: 350px;
            background-image: url(../Images/buttons/findProject.jpg);
        }

        .iSupport .article {
            width: 520px;
            margin-right: 20px;
        }

        .iSupport .article2 {
            max-width: 730px;
            margin-right: 20px;
            text-align: justify;
        }

        .iSupport .article h4 {
            margin-bottom: 12pt;
        }

            .iSupport .article h4 a {
                color: #0a57a5;
            }

        .iSupport p .image {
            float: left;
            margin-right: 10pt;
            margin-bottom: 5pt;
        }

        .contact .aside h1 {
            font-family: 'Open Sans Condensed';
            font-size: 30pt;
            line-height: 36pt;
            font-weight: 700;
            text-align: left;
            color: #B2B5A0;
        }

        .contact .section .button:hover {
            color: #FDDB0A;
            background-color: #087C35;
        }

        .contact .section .button {
            background-color: #FDDB0A;
            font-family: 'Open Sans Condensed';
            font-weight: 700;
            font-size: 14pt;
            font-weight: bolder;
            color: #087C35;
        }

        .button {
            padding-top: 6pt;
            padding-right: 20px;
            padding-bottom: 5pt;
            padding-left: 20px;
            border-radius: 10px !important;
            cursor: pointer;
        }

        button, html input[type="button"], input[type="reset"], input[type="submit"] {
            -webkit-appearance: button;
            cursor: pointer;
        }

        .contact .group .group {
            width:100%;
        }

        .group {
            max-width:660px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> </asp:ToolkitScriptManager>
    <div class="container" style="padding:0px;">
        <div class="row">
            <div class="col-md-12" style="margin-bottom: 20px;">
                <div class="sub-header">
                    <div class="main">
                        <div class="section">
                            <h1>
                                <asp:Label ID="lb_d_msg" runat="server"></asp:Label></h1>
                        </div>
                    </div>
                </div>

                <div class="contact">
                    <div class="main">
                        <div class="section">

                            <div class="genericColumn">
                                <div class="group" style="max-width:660px;">
                                    <h1>SIGN UP</h1>
                                    <div class="group row" style="max-width:660px;">
                                        <div class="section col-md-6">
                                            <h3>NEW TO ISUPPORT?</h3>
                                            Create an Account
              <fieldset>
                  <label>
                      <asp:RequiredFieldValidator ID="Val_Req_your_fname" runat="server"
                          ErrorMessage="First Name has not been entered!" ValidationGroup="create_account"
                          ControlToValidate="your_fname" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      First Name<asp:TextBox ID="your_fname"
                          runat="server" MaxLength="30"></asp:TextBox>
                      <asp:FilteredTextBoxExtender ID="your_fname_FilteredTextBoxExtender"
                          runat="server" Enabled="True" FilterType="UppercaseLetters, LowercaseLetters, Custom"
                          TargetControlID="your_fname" ValidChars="ÀÂÄÈÉÊËÎÏÔŒÙÛÜŸàâäèéêëîïôœùûüÿÇçÁÍÓÚÑáíóúñ-'.">
                      </asp:FilteredTextBoxExtender>
                      <asp:TextBoxWatermarkExtender ID="your_fname_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="your_fname"
                          WatermarkText="First Name">
                      </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>
                      <asp:RequiredFieldValidator ID="Val_Req_your_lname" runat="server"
                          ErrorMessage="Last Name has not been entered!" ValidationGroup="create_account"
                          ControlToValidate="your_lname" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      Last Name<asp:TextBox ID="your_lname" runat="server" MaxLength="30"></asp:TextBox>
                      <asp:FilteredTextBoxExtender ID="your_lname_FilteredTextBoxExtender"
                          runat="server" Enabled="True" FilterType="UppercaseLetters, LowercaseLetters, Custom"
                          TargetControlID="your_lname" ValidChars="ÀÂÄÈÉÊËÎÏÔŒÙÛÜŸàâäèéêëîïôœùûüÿÇçÁÍÓÚÑáíóúñ-'.">
                      </asp:FilteredTextBoxExtender>
                      <asp:TextBoxWatermarkExtender ID="your_lname_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="your_lname"
                          WatermarkText="Last Name">
                      </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>
                      <asp:RequiredFieldValidator ID="Val_Req_yourEmail" runat="server"
                          ErrorMessage="Email has not been entered!" ValidationGroup="create_account"
                          ControlToValidate="yourEmail" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="Val_Reg_yourEmail" runat="server" ControlToValidate="yourEmail"
                          Display="Dynamic" ErrorMessage="Email Address wrongly Formatted!"
                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                          ForeColor="Red" Text="*" ValidationGroup="create_account"></asp:RegularExpressionValidator>
                      <asp:CompareValidator ID="Val_Comp_Confirm" runat="server" ControlToCompare="yourEmail"
                          ControlToValidate="yourEmailAgain" ErrorMessage="Email Addresses do not match!"
                          Display="Dynamic" Text="*" ForeColor="Red"
                          ValidationGroup="create_account"></asp:CompareValidator>
                      Email<asp:TextBox ID="yourEmail" runat="server"></asp:TextBox>
                      <asp:TextBoxWatermarkExtender ID="yourEmail_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourEmail"
                          WatermarkText="Email">
                      </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>
                      <asp:RequiredFieldValidator ID="Val_Req_yourEmailAgain" runat="server"
                          ErrorMessage="Email has not been confirmed!" ValidationGroup="create_account"
                          ControlToValidate="yourEmailAgain" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      Confirm Email<asp:TextBox ID="yourEmailAgain" runat="server"></asp:TextBox>
                      <asp:TextBoxWatermarkExtender ID="yourEmail2_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourEmailAgain"
                          WatermarkText="Confirm Email">
                      </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>

                      <!-- ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{8,24}$" -->
                      <!--Passwords must have a minimum of eight characters including at least one uppercase letter and at least one digit.-->
                      <asp:RegularExpressionValidator ID="Val_Reg_yourPassword" runat="server" ControlToValidate="yourPassword"
                          Display="Dynamic" ErrorMessage="Password has not met security requirements!"
                          ValidationExpression="^(?=.*[a-zA-Z].*[a-zA-Z].*[a-zA-Z].*[a-zA-Z].*[a-zA-Z])(?=.*\d.*\d.*\d)[a-zA-Z0-9]{8,20}$"
                          ForeColor="Red" Text="*" ValidationGroup="create_account"></asp:RegularExpressionValidator>
                      <asp:RequiredFieldValidator ID="Val_Req_yourPassword" runat="server"
                          ErrorMessage="Password has not been entered!" ValidationGroup="create_account"
                          ControlToValidate="yourPassword" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      Password<asp:TextBox ID="yourPassword" runat="server" TextMode="Password"></asp:TextBox>
                      <asp:BalloonPopupExtender ID="yourPassword_BalloonPopupExtender" runat="server"
                          BalloonPopupControlID="Panel1" CustomCssUrl=""
                          DynamicServicePath="" Enabled="True" ExtenderControlID=""
                          Position="BottomRight" TargetControlID="yourPassword">
                      </asp:BalloonPopupExtender>
                      <asp:Panel ID="Panel1" runat="server" CssClass="pup">
                          Passwords must have a minimum of eight characters including at least 5 letters and at least 3 numbers.
                      </asp:Panel>
                      <asp:TextBoxWatermarkExtender ID="yourPassword_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourPassword"
                          WatermarkText="********">
                      </asp:TextBoxWatermarkExtender>
                      <asp:PasswordStrength ID="yourPassword_PasswordStrength" runat="server"
                          Enabled="True" TargetControlID="yourPassword">
                      </asp:PasswordStrength>
                  </label>
                  <label>
                      <asp:RequiredFieldValidator ID="Val_Req_yourPasswordAgain" runat="server"
                          ErrorMessage="Password has not been confirmed!" ValidationGroup="create_account"
                          ControlToValidate="yourPasswordAgain" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="yourPassword_CompareValidator" runat="server" ControlToCompare="yourPassword"
                          ControlToValidate="yourPasswordAgain" ErrorMessage="Passwords do not match!"
                          Display="Dynamic" Text="*" ForeColor="Red"
                          ValidationGroup="create_account"></asp:CompareValidator>
                      Confirm Password<asp:TextBox ID="yourPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
                      <asp:TextBoxWatermarkExtender ID="yourPasswordAgain_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourPasswordAgain"
                          WatermarkText="********">
                      </asp:TextBoxWatermarkExtender>
                      <asp:PasswordStrength ID="yourPasswordAgain_PasswordStrength" runat="server"
                          Enabled="True" TargetControlID="yourPasswordAgain">
                      </asp:PasswordStrength>
                  </label>
                  <label>
                      <asp:CustomValidator ClientValidationFunction="ValidateChecked"
                          runat="server" ID="val" ValidationGroup="create_account" />
                      <a href="terms_and_conditions.aspx" target="_blank"><em>Terms and Conditions</em></a><asp:CheckBox
                          ID="chk" runat="server" />
                  </label>
              </fieldset>
                                            <asp:Button ID="createAnAccount" runat="server" Text="CREATE AN ACCOUNT"
                                                CssClass="button" UseSubmitBehavior="False"
                                                ValidationGroup="create_account" />
                                        </div>

                                        <div class="section col-md-6">
                                            <h3>ALREADY HAVE AN ACCOUNT?</h3>
                                            Log in Here
              <fieldset>
                  <label>
                      <asp:RequiredFieldValidator ID="Val_Req_yourEmail1" runat="server"
                          ErrorMessage="Email has not been entered!" ValidationGroup="login_account"
                          ControlToValidate="yourEmail1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="Val_Reg_yourEmail1" runat="server" ControlToValidate="yourEmail1"
                          Display="Dynamic" ErrorMessage="Email Address wrongly Formatted!"
                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                          ForeColor="Red" Text="*" ValidationGroup="login_account"></asp:RegularExpressionValidator>
                      Email<asp:TextBox ID="yourEmail1" runat="server"></asp:TextBox>
                      <asp:TextBoxWatermarkExtender ID="yourEmail1_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourEmail1"
                          WatermarkText="your email">
                      </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>
                      <asp:RequiredFieldValidator ID="Val_Req_yourPassword1" runat="server"
                          ErrorMessage="Password has not been entered!" ValidationGroup="login_account"
                          ControlToValidate="yourPassword1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                      Password<asp:TextBox ID="yourPassword1" ClientIDMode="Static" runat="server" TextMode="Password" data-typetoggle="#showpassword"></asp:TextBox><br />
                      <label style="font-family: 'Open Sans Condensed'; color: #719E55; font-weight: 700; font-size: 12pt; font-style: normal;">
                          <input type="checkbox" id="showpassword" />&nbsp;Show password</label>

                      <asp:TextBoxWatermarkExtender ID="yourPassword1_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourPassword1"
                          WatermarkText="********">
                      </asp:TextBoxWatermarkExtender>
                      <asp:PasswordStrength ID="yourPassword1_PasswordStrength" runat="server"
                          Enabled="True" TargetControlID="yourPassword1">
                      </asp:PasswordStrength>
                      <asp:HiddenField ID="hf_d_status" runat="server" />
                  </label>
                  <a href="forgot_password.aspx"><em>Forgot your password?</em></a>
              </fieldset>
                                            <asp:Button ID="d_login" runat="server" Text="LOGIN" CssClass="button" UseSubmitBehavior="False" ValidationGroup="login_account" />
                                        </div>
                                        <div class="val">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                                ValidationGroup="create_account" />
                                        </div>
                                        <div class="val1">
                                            <asp:ValidationSummary ID="ValidationSummary2" runat="server"
                                                ValidationGroup="login_account" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="genericColumn" style="margin-top:20px;">
                                <div class="aside">
                                    <h1>THERE IS
                                        <br />
                                        TALK AND
                                        <br />
                                        THEN THERE
                                        <br />
                                        IS ACTION.<br />
                                        <strong>I SUPPORT ACTION.</strong>
                                    </h1>
                                    <%-- <div class="share"> 
            <span>SIGN UP VIA</span>
            <asp:hyperlink ID="hl_fb" runat="server" NavigateUrl="https://www.facebook.com/dialog/oauth?client_id=150728681736405&redirect_uri=http://www.isupportjamaica.com/login.aspx&scope=email"><asp:image ID="img_fb" runat="server" ImageUrl="~/Images/fecebook.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink>
          </div>--%>
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
                <asp:NoBot ID="Login_NoBot" runat="server" />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#yourPassword1").showPassword();
        });
    </script>
</asp:Content>
