


<%@ Control Language="VB" AutoEventWireup="false" CodeFile="popupLend.ascx.vb" Inherits="_controls_popupLend" ClientIDMode="Static" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



&nbsp;<asp:ModalPopupExtender ID="mpbb1f" runat="server" 
PopupControlID="pppopuplend" 
TargetControlID="HL_IMG_Business_Lend_Success" 
 CancelControlID="btnClose_pppopuplend" 
 BackgroundCssClass="modalBackground">
</asp:ModalPopupExtender>
<asp:Panel ID="pppopuplend" runat="server" CssClass="modalPopup" align="center" style = "display:none">
    We're so excited to announce a new feature coming soon which will allow you to LEND to micro-enterprises in Jamaica. Let us notify you when we launch this exciting feature of ISupportJamaica by giving us your Email 
    <asp:TextBox ID="txtpppopuplenduseremail" runat="server"></asp:TextBox>, or if you would like to GIVE to a project, 
              
              <asp:HyperLink ID="hlgivenow" runat="server" NavigateUrl="~/projects.aspx">click here.</asp:HyperLink>
              
              <br /> <br />
    <asp:Button ID="btnClose_pppopuplend" runat="server" Text="Close" />  &nbsp;<asp:Button ID="btnOK_pppopuplend" runat="server" Text="Submit" OnClick="Getuseremail_pppopuplend" />
        <div>&nbsp;<br /> </div>
</asp:Panel>