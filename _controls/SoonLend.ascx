<%@ Control Language="VB" AutoEventWireup="false" CodeFile="SoonLend.ascx.vb" Inherits="_controls_SoonLend" %>


<%@ Register src="socialmedia.ascx" tagname="socialmedia" tagprefix="uc1" %>

<div><uc1:socialmedia ID="socialmedia1" runat="server" /></div>



        <br />
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
          <%-- <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/businesses.aspx"  CssClass ="lend"></asp:HyperLink>--%>
         <asp:HyperLink ID="lkblendNowcon" runat="server" CssClass ="lend"></asp:HyperLink>
       <%-- <uc1:popupLend ID="popupLend1" runat="server" TargetControlID="lkblendNow" />--%>
     
    <%-- <asp:ModalPopupExtender ID="mp1ty" runat="server" PopupControlID="Panel5" TargetControlID="lkblendNowcon" 
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</asp:ModalPopupExtender>--%>
<asp:Panel ID="Panel5" runat="server" CssClass="modalPopup" align="center" style = "display:none">
     We're so excited to announce a new feature coming soon which will allow you to LEND to micro-enterprises in Jamaica. Let us notify you when we launch this exciting feature of ISupportJamaica by giving us your Email 
    <asp:TextBox ID="txtpppopuplenduseremail" runat="server"></asp:TextBox>, or if you would like to GIVE to a project, 
              
              <asp:HyperLink ID="hlgivenow1" runat="server" NavigateUrl="~/projects.aspx">click here.</asp:HyperLink>
              
              <br /> <br />
    <asp:Button ID="btnClose" runat="server" Text="Close" />  &nbsp;<asp:Button ID="btnOK_pppopuplend1" runat="server" Text="Submit" OnClick="Getuseremail_pppopuplend" />
        <div>&nbsp;<br /> </div>
</asp:Panel> 

              &nbsp;
            
             <a href="parishes.aspx" class="findProject">
              &nbsp;
            </a>
          
        </div>
     

     