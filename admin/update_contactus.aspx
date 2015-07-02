<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="update_contactus.aspx.vb" Inherits="admin_update_contactus" ValidateRequest="false" %>

<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Modify Pages</title>
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
          <h1>Contact Us</h1>
        </div>
      </div>
    </div>

    <div class="iSupport">
        <div class="main">
            <div class="section">
                <div class="genericColumn">
                    <div class="article">
                        <CE:Editor ID="ContactUs_TextBox" 
                                ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="800px" Height="200px" 
                                style="top: 0px; left: 0px">
                            </CE:Editor>
                    </div>
                    <div class="article" style="margin-top:20px;">
                        <asp:Button ID="button_update_contact_us" runat="server" Text="Update Contact Us Page" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>