<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="news_details.aspx.vb" Inherits="news_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .img {
            padding-right: 15px;
            padding-bottom: 5px;
            width:300px;
            height:auto;
        }

        .btn-givenow {
            background-color: hsl(201, 100%, 30%) !important;
            background-repeat: repeat-x;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#00a5ff", endColorstr="#006399");
            background-image: -khtml-gradient(linear, left top, left bottom, from(#00a5ff), to(#006399));
            background-image: -moz-linear-gradient(top, #00a5ff, #006399);
            background-image: -ms-linear-gradient(top, #00a5ff, #006399);
            background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #00a5ff), color-stop(100%, #006399));
            background-image: -webkit-linear-gradient(top, #00a5ff, #006399);
            background-image: -o-linear-gradient(top, #00a5ff, #006399);
            background-image: linear-gradient(#00a5ff, #006399);
            border-color: #006399 #006399 hsl(201, 100%, 25%);
            color: #fff !important;
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33);
            -webkit-font-smoothing: antialiased;
            padding: 7px 30px 7px 30px;
            text-decoration: none;
            border-radius: 5px !important;
            cursor: pointer;
        }

            .btn-givenow:hover {
                text-decoration: none;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 style="font-weight: bold;">
                    <asp:Label ID="lb_title" runat="server"></asp:Label></h4>
                <h4>
                    <asp:Label ID="lbl_NewsDate" runat="server"></asp:Label></h4>
                <hr />
            </div>
            <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px; text-align: center;">
                <div class="col-md-6">
                    <asp:Image ID="im_news_image" runat="server" CssClass="img" />
                </div>
                <div class="col-md-6">
                    <div style="text-align:left;">
                        <asp:Label ID="lb_article" runat="server" CssClass="txt"></asp:Label>
                    </div>
                    <div style="margin-top: 20px; text-align: center;">
                        <a class="btn-givenow" href='project_details.aspx?pid=<%= ViewState("NewsProjectId")%>'>Give Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SQL_DS_News" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
        SelectCommand="SELECT News_Related_Project_Id, News_ID, News_Date, News_Title, News_Image, News_Body FROM News_Data_File WHERE (News_ID = @param)">
        <SelectParameters>
            <asp:QueryStringParameter Name="param" QueryStringField="aid" ConvertEmptyStringToNull="true" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
