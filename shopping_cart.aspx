<%@ Page Language="VB" EnableEventValidation="false" AutoEventWireup="false" CodeFile="shopping_cart.aspx.vb" Inherits="shopping_cart" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>Shopping Cart</title>

    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
	
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="description" content=""/>
	<meta name="author" content=""/>

	<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    
    <!-- Custom styles -->
    <%-- <link href="Scripts/index.css" rel="stylesheet" type="text/css" />--%>
    <link href="css/custom.styles.css" rel="stylesheet" />
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/nivo-slider.css" rel="stylesheet" />
    <link href="css/themes/default/default.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <header>
    <div class="container">
    <div class ="row">
      <div class="col-md-2">
        <div class="logo">
          <a href="Default.aspx">            
            <img src="images/isj.png" alt="I Support Jamaica" title="I Support Jamaica" />
          </a>
        </div>
        <div class="slogan">
          <p>LEND. GIVE. SUPPORT</p>
        </div>
      </div>
      <div class="col-md-8">
        <ul class="navbar">
          <li><a href="how.aspx">How it works</a></li>
          <li><a href="login.aspx">Sign up | Login</a></li>
          <li>
            <div class="search-form">
              <form action="#">
                <input type="text" name="q" placeholder="Search Projects..." />
              </form>
            </div>
          </li>
        </ul>
      </div>
      <div class="col-md-2">
        <div class="blog-link text-right">
          <a href="news_center.aspx">Blog</a>
        </div>
      </div>
      </div>
    </div>
  </header>
    <div class="grid grid-pad" id="content">
		<div class="col-1-1">
			<div class="content">
                <div class="sub-header">
  <div class="main">
    <div class="section">
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <h1><asp:Label ID="lb_sc_msg" runat="server"></asp:Label></h1></div>
  </div>
