<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="modify_home_page.aspx.vb" Inherits="admin_modify_home_page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Modify Home Page</title>
    <style type="text/css">
        .style1tb
        {
            width: 52px;
            text-align: right;
            top: 50px;
            left: 2px;
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
      <h1>Modify Home Page Items</h1>
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
                            Project Give :</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_PGS" runat="server" 
                    DataSourceID="SQL_DS_Project_Give_Success" DataTextField="Project_Name" 
                    DataValueField="Project_ID">
                </asp:DropDownList>
                            <asp:ListSearchExtender ID="DDL_PGS_ListSearchExtender" runat="server" 
                                Enabled="True" TargetControlID="DDL_PGS">
                            </asp:ListSearchExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Project Give :</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_PGA" runat="server" 
                    DataSourceID="SQL_DS_Project_Give_Active" DataTextField="Project_Name" 
                    DataValueField="Project_ID">
                </asp:DropDownList>
                            <asp:ListSearchExtender ID="DDL_PGA_ListSearchExtender" runat="server" 
                                Enabled="True" TargetControlID="DDL_PGA">
                            </asp:ListSearchExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Business Lend :</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_BLS" runat="server" 
                    DataSourceID="SQL_DS_Business_Lend_Success" DataTextField="Project_Name"  AppendDataBoundItems="true"
                    DataValueField="Project_ID">
                  
                </asp:DropDownList>
                            <%--<asp:ListSearchExtender ID="DDL_BLS_ListSearchExtender" runat="server" 
                                Enabled="True" TargetControlID="DDL_BLS">
                            </asp:ListSearchExtender>--%></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Business Lend :</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="DDL_BLA" runat="server" 
                    DataSourceID="SQL_DS_Business_Lend_Active" DataTextField="Project_Name" 
                    DataValueField="Project_ID">
                </asp:DropDownList>
                            <asp:ListSearchExtender ID="DDL_BLA_ListSearchExtender" runat="server" 
                                Enabled="True" TargetControlID="DDL_BLA">
                            </asp:ListSearchExtender></td>
                    </tr>
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
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btn_Modify" runat="server" Text="Modify" />
                            <asp:ConfirmButtonExtender ID="Modify_ConfirmButtonExtender" runat="server" 
                                  ConfirmText="Are you sure you wish to make these changes to the Home Page?" 
                                  Enabled="True" TargetControlID="btn_Modify">
                              </asp:ConfirmButtonExtender>
                        </td>
                    </tr>
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
                            &nbsp;</td>
                        <td class="style4tb">
                            Staff Likes </td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="ddlStaffLikes" runat="server" 
                                DataSourceID="SqlDataSourceStafflikes" DataTextField="Project_Short_Name" 
                                DataValueField="Project_ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceStafflikes" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
                                SelectCommand="SELECT [Project_ID], [Project_Name], [Project_Short_Name] FROM [Project_Data_File]">
                            </asp:SqlDataSource>
                            
                            
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Description</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                           <asp:TextBox ID="txtdescription" runat="server" Height="70px" TextMode="MultiLine" 
                                Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            <asp:Button ID="btnStaffLikes" runat="server" Text="Insert Staff Likes" />
                        </td>
                    </tr>

                     <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            
                        </td>
                    </tr>
                     <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                           
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderWidth="1px" CellPadding="2" DataKeyNames="Id" 
                                DataSourceID="SqlDataSourceImages" ForeColor="Black" GridLines="None" 
                                ShowFooter="True">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                                CommandName="Edit" Text="Edit"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                                CommandName="Delete" Text="Delete" OnClientClick="javascript:return confirm('Are you sure you want to Remove this Record!');"></asp:LinkButton>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                                CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                           
                                                <asp:Button ID="btInsert" runat="server" CausesValidation="true" 
                                                    CommandName="Insert" Text="Submit" Width="70px" />         &nbsp;
                                           
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Id" />
                                    
                                    <asp:TemplateField HeaderText="Title" SortExpression="Title">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>                                            
                                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                           <FooterTemplate>
                                               <asp:TextBox ID="txtfootertitle" runat="server"></asp:TextBox>
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="URL" SortExpression="URL">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("URL") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Label ID="lblfileURL" runat="server" Text='<%# Bind("URL") %>'></asp:Label>
                                            <asp:CheckBox ID="cbFiledel" runat="server" Text="Delete File" />
                                            <br />
                                            <asp:FileUpload ID="EditFileUpload" runat="server" />
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:FileUpload ID="FileUpload" runat="server" />
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nav URL" SortExpression="NavigateUrl">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="navUrl" runat="server" NavigateUrl='<%# Bind("NavigateUrl") %>' Text='<%# Bind("NavigateUrl") %>'>
                                            </asp:HyperLink>
                                        </ItemTemplate>
                                        <EditItemTemplate>                                            
                                             <asp:TextBox ID="navUrlEditText" runat="server" Text='<%# Bind("NavigateUrl") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Has Register Button" SortExpression="HasRegisterButton">
                                        <ItemTemplate>
                                            <%#IIf(Eval("HasRegisterButton").Equals(True), "Yes", "No")%>
                                        </ItemTemplate>
                                        <EditItemTemplate>                                            
                                             <asp:CheckBox ID="chkHasRegisterButton" runat="server" Checked='<%# Bind("HasRegisterButton") %>'></asp:CheckBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceImages" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
                                DeleteCommand="DELETE FROM [Home_ImageUrl] WHERE [Id] = @Id" 
                                InsertCommand="INSERT INTO [Home_ImageUrl] ([URL], [Title],[NavigateUrl],[HasRegisterButton]) VALUES (@URL, @Title,@NavigateUrl,@HasRegisterButton)" 
                                SelectCommand="SELECT [Id], [URL], [Title], [NavigateUrl],[HasRegisterButton] FROM [Home_ImageUrl]" 
                                UpdateCommand="UPDATE [Home_ImageUrl] SET [URL] = @URL, [Title] = @Title, [NavigateUrl]=@NavigateUrl, [HasRegisterButton]=@HasRegisterButton WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="URL" Type="String" />
                                    <asp:Parameter Name="Title" Type="String" />
                                    <asp:Parameter Name="NavigateUrl" Type="String" />
                                    <asp:Parameter Name="HasRegisterButton" Type="Boolean" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="URL" Type="String" ConvertEmptyStringToNull="true" />
                                    <asp:Parameter Name="Title" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                    <asp:Parameter Name="NavigateUrl" Type="String" />
                                    <asp:Parameter Name="HasRegisterButton" Type="Boolean" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                           
                        </td>
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
<asp:NoBot ID="NoBot1" runat="server" />
<asp:SqlDataSource ID="SQL_DS_Project_Give_Success" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File WHERE (Project_Type = 1)  ORDER BY Project_Name"></asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SQL_DS_Project_Give_Active" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>"  
        SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File WHERE (Project_Type = 1)  ORDER BY Project_Name"></asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SQL_DS_Business_Lend_Success" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File WHERE (Project_Type = 2)ORDER BY Project_Name"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SQL_DS_Business_Lend_Active" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
             SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File WHERE (Project_Type = 2) ORDER BY Project_Name"></asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SQL_DS_Projects" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT Project_Data_File.Project_ID FROM Project_Data_File INNER JOIN Home_Page_Data_File ON Project_Data_File.Project_ID = Home_Page_Data_File.Project_ID ORDER BY Project_Data_File.Project_Type, Project_Data_File.Project_Status">
    </asp:SqlDataSource>
        </asp:Content>
