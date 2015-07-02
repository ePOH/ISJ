<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="news_center.aspx.vb" Inherits="news_center" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="_controls/popupLend.ascx" TagName="popupLend" TagPrefix="uc1" %>
<%@ Register Src="_controls/SoonLend.ascx" TagName="SoonLend" TagPrefix="uc2" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
    <style type="text/css">
        .business .aside {
            float: left;
            clear: left;
            width: 350px;
            padding-left: 0px;
            padding-right: 0px;
            background-color: #719E55;
            border-radius: 10px;
        }
        .aside {
            font-size: 8pt;
            background-color: #B2B5A0;
            line-height: 12pt;
            padding-top: 5px;
            padding-right: 5px;
            padding-bottom: 10pt;
            padding-left: 5px;
            border-radius: 5px;
            margin-bottom: 15pt;
        }
        .business .aside h1 {
            font-family: 'Open Sans Condensed';
            color: #FFF;
            font-size: 18pt;
            font-weight: 700;
            text-align: center;
        }
        .aside h1 {
            font-family: 'Open Sans Condensed';
            font-size: 14pt;
            font-weight: 700;
            color: #FFF;
            text-align: center;
        }
        h1 {
            font-family: "Arial Black", Gadget, sans-serif;
            font-weight: normal;
            color: #B2B5A0;
            font-size: 18pt;
            line-height: 24pt;
            margin-bottom: 0pt;
        }
        h1, h2, h3, h4 {
            margin-bottom: 15pt;
            clear: left;
        }

        .business .aside .article {
            display: block;
            float: left;
            width: 320px;
            margin-left: 10px;
            margin-right: 10px;
            background-color: #B2B5A0;
            color: #FFF;
            font-size: 9pt;
        }
        .aside .article {
            padding-top: 5px;
            padding-right: 5px;
            padding-bottom: 10pt;
            padding-left: 5px;
        }

        .isSupport {
            color: #FDDB0A;
        }

        .greenNews {
            background-color: #719E55;
        }

        .grayNewsArticleBackground {
            background-color: #B2B5A0;
        }

        .newsContent {
            font-size: 10pt;
            color: #fff;
        }
    </style>
    <script src="js/jquery-1.9.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="generic-header">
        <a href="https://www.youtube.com/watch?v=IasPjY0JQ2c" target="_blank">
            <img src="images/banner3.png" alt="Banner Image" style="max-width:100%; max-height:100%; margin-top:-30px;" />
        </a>
        <br />
        <br />
    </section>
    <section class="generic-content">
        <div class="container" style="margin-bottom:20px;">
            <div class="row">
                <div class="col-md-8">
                    <iframe width="100%" height="490px" src='<%= ViewState("CurrentNewsChannel") %>' frameborder="0"></iframe>
                </div>
                <div class="col-md-4">
                    <div class="aside greenNews" style="border-radius:5px !important;">
                        <h1 style="font-family: 'Open Sans Condensed';color: #FFF;font-size: 18pt;font-weight: 700;text-align: center; margin-top:15px;">
                            <asp:LinkButton ID="LinkButton1" runat="server" ViewStateMode="Disabled"
                                Font-Size="X-Large"
                                OnClientClick="javascript:window.open('news_center.aspx')">
                                <asp:Label ID="lb_news_center1" runat="server" Text='NEWS FROM ' ForeColor="White"></asp:Label><strong><asp:Label ID="lb_news_center2" runat="server" Text='ISUPPORT' CssClass="isSupport"></asp:Label></strong>
                            </asp:LinkButton></h1>

                        <!-- begin repeating region for articles -->
                        <div class="article grayNewsArticleBackground">
                            <asp:Repeater ID="News_Items" runat="server" DataSourceID="SQL_DS_News">
                                <ItemTemplate>
                                    <div>
                                        <div class="thumbnail" style="float:left; margin-right:10px;">
                                            <asp:Image ID="Img_News" runat="server" Width="70" Height="68" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "News_Image") %>' AlternateText="News Image" />
                                        </div>
                                        <h4 style="clear: none;color: #000000;font-size: inherit;line-height: inherit;font-weight: bold;margin-bottom: 0pt;">
                                        <asp:Label ID="lb_news_title" runat="server" Text='<%# UCase(DataBinder.Eval(Container.DataItem, "News_Title")) %>'></asp:Label></h4>
                                        <asp:Label ID="lb_news_story" runat="server" Text='<%# Left(DataBinder.Eval(Container.DataItem, "News_Body"), 300) %>' CssClass="newsContent"></asp:Label>
                                        <asp:HyperLink ID="HL_News_Details" runat="server" Target="_blank" NavigateUrl='<%# "~/news_details.aspx?aid=" & DataBinder.Eval(Container.DataItem, "News_ID") %>' CssClass="isSupport">READ MORE</asp:HyperLink>
                                        <br style="clear:both;" />
                                    </div>
                                </ItemTemplate>
                                <SeparatorTemplate>
                                    <br />
                                </SeparatorTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SQL_DS_News" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" SelectCommand="SELECT TOP 3 News_ID, News_Date, News_Title, News_Image, News_Body FROM News_Data_File WHERE (News_Status = 1) ORDER BY News_Date DESC, News_Image">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_DS_News_Art" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
         SelectCommand="SELECT TOP 3  News_ID, News_Date, News_Title, News_Image, News_Body FROM News_Data_File WHERE (News_ID = @param)">
        <SelectParameters>
            <asp:QueryStringParameter Name="param" QueryStringField="aid" ConvertEmptyStringToNull="true" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
