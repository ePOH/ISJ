<%@ Page Language="VB" MasterPageFile="~/ResponsiveMaster2.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<%@ Register src="_controls/SoonLend.ascx" tagname="SoonLend" tagprefix="Lend" %>

<%@ Register src="_controls/Logotop.ascx" tagname="Logotop" tagprefix="Top" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<section class="generic-content">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
            <asp:Literal runat="server" ID="ContactUsContent"/>
        </div>
      </div>       
      <div class="col-md-12">
       <Lend:soonlend ID="SoonLend1" runat="server" />
      </div>
     </div>
</section>

</asp:Content>