</div>
         <section class="generic-content">
        <div class="container">
     <div class="contact">
  <div class="main">
    <div class="section">
      <div class ="row">
        <div class="col-md-9 col-sm-9">
        
      <div class="genericColumn">
        <div class="group">
          <h1>CART ITEMS</h1>
          <div class="group" style="width:660px; margin-top:-27px;">
            <div class="article" style="margin:10px;">
                <asp:Literal ID="ltlwarning" runat="server"></asp:Literal>
            
        <asp:DataList id="ItemsList"
           GridLines="Both"
           RepeatColumns="1"
           RepeatDirection="Horizontal"
           CellPadding="10"
           OnEditCommand="Edit_Command"
           OnUpdateCommand="Update_Command"
           OnDeleteCommand="Delete_Command"
           OnCancelCommand="Cancel_Command"
           runat="server" Width="100%">

         <AlternatingItemStyle BackColor="Gainsboro">
         </AlternatingItemStyle>

         <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                Font-Strikeout="False" Font-Underline="False">
         </EditItemStyle>

         <ItemTemplate>
             <div style="margin:10px;">
                 <div style="width:150px;">
                     <asp:Image ID="im_project_image_tn" runat="server" Width="150" Height="150" ImageUrl='<%# "images/projects/" & Container.DataItem("P_ID") & ".jpg" %>' />
                 <asp:SlideShowExtender ID="SlideShowExtender1" runat="server" TargetControlID="im_project_image_tn"
                    SlideShowServiceMethod="GetSlides" AutoPlay="true" Loop="true"  UseContextKey='true' ContextKey='<%# Container.DataItem("P_ID") %>' >
                </asp:SlideShowExtender> 
                 </div>
                 
                <br />

                <%# DataBinder.Eval(Container.DataItem, "P_Name")%>

                <br />

                Amount:
                <%# "US$" & FormatNumber(DataBinder.Eval(Container.DataItem, "P_Amt"), 2)%>

                <asp:DropDownList ID="PriceTextBox" runat="server" AppendDataBoundItems="True" Visible="False"></asp:DropDownList>
                <br />

                <asp:LinkButton id="EditButton" 
                     Text="Edit" 
                     CommandName="Edit"
                     runat="server"/>
             </div>
             

         </ItemTemplate>

         <EditItemTemplate>

            <asp:Image ID="im_project_image_tn" runat="server" Width="100" Height="70" ImageUrl='<%# "images/projects/" & Container.DataItem("P_ID") & ".jpg" %>' />
            <asp:Label id="ItemLabel" 
                 Text='<%# DataBinder.Eval(Container.DataItem, "P_Name") %>' 
                 runat="server" />

            <br />

            <asp:TextBox id="QtyTextBox" 
                 Text='<%# DataBinder.Eval(Container.DataItem, "P_ID") %>' 
                 runat="server" Visible="False" />

            <br />

            Amount:
            <asp:TextBox id="PriceTextBox1" 
                 Text='<%# DataBinder.Eval(Container.DataItem, "P_Amt") %>' 
                 runat="server" Visible="False" />
            <asp:DropDownList ID="PriceTextBox" runat="server">
            </asp:DropDownList>
            <br />

            <asp:LinkButton id="UpdateButton" 
                 Text="Update" 
                 CommandName="Update" OnClientClick= "javascript:return confirm('Are you sure you want to Update this Item from your cart?');"
                 runat="server"/>

            <asp:LinkButton id="DeleteButton" 
                 Text="Delete" 
                 CommandName="Delete" 
                 runat="server" OnClientClick="javascript:return confirm('Are you sure you want to Remove this Item from your cart?');"/>

            <asp:LinkButton id="CancelButton" 
                 Text="Cancel" 
                 CommandName="Cancel" 
                 runat="server"/>

         </EditItemTemplate>

      </asp:DataList>
            <asp:HiddenField ID="cmd" runat="server" />
            <asp:HiddenField ID="business" runat="server" />
            <asp:HiddenField ID="currency_code" runat="server" />
            <asp:HiddenField ID="upload" runat="server" />
            <asp:HiddenField ID="button_subtype" runat="server" />
            <asp:HiddenField ID="no_shipping" runat="server" />
            <asp:HiddenField ID="return" runat="server" />
            <asp:HiddenField ID="cancel_return" runat="server" />
            <asp:HiddenField ID="rm" runat="server" />
            <asp:HiddenField ID="custom" runat="server" />
      <p>&nbsp;</p>
      &nbsp;&nbsp;<asp:Button ID="btn_continue" runat="server" Text="Donate Again" CssClass="button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="btn_paypal" runat="server" Text="Check Out with Paypal" 
                    CssClass="button" 
                    PostBackUrl="https://www.paypal.com/cgi-bin/webscr" />
                
        </div>
          </div>
        </div>
      </div>
        </div>
      <div class="col-md-3 col-sm-3">
      
      <div class="genericColumn">
        <div class="aside">
          <h1>
          THERE IS <br />
          TALK AND <br />
          THEN THERE <br />
          IS ACTION.<br />
          <strong>I SUPPORT ACTION.</strong>
          </h1>
          <%--<div class="share">
            <span>SIGN UP VIA</span>
            <asp:hyperlink ID="Hyperlink1" runat="server" NavigateUrl="https://www.facebook.com/dialog/oauth?client_id=150728681736405&redirect_uri=https://www.isupportjamaica.com/login.aspx&scope=email"><asp:image ID="Image1" runat="server" ImageUrl="~/Images/fecebook.jpg" Height="30" Width="30" ImageAlign="Right"></asp:image></asp:hyperlink>
          </div>--%>
        </div>
      </div>

      </div>
       </div>
      
      
      
    </div>
  </div> 
</div>

 

        </div>   
        </section>   

                     
			</div>
		</div>
	</div>




