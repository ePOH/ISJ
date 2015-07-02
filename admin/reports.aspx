<%@ Page Language="VB" MasterPageFile="ISJAdmin.master" AutoEventWireup="false" CodeFile="reports.aspx.vb" Inherits="admin_reports" EnableEventValidation="false"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>Back Office Reports</title>
    <style type="text/css">
        .style1tb
        {
            width: 200px;
            text-align: right;
        }
        .style4tb
        {
            vertical-align:top;
        }
        .style2tb
        {
            width: 30px;
            vertical-align:top;
        }
        .style5tb
        {
            width: 1100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sub-header">
  <div class="main">
    <div class="section">
      <h1>REPORTS</h1>
    </div>
  </div>
</div>

<div class="iSupport">
  <div class="main">
    <div class="section">
      
      <div class="genericColumn">
        <div class="article">
        <div>  <asp:Literal ID="lblerrormessage" runat="server"></asp:Literal>  </div>
        <p>
          <table style="width:1000px;">
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:LinkButton ID="lbtn_reg_user" runat="server">Registered User Listing</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:LinkButton ID="lbtn_tot_donor" runat="server">Total Contribution Per User</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:LinkButton ID="lbtn_par_fund" runat="server">Partial Funded Projects</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:LinkButton ID="lbtn_ful_fund" runat="server">Fully Funded Projects</asp:LinkButton>
                        </td>
                    </tr>

                     <tr>
                        <td class="style1tb">
                            &nbsp;</td>
                        <td class="style4tb">
                            <asp:LinkButton ID="lbtn_funds" runat="server">Projects Donations</asp:LinkButton>
                        </td>
                    </tr>
                    </table>
        </p>
        </div>
      </div>   
    </div>
    
  </div> 
</div>

<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>
          <asp:HiddenField ID="hf_var" runat="server" />
          <asp:SqlDataSource ID="SQL_DS_Reg_Users" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
              SelectCommand="SELECT Donor_First_Name AS [First Name], Donor_Last_Name AS [Last Name], Donor_Email AS [Email Address] , CONVERT(VARCHAR(10), CreateDate,111) CreateDate FROM Donor_Master_File ORDER BY [First Name], [Last Name]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="SQL_DS_Con_PUser" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnISJ %>"               
              SelectCommand="SELECT Donor_Email,Donor_First_Name, Donor_Last_Name, [Give] AS Give, [Lend] AS Lend, ([Give]+[Lend]) AS Total_Contribution FROM (SELECT  Donor_Master_File.Donor_Email, Donor_Master_File.Donor_First_Name, Donor_Master_File.Donor_Last_Name, Project_Type_Master_File.[Project_Type], Donor_Transaction_Data_File.Project_Amount FROM (Donor_Master_File INNER JOIN Donor_Transaction_Data_File ON Donor_Master_File.Donor_ID = Donor_Transaction_Data_File.Donor_ID INNER JOIN Project_Data_File ON Donor_Transaction_Data_File.Project_ID = Project_Data_File.Project_ID INNER JOIN Project_Type_Master_File ON Project_Data_File.[Project_Type] = Project_Type_Master_File.Project_Type_ID)) ps PIVOT (SUM(Project_Amount) FOR [Project_Type] IN ([Give], [Lend])) AS pvt"></asp:SqlDataSource>

          <asp:SqlDataSource ID="SQL_DS_Par_Fund" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnISJ %>"  
              SelectCommand="SELECT Project_Name, Project_Raised FROM Project_Data_File WHERE (Project_Status = 1) AND (Project_Raised > 0) and  (Project_Type=1)"></asp:SqlDataSource>

          <asp:SqlDataSource ID="SQL_DS_Ful_Fund" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
              SelectCommand="SELECT Project_Name, Project_Raised FROM Project_Data_File WHERE (Project_Status = 2) AND (Project_Raised > 0) and  (Project_Type=1)"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SQL_Donations" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
              SelectCommand="Donations" SelectCommandType="StoredProcedure">            
          </asp:SqlDataSource>
        </p>
    </div>
      
  </div>
</div>
<asp:NoBot ID="NoBot1" runat="server" />
        </asp:Content>
