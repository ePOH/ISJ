<%@ Page Title="" Language="VB" MasterPageFile="~/admin/ISJAdmin.master" AutoEventWireup="false" CodeFile="Recent_update_chooser.aspx.vb" Inherits="admin_Recent_update_chooser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <title>Delete Project/Business</title>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sub-header">
    <div class="main">
        <div class="section">
            <h1>Recent Update Project/Business Chooser</h1>
        </div>
    </div>
  </div>

  
<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
        
          <table style="width:1000px;">
                    <tr>
                        
                        <td class="style4tb">
                            Type:</td>
                        <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Project_Type" runat="server" 
                                DataSourceID="SQL_DS_Project_Type" DataTextField="Project_Type" 
                                DataValueField="Project_Type_ID" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                      
                        <td class="style4tb">
                            Title:</td>
                        <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_Project_Title" runat="server" 
                                DataSourceID="SQL_DS_Project" DataTextField="Project_Name" 
                                DataValueField="Project_ID" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:ListSearchExtender ID="DDL_Project_Title_ListSearchExtender" 
                                runat="server" Enabled="True" TargetControlID="DDL_Project_Title">
                            </asp:ListSearchExtender>
                            
                            </td>
                    </tr>
                    
                    <tr>
                        <td class="style1tb" colspan="2">
                        <asp:Button ID="btn_AddUpdate" runat="server" Text="Add Update" />
                            &nbsp;</td>
                       
                    </tr>
        </table>
        <br />
        <asp:GridView ID="GvListUpdates" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="Rowid,Project_ID,Project_Update_Date,Project_Update" 
                DataSourceID="SqlDataSourceRecentUpdates" ForeColor="#333333" 
                GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:TemplateField HeaderStyle-Width="100px">
                <ItemTemplate   >
                    <asp:LinkButton ID="LkbDelete" runat="server"  CommandName="Delete" >Delete</asp:LinkButton>
                     <asp:LinkButton ID="lkb_Edit" runat="server" onclick="LinkButton1_Click"  >Edit</asp:LinkButton>
                <asp:ConfirmButtonExtender ID="btn_Delete_ConfirmButtonExtender" 
                                runat="server" ConfirmText="Are you sure you wish to delete this record?" Enabled="True" TargetControlID="LkbDelete">
                            </asp:ConfirmButtonExtender>
                   
                </ItemTemplate>
            </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Date" 
                    SortExpression="Project_Update_Date" HeaderStyle-Width="100px">
                   
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Project_Update_Date", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details" SortExpression="Project_Update">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Project_Update") %>' Width="350px" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#007B3D" Font-Bold="True" ForeColor="White" />
            <PagerSettings Position="TopAndBottom" NextPageText="&gt;" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
         </asp:GridView>
        <br />
            <asp:SqlDataSource ID="SqlDataSourceRecentUpdates" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
                
                SelectCommand="SELECT Rowid,[Project_ID], [Project_Update_Date], [Project_Update] FROM [Project_Update_Data_File] WHERE ([Project_ID] = @Project_ID)" 
                DeleteCommand="DELETE FROM [Project_Update_Data_File] WHERE [Project_ID] = @Project_ID AND [Project_Update_Date] = @Project_Update_Date AND [Project_Update] = @Project_Update" >
                <DeleteParameters>
                    <asp:Parameter Name="Project_ID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="Project_Update_Date" />
                    <asp:Parameter Name="Project_Update" Type="String" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDL_Project_Title" Name="Project_ID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        
        </div>
      </div>   
    </div>
  </div> 
</div>

<asp:NoBot ID="NoBot1" runat="server" />
<asp:SqlDataSource ID="SQL_DS_Project_Type" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        SelectCommand="SELECT * FROM [Project_Type_Master_File]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SQL_DS_Project" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>"       
        
        SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File WHERE (Project_Type = @param)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDL_Project_Type" Name="param" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

