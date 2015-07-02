<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="modify_features.aspx.vb" Inherits="admin_modify_features" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Modify Features</title>
    <style type="text/css">
        .style4tb {
            width: 500px;
        }

        .style2tb {
            width: 30px;
            vertical-align: top;
        }

        .style5tb {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="sub-header">
        <div class="main">
            <div class="section">
                <h1>Modify Featured Items</h1>
            </div>
        </div>
    </div>

    <div class="iSupport">
        <div class="main">
            <div class="section">

                <div class="genericColumn">
                    <div class="article">
                        <table style="width: 1000px;">
                            <tr>
                                <td class="style4tb">
                                    <strong>Projects/Businesses</strong></td>
                                <td class="style5tb">
                                    <strong>Features</strong></td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4tb">&nbsp;</td>
                                <td class="style5tb">&nbsp;</td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4tb">
                                    <asp:ListBox ID="ListBox2" runat="server" DataSourceID="DS_Projects"
                                        DataTextField="Project_Name" DataValueField="Project_ID" Height="300px"
                                        SelectionMode="Multiple"></asp:ListBox>
                                    <asp:ListSearchExtender ID="ListBox2_ListSearchExtender" runat="server"
                                        Enabled="True" TargetControlID="ListBox2">
                                    </asp:ListSearchExtender>
                                </td>
                                <td class="style5tb">
                                    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="DS_Features"
                                        DataTextField="Project_Name" DataValueField="Project_ID" Height="300px"
                                        SelectionMode="Single"></asp:ListBox>
                                </td>
                                <td class="style2tb">
                                    <div style="float: left;">
                                        <div style="margin-left: -190px;">
                                            <img class="button-reorder" src="../images/arrowUp.jpg" alt="MoveUp" style="width: 25px; height: 25px; cursor: pointer;" data-value="up" />
                                        </div>
                                        <div style="margin-left: -190px; margin-top: 10px;">
                                            <img class="button-reorder" src="../images/arrowDown.jpg" alt="MoveDown" style="width: 25px; height: 25px; cursor: pointer;" data-value="down" />
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4tb">&nbsp;</td>
                                <td class="style5tb"></td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4tb">
                                    <asp:Button ID="btn_Add" runat="server" Text="Add" CssClass="button" />
                                </td>
                                <td class="style5tb">
                                    <asp:Button ID="btn_Modify" runat="server" Text="Delete" CssClass="button" />
                                    <asp:Button ID="btn_ModifyOrder" runat="server" Text="Save Order" CssClass="button" />
                                    <asp:ConfirmButtonExtender ID="Modify_ConfirmButtonExtender" runat="server"
                                        ConfirmText="Are you sure you wish to delete the selected item(s) from features?"
                                        Enabled="True" TargetControlID="btn_Modify">
                                    </asp:ConfirmButtonExtender>
                                </td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="sub-header">
        <div class="main">
            <div class="section">
                <h1>Modify Active Projects Order</h1>
            </div>
        </div>
    </div>

    <div class="iSupport">
        <div class="main">
            <div class="section">

                <div class="genericColumn">
                    <div class="article">
                        <table style="width: 1000px;">
                            <tr>
                                <td class="style4tb" colspan="2">
                                    <strong>Active Projects/Businesses</strong>
                                </td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4tb">&nbsp;</td>
                                <td class="style5tb">&nbsp;</td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div style="float:left;">
                                        <asp:ListBox ID="listBoxActive" ClientIDMode="Static" runat="server" DataSourceID="DS_Active"
                                        DataTextField="Project_Short_Name" DataValueField="Project_ID" Height="300px"
                                        SelectionMode="Single"></asp:ListBox>
                                    </div>
                                    <div style="float: left; margin-left:10px;">
                                        <div>
                                            <img class="button-reorder-active" src="../images/arrowUp.jpg" alt="MoveUp" style="width: 25px; height: 25px; cursor: pointer;" data-value="up" />
                                        </div>
                                        <div style="margin-top: 10px;">
                                            <img class="button-reorder-active" src="../images/arrowDown.jpg" alt="MoveDown" style="width: 25px; height: 25px; cursor: pointer;" data-value="down" />
                                        </div>
                                    </div>
                                </td>
                                <td class="style2tb" style="margin-left:-400px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style4tb">&nbsp;</td>
                                <td class="style5tb"></td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4tb">
                                    <asp:Button ID="btn_ModifyOrder_Active" runat="server" Text="Save Order" CssClass="button" />
                                </td>
                                <td class="style5tb">
                                    &nbsp;
                                </td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="sub-header">
        <div class="main">
            <div class="section">
                <h1>Modify Completed Projects Order</h1>
            </div>
        </div>
    </div>

    <div class="iSupport">
        <div class="main">
            <div class="section">

                <div class="genericColumn">
                    <div class="article">
                        <table style="width: 1000px;">
                            <tr>
                                <td class="style4tb" colspan="2">
                                    <strong>Completed Projects/Businesses</strong>
                                </td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4tb">&nbsp;</td>
                                <td class="style5tb">&nbsp;</td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div style="float:left;">
                                        <asp:ListBox ID="listBoxCompleted" ClientIDMode="Static" runat="server" DataSourceID="DS_Completed"
                                        DataTextField="Project_Short_Name" DataValueField="Project_ID" Height="300px"
                                        SelectionMode="Single"></asp:ListBox>
                                    </div>
                                    <div style="float: left; margin-left:10px;">
                                        <div>
                                            <img class="button-reorder-completed" src="../images/arrowUp.jpg" alt="MoveUp" style="width: 25px; height: 25px; cursor: pointer;" data-value="up" />
                                        </div>
                                        <div style="margin-top: 10px;">
                                            <img class="button-reorder-completed" src="../images/arrowDown.jpg" alt="MoveDown" style="width: 25px; height: 25px; cursor: pointer;" data-value="down" />
                                        </div>
                                    </div>
                                </td>
                                <td class="style2tb" style="margin-left:-400px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style4tb">&nbsp;</td>
                                <td class="style5tb"></td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4tb">
                                    <asp:Button ID="btn_ModifyOrder_Completed" runat="server" Text="Save Order" CssClass="button" />
                                </td>
                                <td class="style5tb">
                                    &nbsp;
                                </td>
                                <td class="style2tb">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="whiteSpace">
        <div class="main">
            <div class="section">
                <p>&nbsp;</p>
            </div>
        </div>
    </div>
    <asp:NoBot ID="NoBot1" runat="server" />
    <asp:SqlDataSource ID="DS_Features" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
        SelectCommand="SELECT Project_Featured_Data_File.Project_ID, Project_Data_File.Project_Name, Project_Featured_Data_File.Project_Type AS Project_Type_ID, Project_Type_Master_File.Project_Type, Project_Featured_Data_File.SequenceNumber FROM Project_Data_File INNER JOIN Project_Featured_Data_File ON Project_Data_File.Project_ID = Project_Featured_Data_File.Project_ID INNER JOIN Project_Type_Master_File ON Project_Featured_Data_File.Project_Type = Project_Type_Master_File.Project_Type_ID GROUP BY Project_Featured_Data_File.Project_ID, Project_Featured_Data_File.Project_Type, Project_Data_File.Project_Name, Project_Type_Master_File.Project_Type, Project_Featured_Data_File.SequenceNumber ORDER BY Project_Featured_Data_File.SequenceNumber"
        DeleteCommand="DELETE FROM Project_Featured_Data_File WHERE (Project_ID = @param)">
        <DeleteParameters>
            <asp:Parameter Name="param" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="DS_Active" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
        SelectCommand="SELECT P.Project_ID, P.Project_Short_Name, P.Project_Image, P.Project_Goal, P.Project_Raised,PA.SequenceNo
            FROM Project_Data_File P
            LEFT OUTER JOIN Projects_Sequence_Active PA ON P.Project_ID = PA.Project_ID
            WHERE (P.Project_Status = 1) AND (P.Project_Type = 1) ORDER BY PA.SequenceNo ASC">
        <DeleteParameters>
            <asp:Parameter Name="param" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="DS_Completed" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
        SelectCommand="SELECT P.Project_ID, P.Project_Short_Name, P.Project_Image, P.Project_Goal, P.Project_Raised,PA.SequenceNo
            FROM Project_Data_File P
            LEFT OUTER JOIN Projects_Sequence_Completed PA ON P.Project_ID = PA.Project_ID
            WHERE ((P.Project_Status = 2) OR (P.Project_Status = 3)) AND (P.Project_Type = 1) ORDER BY PA.SequenceNo ASC">
        <DeleteParameters>
            <asp:Parameter Name="param" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="DS_Projects" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>"
        SelectCommand="SELECT Project_ID, Project_Name FROM Project_Data_File WHERE (Project_ID NOT IN (SELECT Project_ID FROM Project_Featured_Data_File)) ORDER BY Project_Name"></asp:SqlDataSource>
    <asp:HiddenField ID="hidden_features_order" ClientIDMode="Static" runat="server" />
    <asp:HiddenField ID="hidden_active_order" ClientIDMode="Static" runat="server" />
    <asp:HiddenField ID="hidden_completed_order" ClientIDMode="Static" runat="server" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.button-reorder').click(function () {
                var $op = $('#ContentPlaceHolder1_ListBox1 option:selected'),
                    $this = $(this);
                if ($op.length) {
                    ($this.attr('data-value') == 'up') ?
                        $op.first().prev().before($op) :
                        $op.last().next().after($op);
                }

                var newOrder = '';
                $("#hidden_features_order").val('');
                var options = $('#ContentPlaceHolder1_ListBox1').children();
                for (var i = 0; i < options.length; i++) {
                    console.log($($('#ContentPlaceHolder1_ListBox1').children()[i]).val());
                    newOrder += $($('#ContentPlaceHolder1_ListBox1').children()[i]).val() + ',';
                }
                $("#hidden_features_order").val(newOrder);
            });

            $('.button-reorder-active').click(function () {
                var $op = $('#listBoxActive option:selected'),
                    $this = $(this);
                if ($op.length) {
                    ($this.attr('data-value') == 'up') ?
                        $op.first().prev().before($op) :
                        $op.last().next().after($op);
                }

                var newOrder = '';
                $("#hidden_active_order").val('');
                var options = $('#listBoxActive').children();
                for (var i = 0; i < options.length; i++) {
                    console.log($($('#listBoxActive').children()[i]).val());
                    newOrder += $($('#listBoxActive').children()[i]).val() + ',';
                }
                $("#hidden_active_order").val(newOrder);
            });

            $('.button-reorder-completed').click(function () {
                var $op = $('#listBoxCompleted option:selected'),
                    $this = $(this);
                if ($op.length) {
                    ($this.attr('data-value') == 'up') ?
                        $op.first().prev().before($op) :
                        $op.last().next().after($op);
                }

                var newOrder = '';
                $("#hidden_completed_order").val('');
                var options = $('#listBoxCompleted').children();
                for (var i = 0; i < options.length; i++) {
                    console.log($($('#listBoxCompleted').children()[i]).val());
                    newOrder += $($('#listBoxCompleted').children()[i]).val() + ',';
                }
                $("#hidden_completed_order").val(newOrder);
            });
        });
    </script>
</asp:Content>
