<%@ Page Language="VB" AutoEventWireup="false" CodeFile="test_login.aspx.vb" Inherits="test_login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 100px"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-md-12">
                                <p ID="lblError" style="padding: 15px" runat="server" class="bg-danger" Visible="False">Incorrect Password</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h1><i class="glyphicon glyphicon-lock"></i></h1>
                            </div>
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label>Password</label>
                                    <input id="password" name="password" class="form-control" type="password" runat="server" placeholder="Password"/>
                                </div>
                                <asp:Button ID="btn_Submit" runat="server" CssClass="btn btn-default btn-sm" Text="Enter"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>  
            </div>
        </div>
    </div>
    </form>
</body>
</html>
