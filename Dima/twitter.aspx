<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="twitter.aspx.vb" Inherits="Dima.twitter" %>

!doctype html>  
<html lang="en">
<head runat="server">

  <title>twitter</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

    <style>

  #content, #feed-content {
    text-align: left;
    width: 440px;
    margin: 0;
    float: right;
    /*padding: 0 20px 20px; /*top padding = 0; right and left padding = 20; bottom padding = 20*/
    padding: 0 50px 20px 0; 
 }
#feed-content {
    padding: 0 50px 20px 0; /* adust value to suit */
 }

    </style>

       </head>
<body>

    <!-- date -->

    <asp:Label ID="LblDate" runat="server" CssClass="labelStyle" Text="Label"></asp:Label>

    <!-- end date -->

   <div id="main">
   <header>
    <div id="logo">
        <div id="logo_text">
              <p style="float: left;"><img src="images/dimaHeader1.jpg" alt="Header" /></p>

           <h2 class="specialh2"><a href="register.aspx">Register</a> | <a href="logon.aspx">Log-in</a></h2>
        
        </div>
      <!-- <p style="float: right; padding-top: 75px;"><img src="images/twitter32.png" alt="twitter" />&nbsp;<img src="images/facebook32.png" alt="facebook" />&nbsp;<img src="images/Google32.png" alt="google" /></p> -->
      </div>

        <nav>
        <ul class="sf-menu" id="nav">
          <li class="selected"><a href="index.aspx">Home</a></li>
          <li><a href="portfolio.aspx">Portfolio</a></li>
          <li><a href="twitter.aspx">Twitter</a></li>
          <li><a href="contact.aspx">Contact</a></li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">        
          <div class="gallery">
          
 <div id="sliderFrame">
        <div id="slider">

            <img src="/Images/image-slider-1.jpg" width="450" height="450" alt="" />    
            <img src="/Images/image-slider-2.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-3.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-4.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-5.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-6.jpg" width="450" height="450" alt="" />      
            <img src="/Images/image-slider-7.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-8.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-9.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-10.jpg" width="450" height="450" alt="" />

    </div>
       </div>

          </div>
          
             </div>
      
     <div id="feed-content">

  <!-- <h1>Twitter</h1> -->

   <h1><img src="images/twitter.jpg" width="129" height="66" alt="Twitter" /></h1>

  <p>

 <a class="twitter-timeline" data-lang="en" data-width="420" data-height="850" data-theme="dark" href="https://twitter.com/higheredrev?ref_src=twsrc%5Etfw">Tweets by higheredrev</a>

       <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 
   
  </p>

     </div>
 </div>

     <footer>
            <p><a href="index.aspx">home</a> | <a href="portfolio.aspx">portfolio</a> | <a href="#">twitter</a> | <a href="contact.aspx">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>

    <p>&nbsp;</p>
 
  </body>
</html>