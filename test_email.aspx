<%@ Page Language="VB" AutoEventWireup="false" CodeFile="test_email.aspx.vb" Inherits="test_email" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
        To:<asp:TextBox ID="tbxTo" runat="server"></asp:TextBox><br/>
        Body:<asp:TextBox ID="tbxBody" TextMode="MultiLine" runat="server"></asp:TextBox><br/>
        <asp:Button runat="server" ID="btnSend" Text="Send" OnClick="btnSend_OnClick" />
    </div>
    </form>
</body>
</html>
