<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ISJ_Test.aspx.vb" Inherits="ISJ_Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
* {
	position: relative;
	margin: 0px;
	border: solid 0px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SQL_DS" 
            DataTextField="Project_Name" DataValueField="Project_ID"></asp:ListBox>
    
    </div>
    <asp:SqlDataSource ID="SQL_DS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        
        
        
        
        
        
        SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File ORDER BY Project_Name">
    </asp:SqlDataSource>
    </form>
</body>
</html>
