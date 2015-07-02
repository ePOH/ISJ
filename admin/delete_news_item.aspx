<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="delete_news_item.aspx.vb" Inherits="admin_delete_news_item" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Delete News Item</title>
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
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>Delete News Item</h1>
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
                            <asp:HyperLink ID="HL_Add_News" runat="server" NavigateUrl="~/admin/insert_news_item.aspx">Add News Item</asp:HyperLink></td>
                        <td class="style4tb">
                            Article Name:</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Article_Name" runat="server" 
                    DataSourceID="SQL_DS_Article_Name" DataTextField="News_Title" 
                    DataValueField="News_ID" Width="500px">
                </asp:DropDownList>
                            <asp:ListSearchExtender ID="DDL_Article_Name_ListSearchExtender" runat="server" 
                                Enabled="True" TargetControlID="DDL_Article_Name">
                            </asp:ListSearchExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_News" runat="server" NavigateUrl="~/admin/modify_news_item.aspx">Modify News Item</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Delete_News" runat="server" 
                                NavigateUrl="~/admin/delete_news_item.aspx">Delete News Item</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btn_Select" runat="server" Text="Select" /></td>
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
<asp:SqlDataSource ID="SQL_DS_Article_Name" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        
        SelectCommand="SELECT [News_ID], [News_Title] FROM [News_Data_File] ORDER BY [News_Title]"></asp:SqlDataSource>
        </asp:Content>