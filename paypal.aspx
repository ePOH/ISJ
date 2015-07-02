<%@ Page Language="VB" MasterPageFile="MasterPage2.master" AutoEventWireup="false" CodeFile="paypal.aspx.vb" Inherits="paypal" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>Thank You</h1>
    </div>
  </div>
</div>

<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
          <p><asp:Label ID="lb_first_name" runat="server"></asp:Label>,&nbsp;thank you for your payment.</p>
          <p>Your transaction has been completed, and a receipt for your purchase has been emailed to you. You may log into your account at www.paypal.com/us to view details of this transaction.</p>
        </div>
      </div>
      
      <div class="genericColumn">
        <div class="buttonGroup">
            <a href="login.aspx" class="signUp">
              &nbsp;
            </a>
            <a href="login.aspx" class="logIn">
              &nbsp;
            </a>
            <a href="projects.aspx" class="give">
              &nbsp;
            </a>
            <asp:HyperLink ID="lkblendNow" runat="server" NavigateUrl="~/businesses.aspx" CssClass="lend"></asp:HyperLink>
          
  <%--   <ajaxToolkit:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="lkblendNow" 
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</ajaxToolkit:ModalPopupExtender>
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style = "display:none">
    We're so excited to announce a new feature coming soon which will allow you to LEND to micro-enterprises in Jamaica. Let us notify you when we launch this exciting feature of ISupportJamaica by giving us your Email, or if you would like to GIVE to a project, 
              
              <asp:HyperLink ID="hlgivenow" runat="server" NavigateUrl="~/projects.aspx">click here.</asp:HyperLink>
              
              <br /> <br />
    <asp:Button ID="btnClose" runat="server" Text="Close" />
</asp:Panel>
              &nbsp;
            </a>--%>
             <a href="parishes.aspx" class="findProject">
              &nbsp;
            </a>
        </div>
        <div class="share">
            <span>FOLLOW US ON</span>
            <asp:hyperlink ID="hl_fl" runat="server" Target="_blank"><asp:image ID="img_fl" runat="server" ImageUrl="~/Images/flikr.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink>
            <asp:hyperlink ID="hl_tw" runat="server" NavigateUrl="https://twitter.com/JNFoundation" Target="_blank"><asp:image ID="img_tw" runat="server" ImageUrl="~/Images/twitter.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink>
            <asp:hyperlink ID="hl_fb" runat="server" NavigateUrl="http://www.facebook.com/ISupportJamaica" Target="_blank"><asp:image ID="img_fb" runat="server" ImageUrl="~/Images/fecebook.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink>
          </div>
      </div>
      
    </div>
  </div> 
</div>

<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>
        </p>
    </div>
  </div>
</div>
<asp:SqlDataSource ID="SQL_DS_Transaction" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
            
            SelectCommand="SELECT [First_Name], [Last_Name], [Donor_ID], [Transaction_ID], [Pending_Reason], [Payment_Status] FROM [Paypal_Transaction_Data_File] WHERE (([Donor_ID] = @Donor_ID) AND ([Transaction_ID] = @Transaction_ID))">
            <SelectParameters>
                <asp:FormParameter FormField="custom" Name="Donor_ID" Type="String" />
                <asp:FormParameter FormField="txn_id" Name="Transaction_ID" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
