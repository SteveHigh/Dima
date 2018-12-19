<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="thankyou.aspx.vb" Inherits="Dima.thankyou" %>

<!doctype html>  
<html lang="en">
<head runat="server">

  <title>Thank you!</title>
 <meta name="description" content="website description" />
 <meta name="keywords" content="website keywords, website keywords" />
 <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

      <style>

  #textPosition1
{
	border:1px solid #05C6FC;
	color:#fff;
	font:16px;
	margin-left:auto;
	margin-right:auto;
	margin-top:80px;
	padding:10px;
	text-align:center;
	width:80%;
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
      
          <div id="content">

          <!-- <h1>Thank you!</h1> -->

                  <h1><img src="images/thankYou.jpg" width="194" height="94" alt="Contact" /></h1>

       <div id="textPosition1">
 
           <asp:Label ID="your_name" runat="server"></asp:Label> 
                 
 , thank you for your message.<br />
 I will get back to you ASAP!</div> 
              
</div>
        </div>

        <footer>
            <p><a href="index.aspx">home</a> | <a href="portfolio.aspx">portfolio</a> | <a href="twitter.aspx">twitter</a> | <a href="contact.aspx">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>
 
          </div>
</body>
</html>