<asp:SqlDataSource ID="SQL_DS_DD_Value" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnISJ %>" 
        
        
        
        
        SelectCommand="SELECT DD_Value_ID, DD_Value FROM DD_Values_Master_File GROUP BY DD_Value_ID, DD_Value ORDER BY DD_Value_ID">
    </asp:SqlDataSource>
   
    
        
    <section class="social-icons">
        <div class="container">
          <div class="row">
            <ul id="icons">
              <li>
                <a href="http://www.facebook.com/ISupportJamaica">
                  <img src="images/fb.png" alt="Facebook" title="Like Us On Facebook" width="64" />
                </a>
              </li>
              <li>
                <a href="https://www.twitter.com/ISupportJamaica">
                  <img src="images/twitter.png" alt="Twitter" title="Follow Us On Twitter" width="64" />
                </a>
              </li>
              <li>
                <a href="http://instagram.com/isupportjamaica">
                  <img src="images/ig.png" alt="InstaGram" width="64" />
                </a>
              </li>
              <li>
                <a href="#">
                  <img src="images/google.png" alt="Google+" title="Circle Us On Google+" width="64" />
                </a>
              </li>
              <li>
                <a href="http://www.youtube.com/user/isupportjamaica">
                  <img src="images/youtube.png" alt="YouTube" title="Watch Us On YouTube" width="64" />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>

    <div class="floating-hand">
       <img src="images/new-hand.png" alt="" />
    </div>

    <section class="footer">
        <footer>
          <div class="container">
            <div class="col-md-2 sec-div">
              <div class="row">
                <a href="how.aspx">
                    <h3>HOW IT <br>WORKS</h3>
                </a>
              </div>
            </div>
            <div class="col-md-4 sec-div">
              <div class="row" style="margin-left:25px;">
                <div class="footer-nav">
                  <span>
                    <h5>Help</h5>
                    <ul>
                      <li><a href="about.aspx">About Us</a></li>
                      <li><a href="projects.aspx">Projects</a></li>
                      <li><a href="contact.aspx">Contact Us</a></li>
                      <li><a href="news.aspx">Blog</a></li>
					  <li><a href="terms_and_conditions.aspx">Terms and<br/>Conditions</a></li>
                    </ul>
                  </span>
                  <span>
                    <h5>Follow Us</h5>
                    <ul>
                      <li><a href="http://www.facebook.com/ISupportJamaica">Facebook</a></li>
                      <li><a href="https://www.twitter.com/ISupportJamaica">Twitter</a></li>
                      <li><a href="http://instagram.com/isupportjamaica">Instagram</a></li>
                      <li><a href="http://www.youtube.com/user/isupportjamaica">Youtube</a></li>
                      <li><a href="#">Google+</a></li>
                    </ul>
                  </span>
                  <span>
                    <h5>Explore</h5>
                    <ul>
                      <li><a href="https://www.isupportjamaica.com/project_details.aspx?pid=67">Technology &amp; Energy</a></li>
                      <li><a data-toggle="modal" data-target="#myModal">Business</a></li>
                      <li><a href="https://www.isupportjamaica.com/project_details.aspx?pid=74">Community</a></li>
                      <li><a href="https://www.isupportjamaica.com/project_details.aspx?pid=76">Education</a></li>
                    </ul>
                  </span>
                </div>
              </div>
            </div>
            <div class="col-md-3 sec-div">
              <div class="row" style="margin-left:20px;">
                <img src="images/paypal-logo2.png" style="margin-top:18px;">
              </div>
            </div>
            <div class="col-md-3">
              <div class="row">
                <a data-toggle="modal" data-target="#myModal" style="text-decoration:none;cursor:pointer;">
                    <h4>PARTNERS</h4>
                    <div class="sep-line"></div>
                    <h4>ANGEL INVESTORS</h4>
                </a>
              </div>
            </div>
          </div>
        </footer>
      </section>

    <section class="partners">
        <div class="container">
          <div class="row">
            <div class="partner-icons">
              <ul>
                <li>
                  <a href="http://www.jnsbl.com/">
                    <img src="images/jnsbl_logo.png" alt="JN Small Business" title="JN Small Business Loans" width="90" />
                  </a>
                </li>
                <li>
                  <a href="http://www.jnfoundation.com/content/home-page">
                    <img src="images/jnf.png" alt="JN Foundation" title="JN Foundation" width="50" />
                  </a>
                </li>
                <li>
                  <a href="https://www.jnbslive.com/">
                    <img src="images/jnLive.png" alt="JN Live" title="JN Live" width="50" />
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
              <p>
                  We're so excited to announce a new feature coming soon which will allow you to LEND to 
                  micro-enterprises in Jamaica. Let us notify you when we launch this exciting feature of 
                  ISupportJamaica by giving us your Email. <input type="email" name="email" placeholder="Enter your email..." />,
                  or if you would like to GIVE to a project, <a href="projects.aspx">click here.</a>
              </p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-warning">Submit</button>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Include scripts -->
    <script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="js/jquery.nivo.slider.pack.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>

     <script type="text/javascript">
         $(window).load(function () {
             $('#slider').nivoSlider({
                 effect: 'slideInLeft',      // Specify sets
                 slices: 15,                   // For slice animations
                 boxCols: 8,                  // For box animations
                 boxRows: 4,                  // For box animations
                 animSpeed: 1000,              // Slide transition speed
                 pauseTime: 3000,             // How long each slide will show
                 startSlide: 0,               // Set starting Slide (0 index)
                 directionNav: true,          // Next & Prev navigation
                 controlNav: false,           // 1,2,3... navigation
                 controlNavThumbs: false,     // Use thumbnails for Control Nav
                 pauseOnHover: true,          // Stop animation while hovering
                 manualAdvance: false,        // Force manual transitions
                 prevText: 'Prev',            // Prev directionNav text
                 nextText: 'Next',            // Next directionNav text
                 randomStart: false,          // Start on a random slide
             });
         });
     </script>
    </div>
    </form>
</body>
</html>

