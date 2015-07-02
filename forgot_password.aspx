<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="forgot_password.aspx.vb" Inherits="forgot_password" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
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
            max-width: 660px;
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
            max-width: 660px;
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
                border-radius: 5px !important;
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
            width: 730px;
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
                                <div class="group" style="max-width:660px; ">
                                    <h1>RESET PASSWORD</h1>
                                    <div class="group row" style="max-width:660px; margin-top:-20px;">
                                        <div class="section1 col-md-6">
                                            <h3>FORGOT YOUR PASSWORD?</h3>
                                            Instructions
              <fieldset>
                  <label>
                      &nbsp;
                  </label>
                  <label>
                      Please enter your I Support Jamaica email address and you will be sent instructions on how to change your password.
                  </label>
              </fieldset>
                                            <asp:Button ID="btn_help" runat="server" Text="HELP" CssClass="button" />
                                        </div>

                                        <div class="section col-md-6" style="margin-top:24px;">
                                            <h3></h3>
                                            Password Reset Tool
              <fieldset>
                  <label>
                      &nbsp;
                  </label>
                  <label>
                      <asp:RegularExpressionValidator ID="Val_Reg_yourEmail" runat="server" ControlToValidate="yourEmail"
                          Display="Dynamic" ErrorMessage="Email Address wrongly Formatted!"
                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                          ForeColor="Red" Text="*"></asp:RegularExpressionValidator>
                      <asp:CompareValidator ID="Val_Comp_Confirm" runat="server" ControlToCompare="yourEmail"
                          ControlToValidate="yourEmailAgain" ErrorMessage="Email Addresses do not match!"
                          Display="Dynamic" Text="*" ForeColor="Red"></asp:CompareValidator>
                      Email<asp:TextBox ID="yourEmail" runat="server"></asp:TextBox>
                      <asp:TextBoxWatermarkExtender ID="yourEmail_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourEmail"
                          WatermarkText="your email">
                      </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>
                      Confirm Email<asp:TextBox ID="yourEmailAgain" runat="server"></asp:TextBox>
                      <asp:TextBoxWatermarkExtender ID="yourEmail2_TextBoxWatermarkExtender"
                          runat="server" Enabled="True" TargetControlID="yourEmailAgain"
                          WatermarkText="confirm your email">
                      </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>
                      <asp:ValidationSummary ID="Val_Sum_Email" runat="server" ForeColor="Red"
                          DisplayMode="List" />
                  </label>
                  <label>
              </fieldset>
                                            <asp:Button ID="btn_forgot_password" runat="server" Text="RESET PASSWORD" CssClass="button" />
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
                                    <%--<div class="share">
            <span>SIGN UP VIA</span>
            <a href="#"><img src="Images/fecebook.jpg" alt="facebook" width="30" height="30" align="right"></a>
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
            </div>
        </div>
    </div>
</asp:Content>
