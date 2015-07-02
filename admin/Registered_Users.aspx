<%@ Page Title="" Language="VB" MasterPageFile="~/admin/ISJAdmin.master" AutoEventWireup="false" CodeFile="Registered_Users.aspx.vb" Inherits="admin_Registered_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>List of Registered Users</h1>
    </div>
  </div>
</div>
<div class="iSupport">
  <div class="main">
    <div class="section">
  <div class="genericColumn">
       
       <div class="article">
        <p>
          <table style="width:1000px; vertical-align:text-top">
                    <tr style="vertical-align:text-top; height:10px">
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Add_User" runat="server" NavigateUrl="~/admin/add_user.aspx">Add User</asp:HyperLink></td>
                        <td class="style4tb" colspan="3" rowspan="20">
                       <div><p> <label> First Name :</label>  <asp:TextBox ID="txtfirstname" runat="server"  CssClass="text"></asp:TextBox>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <label> Last Name: </label>  <asp:TextBox ID="txtsurname" runat="server"  CssClass="text"></asp:TextBox>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <label> Email: </label>  <asp:TextBox ID="txtemail" runat="server"  CssClass="text"></asp:TextBox> <br /> <asp:Button ID="btnsearch" runat="server" Text="Search" /></p>       
    </div>
        <asp:GridView ID="GVDonerlist" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Donor_ID" DataSourceID="SqlDataSourcedoners" 
        ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" 
             PageSize="20">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
           
            <asp:BoundField DataField="Donor_First_Name" HeaderText="First Name" 
                SortExpression="Donor_First_Name" />
            <asp:BoundField DataField="Donor_Last_Name" HeaderText="Last Name" 
                SortExpression="Donor_Last_Name" />
            <asp:BoundField DataField="Donor_Email" HeaderText=" Email" 
                SortExpression="Donor_Email" />            
            <asp:BoundField DataField="Donor_Status" HeaderText="Status" 
                SortExpression="Donor_Status" />
          
            <asp:CheckBoxField DataField="IsLockedOut" HeaderText="LockedOut" 
                SortExpression="IsLockedOut" />
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" 
                SortExpression="CreateDate" 
                DataFormatString="{0:MM/dd/yyyy}" />
           

             <asp:TemplateField ShowHeader="False">
               
                <ItemTemplate>
                  <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" OnClientClick="javascript:return confirm('Are you sure you want to Remove this Record!');" ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
                           </td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                         </td>
                    </tr>
                    <tr style="vertical-align:text-top; height:10px">
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Edit_User" runat="server" NavigateUrl="~/admin/modify_user.aspx">Modify User</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr style="vertical-align:text-top; height:10px">
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Change_Password" runat="server" NavigateUrl="~/admin/change_admin_password.aspx">Change Password</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                            &nbsp;</td>
                        <td class="style5tb">
                           </td>
                    </tr>
                    <tr  style="vertical-align:text-top; height:10px" >
                        <td class="style1tb">
                            <asp:HyperLink ID="HL_Reset_Password" runat="server" NavigateUrl="~/admin/reset_admin_password.aspx">Reset Password</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr style="vertical-align:text-top; height:10px">
                        <td class="style1tb">
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/Registered_Users.aspx">Registered User</asp:HyperLink></td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
                    <tr >
                        <td class="style1tb">
                           </td>
                        <td class="style4tb">
                            &nbsp;</td>
                            <td class="style2tb">
                                &nbsp;</td>
                        <td class="style5tb">
                            &nbsp;</td>
                    </tr>
        </table>
        </p>
        </div>
        </div>

    <asp:SqlDataSource ID="SqlDataSourcedoners" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        
            SelectCommand="SELECT [Donor_ID], [Donor_First_Name], [Donor_Last_Name], [Donor_Email], [Donor_Expiry], 
            CASE Donor_Status
  WHEN 1 THEN 'RU' 
  WHEN 3 THEN 'R'   
  ELSE 'NULL' 
END as Donor_Status, [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate] FROM [Donor_Master_File]" 
            DeleteCommand="DELETE FROM [Donor_Master_File] WHERE [Donor_ID] = @Donor_ID"
            
             >
            
        <DeleteParameters>
            <asp:Parameter Name="Donor_ID" Type="Int32" />
        </DeleteParameters>
       
    </asp:SqlDataSource>
    </div>
    </div>
    </div>

</asp:Content>

