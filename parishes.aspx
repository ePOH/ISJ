<%@ Page Language="VB" MasterPageFile="MasterPage2.master" AutoEventWireup="false" CodeFile="parishes.aspx.vb" Inherits="parishes" %>



<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
    <title>I Support Jamaica Parishes</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="generic-content">
  <div class="container">
    <div class="row" style="text-align: center;">
         <asp:Literal EnableViewState="False" runat="server" ID="ltlMessage"></asp:Literal>


              
            <asp:ImageMap ID="IM_Parishes" runat="server" BorderColor="White" 
            HotSpotMode="Navigate" ImageUrl="~/Images/buttons/jamaica.gif" 
            Width="730px" CssClass="imgmap">
            <asp:PolygonHotSpot AlternateText="HANOVER" 
                Coordinates="19,73,42,76,61,60,107,61,129,74,156,75,152,68,144,61,131,38,130,27,127,25,123,27,103,29,95,30,89,25,80,25,80,36,71,34,70,28,58,29,51,39,43,40,41,49,32,46,27,60,18,58,19,65" 
                NavigateUrl="~/project_parishes.aspx?parish=9" TabIndex="1" />
            <asp:PolygonHotSpot AlternateText="SAINT JAMES" 
                Coordinates="133,31,145,29,152,30,155,15,162,10,175,7,194,7,211,8,218,7,206,95,171,107,170,89,161,85,157,71,146,61,137,42,134,38" 
                NavigateUrl="~/project_parishes.aspx?parish=11" TabIndex="2" />
            <asp:PolygonHotSpot AlternateText="TRELAWNEY" 
                Coordinates="219,12,231,19,241,16,253,17,277,16,300,22,303,22,310,33,308,41,312,44,297,112,291,112,280,103,267,97,253,101,209,96" 
                NavigateUrl="~/project_parishes.aspx?parish=12" TabIndex="3" />
            <asp:PolygonHotSpot AlternateText="SAINT ANN" 
                Coordinates="306,23,320,23,326,26,333,24,345,26,356,22,395,34,406,36,423,44,438,45,442,65,447,72,449,82,457,98,433,112,387,117,340,109,330,104,322,113,300,113,300,111,314,45,311,39,311,32" 
                NavigateUrl="~/project_parishes.aspx?parish=13" TabIndex="4" />
            <asp:PolygonHotSpot AlternateText="SAINT MARY" 
                Coordinates="441,45,448,45,460,44,482,51,477,46,495,46,497,59,524,73,520,80,525,82,526,91,547,90,556,93,539,133,528,123,516,122,507,128,495,128,488,109,481,106,475,95,463,96,459,97,450,78,444,65,442,54" 
                NavigateUrl="~/project_parishes.aspx?parish=10" TabIndex="5" />
            <asp:PolygonHotSpot AlternateText="PORTLAND" 
                Coordinates="558,93,563,93,567,98,570,106,577,108,591,105,599,111,611,116,628,113,635,120,651,119,657,121,658,127,672,130,675,127,687,154,696,157,694,180,700,183,690,188,672,179,664,179,645,169,625,169,618,174,608,173,579,154,569,151,556,153,541,148,541,134" 
                NavigateUrl="~/project_parishes.aspx?parish=8" TabIndex="6" />
            <asp:PolygonHotSpot AlternateText="SAINT THOMAS" 
                Coordinates="578,156,607,174,617,174,628,170,647,171,667,181,673,180,691,189,702,184,711,196,711,207,722,207,723,216,710,215,701,221,687,222,684,224,683,229,678,221,674,225,671,229,661,227,637,227,627,232,612,232,608,229,596,228,581,211,572,205,575,201,575,191,585,190,581,176,576,167" 
                NavigateUrl="~/project_parishes.aspx?parish=6" TabIndex="7" />
            <asp:PolygonHotSpot AlternateText="SAINT ANDREW" 
                Coordinates="503,131,510,128,517,123,524,125,529,126,538,134,539,150,556,155,569,152,577,156,575,167,577,174,580,179,583,190,573,190,573,201,569,206,514,205,511,202,514,198,520,196,521,191,517,188,511,187,509,177,494,171,497,155,504,155" 
                NavigateUrl="~/project_parishes.aspx?parish=5" TabIndex="8" />
            <asp:PolygonHotSpot AlternateText="SAINT CATHERINE" 
                Coordinates="392,119,421,116,433,114,462,98,474,96,480,106,486,109,491,126,496,130,501,130,502,154,495,154,493,172,507,179,508,188,498,193,497,209,492,214,489,223,481,234,476,236,451,235,446,232,450,224,439,217,418,215,413,220,412,199,406,191,406,169,399,155,398,139" 
                NavigateUrl="~/project_parishes.aspx?parish=1" TabIndex="9" />
            <asp:PolygonHotSpot AlternateText="CLARENDON" 
                Coordinates="299,116,324,115,331,107,339,111,389,120,397,141,397,156,405,170,405,192,411,200,411,224,404,240,410,246,402,247,397,258,394,256,389,256,389,260,394,265,405,265,408,262,414,269,416,277,406,286,399,285,382,273,377,272,373,265,356,252,339,238,332,232,339,227,339,212,332,203,335,193,335,184" 
                NavigateUrl="~/project_parishes.aspx?parish=3" TabIndex="10" />
            <asp:PolygonHotSpot AlternateText="MANCHESTER" 
                Coordinates="253,104,267,99,281,105,291,115,297,115,334,184,334,193,330,199,331,204,338,213,337,227,330,231,326,228,301,229,291,232,282,236,274,229" 
                NavigateUrl="~/project_parishes.aspx?parish=2" TabIndex="11" />
            <asp:PolygonHotSpot AlternateText="SAINT ELIZABETH" 
                Coordinates="166,110,205,98,251,103,272,228,268,229,261,227,252,229,223,229,212,231,195,209,195,207,186,205,182,198,181,176,177,172,158,172,154,174,147,163,147,158,158,136,152,127" 
                NavigateUrl="~/project_parishes.aspx?parish=4" TabIndex="12" />
            <asp:PolygonHotSpot AlternateText="WESTMORELAND" 
                Coordinates="18,75,43,78,60,61,107,63,131,76,157,77,160,86,169,90,169,106,149,127,155,136,146,155,135,145,125,140,119,133,119,126,111,112,79,111,70,106,68,109,56,114,48,112,41,104,37,109,14,101,10,98,8,97,7,93,17,84" 
                NavigateUrl="~/project_parishes.aspx?parish=7" TabIndex="13" />
        </asp:ImageMap>

      
    </div>
  </div> 
</section>

<%--<div class="whiteSpace">
  <div class="main">
    <div class="section">
      <p>&nbsp;</p>
        
    </div>
  </div>
</div>--%>
</asp:Content>