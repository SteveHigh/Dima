<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="logon.aspx.vb" Inherits="Dima.logon" %>

<!doctype html>  
<html lang="en">
<head runat="server">

  <title>logon</title>
 <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

<style>

    p.forgot {
     color: #ffffff;
     font-family: 'Segoe UI', Tahoma, Verdana, sans-serif;
     font-size: 12px;
     padding-top: 15px;
 }
 p.forgot a:link {
     text-decoration: none;
     color: #ffffff
 }
 p.forgot a:visited {
     text-decoration: none;
     color: #ffffff;
 }
 p.forgot a:hover {
     text-decoration: underline;
     color: #ffffff;
 }
 p.forgot a:focus {
     text-decoration: none;
     color: #ffffff;
 }
 .LogonError {
     color: #d72b2b;
     font-family: Candara, 'Segoe UI', Tahoma, Verdana, sans-serif;;
     text-align: center;
     font-size: 14px;
     border: 1px solid #05C6FC;
     border-radius: 15px;
     -moz-border-radius: 15px;
     -webkit-border-radius: 15px;
     position: relative;
     left: 50px;
     top: 60px;
     padding: 10px;
     width: 300px;
     height: 20px;
     display: block;
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
                 
        <!-- <h1>Log-in</h1> -->

             <h1><img src="images/log_in.jpg" width="115" height="87" alt="Contact" /></h1>

                <form id="logon" runat="server">
                      
                    <div class="form_settings">                                  

                       <p style="color: #a6e6f4; font-family:'Segoe UI'; font-size:1.1em; text-align:center">Log in to your account</p>

                        <p><asp:Label ID="Reg_strEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="strEmailTextBox" runat="server"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" controlToValidate="strEmailTextBox"  ForeColor="#FF6666" ErrorMessage="Please enter a valid email"></asp:RequiredFieldValidator>

                       
                        <p><asp:Label ID="Reg_password" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" controlToValidate="passwordTextBox" ForeColor="#FF6666" ErrorMessage="Please complete the Password field"></asp:RequiredFieldValidator>
                             
                        <asp:Button ID="LogonBtn" runat="server" Text="Log in" CssClass="submit" OnClick="LogonBtn_Click" />

                        <!-- <asp:Label ID="Label1" runat="server" CssClass="LogonError"></asp:Label> ->

                        <!-- close form_settings -->
                         
                        </div>

                      <p class="forgot"><a href="../forgot.aspx">Forgotten password?</a></p>

                    <asp:Label ID="LabelError" runat="server" CssClass="LogonError" Visible="false"></asp:Label>
                    
                 <!-- close form -->

                </form>

                          <!-- close content -->

                     </div>

               </div>

       <footer>
            <p><a href="index.aspx">home</a> | <a href="portfolio.aspx">portfolio</a> | <a href="twitter.aspx">twitter</a> | <a href="contact.aspx">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>
 
  <p>&nbsp;</p>

     </div>
 
   </body>
</html>