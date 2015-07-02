<%@ Page Title="" Language="VB" MasterPageFile="~/admin/ISJAdmin.master" AutoEventWireup="false" CodeFile="add_recent_update.aspx.vb" Inherits="admin_add_recent_update" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="sub-header">
          <div class="main">
            <div class="section">
              <h1>Add Recent Update</h1>
              <asp:Literal ID="lblerrormessage" runat="server"></asp:Literal>    
            </div>
          </div>
        </div>
    

        <div class="iSupport">
            <div class="main">
                <div class="section">      
                    <div class="genericColumn">
                        <div class="article">
<asp:FormView ID="FVRecentUpdates" runat="server" 
                                DataKeyNames="Rowid" 
                                DataSourceID="SqlDataSourceRecentUpdate" DefaultMode="Insert">
    <EditItemTemplate>
        Project_ID:
        <asp:Label ID="Project_IDLabel1" runat="server" 
            Text='<%# Eval("Project_ID") %>' />
        <br />
        Project_Update_Date:
        <asp:Label ID="Project_Update_DateLabel1" runat="server" 
            Text='<%# Eval("Project_Update_Date") %>' />
        <br />
        Project_Update:
        <asp:Label ID="Project_UpdateLabel1" runat="server" 
            Text='<%# Eval("Project_Update") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        
           <asp:HiddenField ID="HF_Project_ID" runat="server" Value='<%# bind("Project_ID") %>' />
            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# bind("Createdby") %>' />
          <%--  <asp:HiddenField ID="HF_User" runat="server" Value='<%# bind("CreatedBy") %>' />--%>
        Date:
        
            <asp:RequiredFieldValidator ID="Project_Update_DateTextBox_RequiredFieldValidator" runat="server" 
                        ErrorMessage='"Date" is a required entry!' ControlToValidate="Project_Update_DateTextBox" Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                    ID="Val_Reg_Project_Update_DateTextBox" runat="server" ControlToValidate="Project_Update_DateTextBox" ForeColor="Red" Display="Dynamic"
                    ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$">*</asp:RegularExpressionValidator>
                        
                            <asp:TextBox ID="Project_Update_DateTextBox" runat="server" 
                    Text='<%# Bind("Project_Update_Date", "{0:dd/MM/yyyy}") %>'  TextMode="SingleLine" />

                <asp:TextBoxWatermarkExtender ID="Project_Update_DateTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="Project_Update_DateTextBox" 
                    WatermarkText="dd/mm/yyyy">
                </asp:TextBoxWatermarkExtender>
                <asp:CalendarExtender ID="Project_Update_DateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="Project_Update_DateTextBox" TodaysDateFormat="dd/MM/yyy" DaysModeTitleFormat="MMMM, yyyy" Format="dd/MM/yyyy">
                </asp:CalendarExtender>
        <br />
        Details:
        <CE:Editor ID="News_BodyTextBox" ConfigurationPath="~/CuteSoft_Client/CuteEditor/Configuration/isj.config" runat="server"
                                MaxHTMLLength="0" MaxTextLength="0" Width="550px" Height="300px" Text='<%# Bind("Project_Update") %>'>
                            </CE:Editor>
        
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Project_ID:
        <asp:Label ID="Project_IDLabel" runat="server" 
            Text='<%# Eval("Project_ID") %>' />
        <br />
        Project_Update_Date:
        <asp:Label ID="Project_Update_DateLabel" runat="server" 
            Text='<%# Eval("Project_Update_Date") %>' />
        <br />
        Project_Update:
        <asp:Label ID="Project_UpdateLabel" runat="server" 
            Text='<%# Eval("Project_Update") %>' />
        <br />

    </ItemTemplate>
    </asp:FormView>
                            <asp:SqlDataSource ID="SqlDataSourceRecentUpdate" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
                                
                                SelectCommand="SELECT [rowid], [Project_ID], [Project_Update_Date], [Createdby], [Project_Update], [CreatedDate], [Modifyby], [Modifydate] FROM [Project_Update_Data_File] WHERE ([Rowid] = @Rowid)" 
                                DeleteCommand="DELETE FROM [Project_Update_Data_File] WHERE([Rowid] = @Rowid)" 
                                
                                InsertCommand="Project_Update_Data_File_Insert" 
                                
                                UpdateCommand="UPDATE [Project_Update_Data_File] SET [rowid] = @rowid, [Createdby] = @Createdby, [CreatedDate] = @CreatedDate, [Modifyby] = @Modifyby, [Modifydate] = @Modifydate WHERE [Project_ID] = @Project_ID AND [Project_Update_Date] = @Project_Update_Date AND [Project_Update] = @Project_Update" 
                                InsertCommandType="StoredProcedure">
                                <DeleteParameters>
                                    <asp:Parameter Name="Rowid" Type="Int32" />                                    
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Project_ID" Type="Int32" />
                                    <asp:Parameter Type="DateTime" Name="Project_Update_Date" />
                                    <asp:Parameter Name="Project_Update" Type="String" />
                                    <asp:Parameter Name="Createdby" Type="Int32" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="Rowid" SessionField="pid" Type="Int32"  />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="rowid" Type="Int32" />
                                    <asp:Parameter Name="Createdby" Type="Int32" />
                                    <asp:Parameter Type="DateTime" Name="CreatedDate" />
                                    <asp:Parameter Name="Modifyby" Type="Int32" />
                                    <asp:Parameter Type="DateTime" Name="Modifydate" />
                                    <asp:Parameter Name="Project_ID" Type="Int32" />
                                    <asp:Parameter Type="DateTime" Name="Project_Update_Date" />
                                    <asp:Parameter Name="Project_Update" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>

