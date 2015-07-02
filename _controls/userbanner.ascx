<%@ Control Language="VB" AutoEventWireup="false" CodeFile="userbanner.ascx.vb" Inherits="_controls_userbanner" %>

   <style type="text/css">
       .style1
       {
           color: #007E43;
       }
   </style>

   <div class="header">
            <div class="banner1">
            <div class="banner">
              <div class="slogan">I Support makes it easy for people around the world to support organisations and small businesses in Jamaica.</div>
            </div>
          </div>
  
          <div class="banner2">
            <div class="nav">
              <asp:HyperLink ID="hl_home" runat="server" NavigateUrl="~/default.aspx">HOME</asp:HyperLink>
              <asp:HyperLink ID="hl_about" runat="server" NavigateUrl="~/about.aspx">ABOUT US</asp:HyperLink>
              <asp:HyperLink ID="hl_hiw" runat="server" NavigateUrl="~/howItWorks.aspx">HOW IT WORKS</asp:HyperLink>
              <asp:HyperLink ID="hl_projects" runat="server" NavigateUrl="~/projects.aspx">PROJECTS</asp:HyperLink>
              <%--<asp:HyperLink ID="hl_businesses" runat="server" NavigateUrl="~/businesses.aspx">BUSINESSES</asp:HyperLink>--%>
              <asp:LinkButton ID="hlb_businesses" runat="server">BUSINESSES</asp:LinkButton>
              
               <%--<asp:ModalPopupExtender ID="mp1head" runat="server" 
               PopupControlID="PanelHead" 
               TargetControlID="hlb_businesses" 
                CancelControlID="btnClose" 
                BackgroundCssClass="modalBackground" >
</asp:ModalPopupExtender>--%>

<asp:Panel ID="PanelHead" runat="server" CssClass="modalPopup" align="center" style = "display:none"> 

    We're so excited to announce a new feature coming soon which will allow you to LEND to micro-enterprises in Jamaica. Let us notify you when we launch this exciting feature of ISupportJamaica by giving us your Email
    <asp:TextBox ID="txtHeademail" runat="server"></asp:TextBox>, or if you would like to GIVE to a project, 
              
              <asp:HyperLink ID="hlgivenow" runat="server" NavigateUrl="~/projects.aspx">click here.</asp:HyperLink>
              
              <br /> <br />
    <asp:Button ID="btnClose" runat="server" Text="Cancel" /> &nbsp;<asp:Button ID="btnOK" runat="server" Text="Submit" OnClick="Getuseremail" />
     <div>&nbsp;<br /> </div>

</asp:Panel>
              <asp:HyperLink ID="hl_contact" runat="server" NavigateUrl="~/contact.aspx">CONTACT US</asp:HyperLink>
              <%--<asp:HyperLink ID="hl_logout" runat="server">LOG OUT</asp:HyperLink>
              <div class="logoutForm">
              <fieldset>
                <legend></legend>
                  <p>
                    <asp:Button ID="btn_dash" runat="server" CssClass="button" Text="PROCEED TO DASHBOARD" />
                  </p>
                  <p>
                    <asp:Button ID="logout" runat="server" CssClass="button" Text="PROCEED TO LOGOUT" />
                  </p>
                </fieldset>
              </div>--%>
              <asp:HyperLink ID="openLogin" NavigateUrl="~/login.aspx" runat="server">LOG IN</asp:HyperLink>
             
            </div>
              
            <div class="nav">&nbsp; 
                <asp:Literal ID="lblmessage" runat="server"></asp:Literal></div>

            <asp:Panel ID="Bestviewed" runat="server"  >
            <div class="nav"> <span class="style1"><em>Welcome Guest ! This site is best viewed in Google Chrome 
                and IE version 7-9 </em></span>
            </div> 
            </asp:Panel>

            <asp:Panel ID="Submenu" runat="server"  >
            <div class="nav"> <span class="style1">Welcome </span> <asp:Label ID="lblname" 
                    runat="server" Text="" CssClass="style1"> </asp:Label>
             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/dashboard.aspx">My Dashboard</asp:HyperLink>
              
                <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick= "javascript:return confirm('Are you sure you want to Logout');">LOGOUT</asp:LinkButton>
            </div> 
            </asp:Panel>
          </div>
                     
            </div>
        

       