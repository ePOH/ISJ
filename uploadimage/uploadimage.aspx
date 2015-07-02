<%@ Page Language="VB" AutoEventWireup="false" CodeFile="uploadimage.aspx.vb" Inherits="uploadimage_uploadimage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body> 
    <form id="form1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
     <fieldset style="width:600px;">
 
            <legend>AjaxFileUpload control example to upload multiple files by Drag and Drop</legend>
 
              <table style="width:100%;">
 
                  <tr>
 
                      <td width="20%">Upload Album</td>
 
                      <td>
 
                          <asp:AjaxFileUpload ID="AjaxFileUpload1" runat="server"/>                       
                          
                      </td>                      

                  </tr>
 
                  <tr>
                  <td colspan="2">
 
                        <asp:DataList ID="dlImages" runat="server" RepeatColumns="4" 

                    RepeatDirection="Horizontal" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3">                 

                            <AlternatingItemStyle BackColor="#DCDCDC" />
 
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
 
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
 
                            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
 
                <ItemTemplate>
 
                <table  border="0" style="border-bottom-color:#60BAEA;border-top-color:#60BAEA;border-left-color:#60BAEA;border-left-color:#60BAEA;" cellspacing="5" >
 
                            <tr>
 
                            <td align="center">
 
                             <asp:Image  ID="img" runat="server" align="center" BorderStyle="Solid" BorderColor="#e0ddd7" BorderWidth="2" Height="150" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "IMAGE_PATH") %>'
 
                                        Width="150px"  />
 
                            </td>
 
                            </tr>                   
 
                     </table>
 
                </ItemTemplate>                    

                            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
 
                </asp:DataList>                  

                </td>
                </tr>
              </table>  

        <center><asp:Button ID="btnViewAlbum" runat="server" Text="View Album"/>    </center>
 
        </fieldset>
 
    </div>
    </form>
</body>
</html>
