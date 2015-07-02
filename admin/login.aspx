<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RegularExpressionValidator ID="Val_Reg_Email" runat="server" 
            ControlToValidate="ISJ_User" Display="Dynamic" ErrorMessage="*" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    
        <asp:TextBox ID="ISJ_User" runat="server" Font-Names="Arial" 
            Font-Size="8pt" ForeColor="#404040" Width="150px"></asp:TextBox>
    
        <br />
        <asp:TextBox ID="ISJ_Password" runat="server" Font-Names="Arial" 
            Font-Size="8pt" ForeColor="#404040" TextMode="Password" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Login_Msg" runat="server" style="color: red"></asp:Label>
        <br />
        <asp:Button ID="LoginBtn" runat="server" Text="Login" />
    
    </div>
    </form>
</body>
</html>
