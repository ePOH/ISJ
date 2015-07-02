<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="testme.aspx.vb" Inherits="admin_testme_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Literal ID="ltlerrormessage" runat="server"></asp:Literal>
    <br />
    <h3>CustomValidator Example</h3>
    
    <asp:Label ID="lbldecoder" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblencoder" runat="server"  Text="Label">     </asp:Label>
      <asp:Label id=lblOutput runat="server" 
           Text="Enter an even number:" 
           Font-Name="Verdana" 
           Font-Size="10pt" /><br>
      <p>
      <asp:TextBox id="Text1" 
           runat="server" />
      &nbsp;&nbsp;<asp:HyperLink ID="forgetpassword" runat="server" NavigateUrl="~/forgot_password.aspx">HyperLink</asp:HyperLink>
      <a href="../forgot_password.aspx">forgot_password.aspx</a><asp:CustomValidator id="CustomValidator1"
           ControlToValidate="Text1"
           OnServerValidate="ServerValidation"
           Display="Static"
           ErrorMessage="Not an even number!"
           ForeColor="green"
           Font-Name="verdana" 
           Font-Size="10pt"
           runat="server"/>
      <p>
      <asp:Button id="Button1"
           Text="Validate" 
           OnClick="ValidateBtn_OnClick" 
           runat="server"/>

</asp:Content>

