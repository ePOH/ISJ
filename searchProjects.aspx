<%@ Page Language="VB" AutoEventWireup="false" CodeFile="searchProjects.aspx.vb" Inherits="searchProjects" Title="Projects" MasterPageFile="~/ResponsiveMaster2.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">  
            <div class="col-md-12">
                <h3>Search Results</h3>
                <hr />
            </div>
            <div class="col-md-12" style="margin-bottom:20px;">
                <asp:ListView runat="server" ID="lst_SearchResult">
                    <ItemTemplate>
                        <div class="col-md-12" style="margin-bottom:10px;">
                            <b><asp:HyperLink ID="HL_IMG_Project_Give_Success" runat="server" NavigateUrl='<%# Eval("Project_Slug", "~/project/{0}")%>' Text='<%# Eval("Project_Name")%>' /></b> : <%# Eval("Project_Start_Date")%><br />
                             <%# Eval("Project_About")%>
                        </div>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        Your query returned 0 results.
                    </EmptyDataTemplate>
                </asp:ListView>
            </div>       
        </div>
    </div>
</asp:Content>
