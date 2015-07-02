<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="news_list.aspx.vb" Inherits="admin_news_list" %>
<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>News List</h1>
    </div>
  </div>
</div>
<div class="iSupport">
  <div class="main">
    <div class="section">
        <asp:DataList ID="dt_News" runat="server" DataSourceID="SQL_DS_News">
            <ItemTemplate>
                <div style="width:800px;">
                    <div style="float:left; width:600px;">
                        <%# Eval("News_Title")%>
                    </div>
                    <div style="float:left; width:100px;">
                        <%# Eval("News_Date")%>
                    </div>
                    <div style="float:left; width:100px;">
                        <asp:HyperLink ID="News_Edit_Link" runat="server" Text="Edit" NavigateUrl='<%# String.Format("insert_news_item.aspx?nid={0}", DataBinder.Eval(Container.DataItem, "News_Id")) %>'></asp:HyperLink>
                    </div>
                </div>            
            </ItemTemplate>
        </asp:DataList>
    </div>
  </div>
</div>
<asp:SqlDataSource ID="SQL_DS_News" runat="server"
            SelectCommand="SELECT News_Id,CONVERT(VARCHAR(10), News_Mod_Date,103) as News_Date,News_Title from News_Data_File WHERE News_status=1 ORDER BY News_Mod_Date DESC"
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>">
</asp:SqlDataSource>
</asp:Content>