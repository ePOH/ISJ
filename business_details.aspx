<%@ Page Language="VB" MasterPageFile="MasterPage2.master"  AutoEventWireup="false" CodeFile="business_details.aspx.vb" Inherits="business_details"  Title= "I Support Jamaica Businesses" %>


<asp:Content id="head" ContentPlaceHolderID="head" runat="server">
     <title>I Support Jamaica Businesses</title>
    <link href="Scripts/index.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="favicon.ico" type="image/x-icon"/>

    <script type="text/javascript" src="Scripts/jQuery_progressBar.js"></script>
    <script type="text/javascript" src="Scripts/jQuery_tabs.js"></script>
    <script type="text/javascript" src="Scripts/swfobject.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
    <script type="text/javascript">

        var flashvars = {};
        flashvars.videoURL = "<%= Request.QueryString("pid") %>.f4v";  // path to f4v file relative to "videoPlayer.swf". Make this string value dynamic.

        var params = {};
        params.wmode = "transparent";
        params.menu = "false";
        params.scale = "noscale";

        var attributes = {};
        attributes.id = "video";
        attributes.styleclass = "video";

        swfobject.embedSWF("video/videoPlayer.swf", "video", "420", "270", "10", "Scripts/expressInstall.swf", flashvars, params, attributes);
  
</script>

    <style type="text/css">
    <!--
    .footer .hand {
	    background-image: url(Images/hand_gray.jpg);
    }
    -->
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="generic-content">
	<div class="container">
		<div class="row">
    <div>
     <%--<div class="header">
            <div class="banner1">
            <div class="banner">
              <div class="slogan">I Support makes it easy for people around the world to support organisations and small businesses in Jamaica.</div>
            </div>
          </div>
  
          <div class="banner2">
            <div class="nav">
              <asp:HyperLink ID="hl_home" runat="server" NavigateUrl="~/default.aspx">HOME</asp:HyperLink>
              <asp:HyperLink ID="hl_about" runat="server" NavigateUrl="~/about.aspx">ABOUT US</asp:HyperLink>
              <asp:HyperLink ID="hl_hiw" runat="server" NavigateUrl="~/howItWorks.aspx">HOW IT WORKS</asp:HyperLink>
              <asp:HyperLink ID="hl_projects" runat="server" NavigateUrl="~/projects.aspx">PROJECTS</asp:HyperLink>
             
              <asp:HyperLink ID="hl_contact" runat="server" NavigateUrl="~/contact.aspx">CONTACT US</asp:HyperLink>
              <asp:HyperLink ID="hl_logout" runat="server">LOG OUT</asp:HyperLink>
              <div class="logoutForm">
              <fieldset>
                <legend></legend>
                  <p>
                    <asp:Button ID="btn_dash" runat="server" CssClass="button" Text="PROCEED TO DASHBOARD" />
                  </p>
                  <p>
                    <asp:Button ID="logout" runat="server" CssClass="button" Text="PROCEED TO LOGOUT" />
                  </p>
                </fieldset>
              </div>
              <asp:HyperLink ID="openLogin" runat="server">LOG IN</asp:HyperLink>
              <div class="loginForm">
              <fieldset>
                <legend></legend>
                  <label>
                    <asp:TextBox ID="head_login_email" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="head_login_email_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="head_login_email" 
                                WatermarkText="email@domain.com">
                            </asp:TextBoxWatermarkExtender>
                  </label>
                  <label>
                    <asp:TextBox ID="head_login_password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="head_login_password_TextBoxWatermarkExtender" 
                                runat="server" Enabled="True" TargetControlID="head_login_password" 
                                WatermarkText="********">
                            </asp:TextBoxWatermarkExtender>
                         <!--  <asp:hyperlink ID="Hyperlink1" runat="server" NavigateUrl="https://www.facebook.com/dialog/oauth?client_id=150728681736405&redirect_uri=https://www.isupportjamaica.com/login.aspx&scope=email"><asp:image ID="Image1" runat="server" ImageUrl="~/Images/fecebook1.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink> -->
                  </label>
                  <p>
                    <asp:Button ID="login" runat="server" CssClass="button" Text="LOGIN" />&nbsp;
                    <input name="rememberMe" type="checkbox" value="true" /> remember me
                  </p>
                  <asp:HyperLink ID="fpassword" runat="server" NavigateUrl="~/forgot_password.aspx">Forgot your password?</asp:HyperLink><br/>
                  <asp:HyperLink ID="nmember" runat="server" NavigateUrl="~/login.aspx">Not a member?</asp:HyperLink>
                </fieldset>
              </div>
            </div>
          </div>
        </div>--%>
