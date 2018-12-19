<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="forgot.aspx.vb" Inherits="Dima.forgot" %>

<!doctype html>  
<html lang="en">
<head runat="server">

  <title>forgotten password</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />


<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

         <style>
      
    .resetSent {
                 
          color: #0ac2ff;
          font-family: Candara;
          text-align: center;
          border: 1px solid #FFFF00;
          -webkit-border-radius: 1em;
          border-radius: 1em;
          padding: 1.5em;
          margin: 4em 10em 0 3em; /* adjust to push away from "Send" */          
          display: block;
      }


  .notRegistered {

         color: #d72b2b;
         font-family: Candara;
         text-align: center;
         border: 1px solid #05C6FC;
         -webkit-border-radius: 1em;
         border-radius: 1em;
         padding: 1.5em;
         margin: 4em 10em 0 3em; /* adjust to push away from "Send" */         
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

            <img src="/Images/image-slider-1.jpg" width="450" height="450" alt="image1" />    
            <img src="/Images/image-slider-2.jpg" width="450" height="450" alt="image2" />
            <img src="/Images/image-slider-3.jpg" width="450" height="450" alt="image3" />
            <img src="/Images/image-slider-4.jpg" width="450" height="450" alt="iamge4" />
            <img src="/Images/image-slider-5.jpg" width="450" height="450" alt="iamge5" />
            <img src="/Images/image-slider-6.jpg" width="450" height="450" alt="image6" />
            <img src="/Images/image-slider-7.jpg" width="450" height="450" alt="image7" />
            <img src="/Images/image-slider-8.jpg" width="450" height="450" alt="image8" />
            <img src="/Images/image-slider-9.jpg" width="450" height="450" alt="image9" />
            <img src="/Images/image-slider-10.jpg" width="450" height="450" alt="image10" />

    </div>
       </div>
          </div>
             </div>
      

      <div id="content">
       <!-- <h1>Password reset</h1> -->

            <h1><img src="images/pwdReset.jpg" width="261" height="78" alt="Contact" /></h1>

 <form id="forgotPwd" runat="server">
                      
                    <div class="form_settings">                                  

                       <p style="color: #a6e6f4; font-family:'Segoe UI'; font-size:1.1em; text-align:center">Please enter your email</p><br />

                        <p><asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="strEmailTextBox" runat="server" ></asp:TextBox>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" ForeColor="#FF6666" CssClass="ValidationSummary1" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="RequiredFieldValidator1" ErrorMessage="Please complete the Email field" ControlToValidate="strEmailTextBox" Display="Dynamic" ForeColor="#FF6666"></asp:RequiredFieldValidator> 
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" Display="None" CssClass="ValidationSummary1" SetFocusOnError="True" ErrorMessage="Please enter a valid Email address" ControlToValidate="strEmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p>

                       <asp:Button ID="BtnForgot" runat="server" Text="Send" CssClass="submit" OnClick="BtnForgot_Click" />   

                      <!-- <asp:Label ID="Label1" runat="server" Text=""></asp:Label> -->
                       
                          <!-- close form_settings -->
                         
                        </div>  

                      <asp:Label ID="TextBox1" runat="server" CssClass="resetSent" Visible="false"></asp:Label>

                     <asp:Label ID="LabelNotRegistered" runat="server" CssClass="notRegistered" Visible="false"></asp:Label>   

       <!-- close form -->
                </form>
                     <!-- close content -->

                        </div>
                       </div>

     <footer>
            <p><a href="#">home</a> | <a href="portfolio.aspx">portfolio</a> | <a href="twitter.aspx">twitter</a> | <a href="contact.aspx">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>
  </div>
  <p>&nbsp;</p>
 

   </body>
</html>


