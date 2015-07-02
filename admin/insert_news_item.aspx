<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="insert_news_item.aspx.vb" Inherits="admin_insert_news_item" %>

<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Add News Item</title>
    <style type="text/css">
        .style1tb
        {
            width: 110px;
            text-align: right;
        }
        .style4tb
        {
            width: 100px;
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
            width: 550px;
        }
    </style>
    <script type="text/javascript">
        function AssemblyFileUpload_Started(sender, args) {
            var filename = args.get_fileName();
            var ext = filename.substring(filename.lastIndexOf(".") + 1);
            if (ext != 'jpg') {
                throw {
                    name: "Invalid File Type",
                    level: "Error",
                    message: "Invalid File Type (.jpg Only)",
                    htmlMessage: "Invalid File Type (.jpg Only)"
                }
                return false;
            }
            return true;
        }
</script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>Add News Item</h1>
    </div>
  </div>
</div>

<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
          <p>
              
          <asp:FormView ID="FV_Add_News" runat="server" DataKeyNames="News_ID" 
            DataSourceID="SQL_DS_News" DefaultMode="Insert" 
                  style="top: 5px; left: 0px; width: 826px">
            <EditItemTemplate>
                <table style="width:100%;">
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
                            Date:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="News_DateTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage='"Date" is a required entry!' ControlToValidate="News_DateTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                    ID="Val_Reg_News_DateTextBox" runat="server" ControlToValidate="News_DateTextBox" ForeColor="Red" Display="Dynamic"
                    ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$">*</asp:RegularExpressionValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="News_DateTextBox" runat="server" 
                    Text='<%# Bind("News_Date", "{0:dd/MM/yyyy}") %>'  TextMode="SingleLine" />
                <asp:TextBoxWatermarkExtender ID="News_DateTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="News_DateTextBox" 
                    WatermarkText="dd/mm/yyyy">
                </asp:TextBoxWatermarkExtender>
                <asp:CalendarExtender ID="News_DateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="News_DateTextBox" TodaysDateFormat="dd/MM/yyy" DaysModeTitleFormat="MMMM, yyyy" Format="dd/MM/yyyy">
                </asp:CalendarExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_News" runat="server" NavigateUrl="~/admin/news_list.aspx">Modify News Item</asp:HyperLink></td>
                        <td class="style4tb">
                            (250X250)&nbsp;Image:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:AsyncFileUpload ID="News_ImageTextBox" runat="server" ToolTip="Click here to choose file." OnClientUploadStarted="AssemblyFileUpload_Started" /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Delete_News" runat="server" NavigateUrl="~/admin/delete_news_item.aspx">Delete News Item</asp:HyperLink></td>
                        <td class="style4tb">
                            Article Name:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="News_TitleTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage='"Article Name" is a required entry!' ControlToValidate="News_TitleTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="News_TitleTextBox" runat="server" 
                    Text='<%# Bind("News_Title") %>' Width="550px" />
                    <asp:TextBoxWatermarkExtender ID="News_TitleTextBox_WatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="News_TitleTextBox" 
                    WatermarkText="Article Name">
                </asp:TextBoxWatermarkExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;
                        </td>
                        <td class="style4tb">
                            Related Project:
                        </td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="News_Related_Project_Id_Control" 
                                ClientIDMode="Static"
                                runat="server"
                                DataTextField="Project_Name"
                                DataValueField="Project_Id"
                                DataSourceID="SQL_DS_Projects_Selection"
                                >
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Article:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="News_BodyTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage='"Article" is a required entry!' ControlToValidate="News_BodyTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <CE:Editor ID="News_BodyTextBox" ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="550px" Height="300px" Text='<%# Bind("News_Body") %>'>
                            </CE:Editor></td>
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
                            <asp:HiddenField ID="News_ImageTextBox1" runat="server" />
                            <asp:HiddenField ID="News_Mod_DateTextBox" Value='<%# Bind("News_Mod_Date") %>' runat="server" />
                            <asp:HiddenField ID="News_Mod_ByTextBox"  Value='<%# Bind("News_Mod_By") %>' runat="server" />
                            <asp:HiddenField ID="News_StatusTextBox" Value='<%# Bind("News_Status") %>' runat="server" />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
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
                            <asp:ValidationSummary ID="FV_ValidationSummary" ForeColor="Red" runat="server" /></td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width:100%;">
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
                            Date:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="News_DateTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage='"Date" is a required entry!' ControlToValidate="News_DateTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                    ID="Val_Reg_News_DateTextBox" runat="server" ControlToValidate="News_DateTextBox" ForeColor="Red" Display="Dynamic"
                    ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$">*</asp:RegularExpressionValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="News_DateTextBox" runat="server" 
                    Text='<%# Bind("News_Date", "{0:dd/MM/yyyy}") %>'  TextMode="SingleLine" />
                <asp:TextBoxWatermarkExtender ID="News_DateTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="News_DateTextBox" 
                    WatermarkText="dd/mm/yyyy">
                </asp:TextBoxWatermarkExtender>
                <asp:CalendarExtender ID="News_DateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="News_DateTextBox" TodaysDateFormat="dd/MM/yyy" DaysModeTitleFormat="MMMM, yyyy" Format="dd/MM/yyyy">
                </asp:CalendarExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_News" runat="server" NavigateUrl="~/admin/news_list.aspx">Modify News Item</asp:HyperLink></td>
                        <td class="style4tb">
                            (250X250)&nbsp;Image:</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:AsyncFileUpload ID="News_ImageTextBox" runat="server" ToolTip="Click here to choose file." OnClientUploadStarted="AssemblyFileUpload_Started" /></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Delete_News" runat="server" NavigateUrl="~/admin/delete_news_item.aspx">Delete News Item</asp:HyperLink></td>
                        <td class="style4tb">
                            Article Name:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="News_TitleTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage='"Article Name" is a required entry!' ControlToValidate="News_TitleTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <asp:TextBox ID="News_TitleTextBox" runat="server" 
                    Text='<%# Bind("News_Title") %>' Width="550px" />
                    <asp:TextBoxWatermarkExtender ID="News_TitleTextBox_WatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="News_TitleTextBox" 
                    WatermarkText="Article Name">
                </asp:TextBoxWatermarkExtender></td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;
                        </td>
                        <td class="style4tb">
                            Related Project:
                        </td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                            <asp:DropDownList ID="News_Related_Project_Id_Control" 
                                ClientIDMode="Static"
                                runat="server"
                                DataTextField="Project_Name"
                                DataValueField="Project_Id"
                                DataSourceID="SQL_DS_Projects_Selection"
                                >
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            Article:</td>
                            <td class="style2tb">
                            <asp:RequiredFieldValidator ID="News_BodyTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage='"Article" is a required entry!' ControlToValidate="News_BodyTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                        <td class="style5tb">
                            <CE:Editor ID="News_BodyTextBox" ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="550px" Height="300px" Text='<%# Bind("News_Body") %>'>
                            </CE:Editor></td>
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
                            <asp:HiddenField ID="News_ImageTextBox1" runat="server" />
                            <asp:HiddenField ID="News_Mod_DateTextBox" Value='<%# Bind("News_Mod_Date") %>' runat="server" />
                            <asp:HiddenField ID="News_Mod_ByTextBox"  Value='<%# Bind("News_Mod_By") %>' runat="server" />
                            <asp:HiddenField ID="News_StatusTextBox" Value='<%# Bind("News_Status") %>' runat="server" />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" Visible="false" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
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
                            <asp:ValidationSummary ID="FV_ValidationSummary" ForeColor="Red" runat="server" /></td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                News_ID:
                <asp:Label ID="News_IDLabel" runat="server" Text='<%# Eval("News_ID") %>' />
                <br />
                News_Date:
                <asp:Label ID="News_DateLabel" runat="server" Text='<%# Bind("News_Date") %>' />
                <br />
                News_Type:
                <asp:Label ID="News_TypeLabel" runat="server" Text='<%# Bind("News_Type") %>' />
                <br />
                News_Title:
                <asp:Label ID="News_TitleLabel" runat="server" 
                    Text='<%# Bind("News_Title") %>' />
                <br />
                News_Image:
                <asp:Label ID="News_ImageLabel" runat="server" 
                    Text='<%# Bind("News_Image") %>' />
                <br />
                News_Body:
                <asp:Label ID="News_BodyLabel" runat="server" Text='<%# Bind("News_Body") %>' />
                <br />
                News_Keywords:
                <asp:Label ID="News_KeywordsLabel" runat="server" 
                    Text='<%# Bind("News_Keywords") %>' />
                <br />
                News_Mod_Date:
                <asp:Label ID="News_Mod_DateLabel" runat="server" 
                    Text='<%# Bind("News_Mod_Date") %>' />
                <br />
                News_Mod_By:
                <asp:Label ID="News_Mod_ByLabel" runat="server" 
                    Text='<%# Bind("News_Mod_By") %>' />
                <br />
                News_Status:
                <asp:Label ID="News_StatusLabel" runat="server" 
                    Text='<%# Bind("News_Status") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
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
        <asp:SqlDataSource ID="SQL_DS_News" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        InsertCommand="INSERT INTO [News_Data_File] ([News_Date], [News_Title], [News_Image], [News_Body], [News_Mod_Date], [News_Mod_By], [News_Status]) VALUES (@News_Date, @News_Title, @News_Image, @News_Body, @News_Mod_Date, @News_Mod_By, @News_Status)" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [News_Data_File] WHERE [News_ID] = @original_News_ID AND [News_Date] = @original_News_Date AND [News_Type] = @original_News_Type AND [News_Title] = @original_News_Title AND (([News_Image] = @original_News_Image) OR ([News_Image] IS NULL AND @original_News_Image IS NULL)) AND [News_Body] = @original_News_Body AND (([News_Keywords] = @original_News_Keywords) OR ([News_Keywords] IS NULL AND @original_News_Keywords IS NULL)) AND [News_Mod_Date] = @original_News_Mod_Date AND (([News_Mod_By] = @original_News_Mod_By) OR ([News_Mod_By] IS NULL AND @original_News_Mod_By IS NULL)) AND (([News_Status] = @original_News_Status) OR ([News_Status] IS NULL AND @original_News_Status IS NULL))" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [News_Data_File] WHERE [News_ID] = @Original_News_ID" 
        UpdateCommand="UPDATE [News_Data_File] SET [News_Date] = @News_Date, [News_Title] = @News_Title, [News_Image] = @News_Image, [News_Body] = @News_Body, [News_Mod_Date] = @News_Mod_Date, [News_Mod_By] = @News_Mod_By, [News_Status] = @News_Status WHERE [News_ID] = @original_News_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_News_ID" Type="Int32" />
                <asp:Parameter Name="original_News_Date" Type="DateTime" />
                <asp:Parameter Name="original_News_Type" Type="Int32" />
                <asp:Parameter Name="original_News_Title" Type="String" />
                <asp:Parameter Name="original_News_Image" Type="String" />
                <asp:Parameter Name="original_News_Body" Type="String" />
                <asp:Parameter Name="original_News_Keywords" Type="String" />
                <asp:Parameter Name="original_News_Mod_Date" Type="DateTime" />
                <asp:Parameter Name="original_News_Mod_By" Type="Int32" />
                <asp:Parameter Name="original_News_Status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="News_Date" Type="DateTime" />
                <asp:Parameter Name="News_Title" Type="String" />
                <asp:Parameter Name="News_Image" Type="String" />
                <asp:Parameter Name="News_Body" Type="String" />
                <asp:Parameter Name="News_Mod_Date" Type="DateTime" />
                <asp:Parameter Name="News_Mod_By" Type="Int32" />
                <asp:Parameter Name="News_Status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="News_Date" Type="DateTime" />
                <asp:Parameter Name="News_Title" Type="String" />
                <asp:Parameter Name="News_Image" Type="String" />
                <asp:Parameter Name="News_Body" Type="String" />
                <asp:Parameter Name="News_Mod_Date" Type="DateTime" />
                <asp:Parameter Name="News_Mod_By" Type="Int32" />
                <asp:Parameter Name="News_Status" Type="Int32" />
                <asp:QueryStringParameter Name="original_News_ID" Type="Int32" QueryStringField="nid" />
                <asp:Parameter Name="original_News_Date" Type="DateTime" />
                <asp:Parameter Name="original_News_Type" Type="Int32" />
                <asp:Parameter Name="original_News_Title" Type="String" />
                <asp:Parameter Name="original_News_Image" Type="String" />
                <asp:Parameter Name="original_News_Body" Type="String" />
                <asp:Parameter Name="original_News_Keywords" Type="String" />
                <asp:Parameter Name="original_News_Mod_Date" Type="DateTime" />
                <asp:Parameter Name="original_News_Mod_By" Type="Int32" />
                <asp:Parameter Name="original_News_Status" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Original_News_ID" Type="Int32" QueryStringField="nid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SQL_DS_Projects_Selection" runat="server"
            SelectCommand="select Project_Id,Project_Name from Project_Data_File WHERE Project_status=1"
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>">

        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SQL_DS_News_Status" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        SelectCommand="SELECT [News_Status_ID], [News_Status] FROM [News_Status_Data_File]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SQL_DS_News_Type" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
        SelectCommand="SELECT [News_Type_ID], [News_Type] FROM [News_Type_Master_File]"></asp:SqlDataSource>
</asp:Content>