<div class="sub-header">
  <div class="main">
    <div class="section">
      <div class="thumbnail">
        <asp:Image ID="im_project_image_tn" runat="server" Width="100" Height="70" />
      </div>
      <div class="caption">
        <h1><asp:Label ID="lb_project_name" runat="server" Text=""></asp:Label></h1>
        <h3><asp:Label ID="lb_project_synopsys" runat="server" Text=""></asp:Label></h3>
        <asp:Label ID="Label1" runat="server"></asp:Label>
      </div>
    </div>
  </div>
</div>



<div id="tab-group" class="tab-group">
  <div class="nav">
    <div class="main">
      <div class="section">
        <a href="javascript:;" id="aboutButton">ABOUT</a>
        <a href="javascript:;" id="galleryButton">VIDEO</a>
      </div>
    </div>
  </div> 
  
  <div id="about" class="main">
    <div class="section">
    
      <div class="genericColumn">
        <div class="feature">
          <div class="image">
            <asp:Image ID="im_project_image" runat="server" Width="475" Height="326" />
          </div>
          <h2>ABOUT THIS BUSINESS</h2>
          <p><asp:Label ID="lb_project_about" runat="server" Text="Label"></asp:Label></p>
          <h2>WHAT <asp:Label ID="lb_project_fn" runat="server" Text="Label"></asp:Label> NEEDS</h2>
          <p><asp:Label ID="lb_project_needs" runat="server" Text="Label"></asp:Label></p>
          <h2>HOW YOUR LOAN WILL HELP</h2>
          <p><asp:Label ID="lb_project_aim" runat="server" Text="Label"></asp:Label></p>
          <h2><asp:Label ID="lb_project_fn1" runat="server"></asp:Label></h2>
          <p><asp:Label ID="lb_project_jnsbl" runat="server"></asp:Label></p>
        </div>
      </div>
      

      <div class="genericColumn">
        <div class="donate">
          <div class="progressBar">
            <img src="Images/donateHand_empty.jpg" width="86" height="235">
          </div>
          <div class="progressInfo">
            <p class="amount">$<asp:Label ID="lb_project_raised" runat="server" Text="Label"></asp:Label></p>
            <p><span id="percent" class="percent"><asp:Label ID="lb_project_raised_pc" runat="server" Text="Label"></asp:Label></span>
            <span class="percent">% LENT</span><br/>
            of US$<asp:Label ID="lb_project_goal" runat="server" Text="Label"></asp:Label><br/></p>
            <p class="timeLeft"><img src="Images/stopwatch.jpg" alt="stopwatch" width="38" height="44" align="absmiddle" /><asp:Label ID="lb_project_time" runat="server" Text="Label"></asp:Label> <sup>DAYS LEFT</sup></p>
          </div>
          <div class="submit">
            <asp:HiddenField ID="cmd" runat="server" /> 
            <asp:HiddenField ID="business" runat="server" />
            <asp:HiddenField ID="item_number" runat="server" />
            <asp:HiddenField ID="item_name" runat="server" />
            <asp:HiddenField ID="amount" runat="server" />
            <asp:HiddenField ID="no_shipping" runat="server" />
            <asp:HiddenField ID="return" runat="server" />
            <asp:HiddenField ID="cancel_return" runat="server" />
            <asp:HiddenField ID="rm" runat="server" />
            <asp:Button ID="submit" runat="server" CssClass="button" Text="LEND TO THIS BUSINESS" />
          <%--    <asp:ModalPopupExtender ID="submit_ModalPopupExtender" runat="server" 
                DynamicServicePath="" Enabled="True" TargetControlID="submit" PopupControlID="Panel1">
            </asp:ModalPopupExtender>--%>
            <asp:Button ID="btn_check_out" runat="server" CssClass="button" Text="CHECK OUT" />
            <asp:Panel ID="Panel1" runat="server" Width="150px" BackColor="Silver" 
                  BorderColor="#F8F8F8" BorderStyle="Solid" HorizontalAlign="Center">
            <div class="project">
                  <p><asp:DropDownList ID="Period_value" runat="server">
                 
                 <asp:ListItem Value ="3"> 3 months</asp:ListItem>
                  <asp:ListItem Value ="6"> 6 months</asp:ListItem>
                  <asp:ListItem Value ="12"> 12 months</asp:ListItem>
                  </asp:DropDownList></p>
                  <p></p>
                  <p><asp:DropDownList ID="DD_value" runat="server">
                  
                  </asp:DropDownList></p>
                  <p><asp:Button ID="btn_c_Out" runat="server" CssClass="button" Text="OK" Width="35" />
                  <asp:Button ID="btn_c_Cancel" runat="server" CssClass="button" Text="Cancel" 
                          Width="65px" /></p>
                </div>
            </asp:Panel>
          </div>
        </div>
        <div class="share">
          <span>Share this</span>
          <asp:hyperlink ID="hl_tw" runat="server" Target="_blank"><asp:image ID="img_tw" runat="server" ImageUrl="~/Images/twitter.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink>
            <asp:hyperlink ID="hl_fb" runat="server" Target="_blank"><asp:image ID="img_fb" runat="server" ImageUrl="~/Images/fecebook.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink>
        </div>
      </div>
      
      <div class="genericColumn">
        <div class="aside">
          <h1>RECENT UPDATES</h1>
          
