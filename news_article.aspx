<%@ Page Language="VB" AutoEventWireup="false" CodeFile="news_article.aspx.vb" Inherits="news_article" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News</title>
    <style type="text/css">
    .rightfloat
    {
        width: 400px;
        padding: 15px;
    }
    
    .img
    {
        padding-right: 15px;
        padding-bottom: 5px;
    }
    
    .txt
    {
        font-family: Verdana;
        font-size: 12px;
        text-align: justify;
    }
    
    .title
    {
        font-family: Verdana;
        font-size: 14px;
        font-weight: bold;
    }
    * {
	position: relative;
	margin: 0px;
	border: solid 0px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="rightfloat">
    <asp:Label ID="lb_title" runat="server" CssClass="title"></asp:Label>
    <br />&nbsp;<br />
      <asp:Image ID="im_news_image" runat="server" Width="150" Height="150" 
            ImageAlign="Left" CssClass="img" />
            <asp:Label ID="lb_article" runat="server" 
            CssClass="txt"></asp:Label>
        </div>
    <asp:SqlDataSource ID="SQL_DS_News" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT News_ID, News_Date, News_Title, News_Image, News_Body FROM News_Data_File WHERE (News_ID = @param)">
        <SelectParameters>
        
            <asp:QueryStringParameter Name="param" QueryStringField="aid" ConvertEmptyStringToNull="true" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