<!-- begin repeating region for articles -->

          <asp:Repeater ID="Projects_Updates" runat="server" DataSourceID="SQL_DS_Projects_Updates">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                   	<div class="article">
            			<h4><asp:Label ID="lb_project_update_date" runat="server" Text='<%# FormatDateTime(DataBinder.Eval(Container.DataItem, "Project_Update_Date"), DateFormat.ShortDate) %>'></asp:Label></h4>
            			<asp:Label ID="lb_project_update" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Project_Update") %>'></asp:Label>
          		</div>
                </ItemTemplate>
                <SeparatorTemplate>
		        </SeparatorTemplate>
            </asp:Repeater>

<!-- end repeating region -->
          
        </div>
      </div>
      
    </div>
  </div>
  
  <div id="gallery" class="main">
    <div class="section">
    
      <div class="genericColumn">
        <div class="videoWrapper">
            <!-- video is imbedded dynamically using JavaScript -->
            <!-- video dimensions should be 420×270 -->
            <!-- video format should be f4v -->
            <!-- video should replace "howItWorks.f4v" at path video/howItWorks.f4v -->
            <asp:Label ID="lb_yt_video" runat="server"></asp:Label>
            <img src="Images/projects/video.jpg" width="420" height="270">
        </div>
      </div>
      
      <div class="genericColumn">
        <div class="group">
        
          <!-- begin repeating region for gallery images -->
          
          <asp:Repeater ID="Gallery_Images" runat="server" DataSourceID="">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                	<div class="image">
            			<asp:HyperLink ID="HL_Project_Img_Gallery" runat="server" NavigateUrl='<%# "gallery.aspx?pid=" & DataBinder.Eval(Container.DataItem, "Project_ID") %>'>
                          <asp:Image ID="IMG_Project_Gallery" runat="server" Width="150" Height="130" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Project_Image") & "/" & DataBinder.Eval(Container.DataItem, "Project_ID") & "lgp.jpg" %>' />
                        </asp:HyperLink>
          		</div>
                </ItemTemplate>
                <SeparatorTemplate>
			    </SeparatorTemplate>
            </asp:Repeater>
          
          <!-- end repeating region -->
          
        </div>
      </div>
      
    </div>
  </div>
  
</div>
<asp:SqlDataSource ID="SQL_DS_Project_Details" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT Project_ID, Project_Name, Project_Synopsys, Project_About, Project_Needs, Project_Aim, Project_JNSBL, Project_Image, Project_Start_Date, Project_End_Date, Project_Goal, Project_Raised, Project_Status, Project_Updates FROM Project_Data_File WHERE (Project_ID = 1)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SQL_DS_Projects_Updates" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        
        SelectCommand="SELECT Project_Update_Date, Project_Update FROM Project_Update_Data_File WHERE (Project_ID = @param) ORDER BY Project_Update_Date DESC">
            <SelectParameters>
                <asp:QueryStringParameter Name="param" QueryStringField="pid" ConvertEmptyStringToNull="true" />
            </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SQL_DS_DD_Value" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        SelectCommand="SELECT DD_Value_ID, DD_Value FROM DD_Values_Master_File where DD_Value_ID >='100'  GROUP BY DD_Value_ID, DD_Value ORDER BY DD_Value_ID">
    </asp:SqlDataSource>
    

</div>
		</div>
	</div>
</section>
</asp:Content>
<%--<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   
    <div class="footer">
          <div class="banner2">
            <div class="main">
              <div class="hand">&nbsp;</div>
              <div class="copyright">
                The impetus to succeed and support comes from the same place...Inside © 2009 - 2012 JNF. All rights reserved.
              </div>
              <div class="hlinks">
                <asp:HyperLink ID="hlink1" runat="server" CssClass="ahlinks" 
                      NavigateUrl="~/terms_and_conditions.aspx">Terms and Conditions</asp:HyperLink>&nbsp;-&nbsp;<asp:HyperLink 
                      ID="hlink2" runat="server" CssClass="ahlinks" 
                      NavigateUrl="~/privacy_policy.aspx">Privacy Policy</asp:HyperLink>&nbsp;-&nbsp;<asp:HyperLink 
                      ID="hlink3" runat="server" CssClass="ahlinks" NavigateUrl="~/contact.aspx">Contact Us</asp:HyperLink>
              </div>
            </div>
          </div>
        </div>
    </form>
</body>--%>
