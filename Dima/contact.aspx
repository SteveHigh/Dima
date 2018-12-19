<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contact.aspx.vb" Inherits="Dima.Contact" %>

<!doctype html>  
<html lang="en">
<head runat="server">

  <title>contact</title>

<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

<style>

  .ValidationSummary1
{
	color:#F66!important;
}

.RequiredFieldValidator2
{
	color:#F66;
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
          <li class="selected"><a href="contact.aspx">Contact</a></li>
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

          <!-- <h1>Get in touch!</h1> -->

              <h1><img src="images/getTouch.jpg" width="216" height="70" alt="Contact" /></h1>

                   <form id="contact" runat="server">
                      
                    <div class="form_settings">
                                  

                       <p style="color: #a6e6f4; font-family:'Segoe UI'; font-size:1.1em; text-align:center">Please enter your name, email, and message.</p>

                        <!-- Name field -->
                        
                        <p><asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="user_name" runat="server"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server" controlToValidate="user_name" ForeColor="#FF6666" ErrorMessage="Please complete the Name field"></asp:RequiredFieldValidator>

                        <!-- Close Name field -->                 
                        
                        <p><asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="user_email" runat="server" ></asp:TextBox>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" ForeColor="#FF6666" CssClass="ValidationSummary1" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="RequiredFieldValidator2" ErrorMessage="Please complete the Email field" ControlToValidate="user_email" Display="None" ForeColor="#FF6666"></asp:RequiredFieldValidator> 
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="None" CssClass="ValidationSummary1" ErrorMessage="Please enter a valid Email address" ControlToValidate="user_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p>

                        <!-- Message field -->
                              
                       <p><asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
                        <textarea id="user_message" cols="50" rows="5" runat="server"></textarea></p><br />
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator3" runat="server" controlToValidate="user_message" ForeColor="#FF6666" ErrorMessage="Please complete the message field"></asp:RequiredFieldValidator>
                       
                        <!-- Close Message field-->

                        <input style="display:none;" type="text" name="robots" value="" />

                        <!-- Send button -->

                        <asp:Button ID="contact_submitted" runat="server" CssClass="submit" name="contact_submitted" type="submit" Text="Send" CausesValidation="true" OnClick="contact_submitted_Click" />

                        <!-- Close Send button -->

                                  
<!-- <input type="submit" name="contact_submitted" value="Send" onclick="javascript: WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(contact_submitted, true, false, false));" id="contact_submitted" class="submit" /> -->
                        
                    </div>
                </form>
                     </div>
        </div>

            <footer>
            <p><a href="index.aspx">home</a> | <a href="portfolio.aspx">portfolio</a> | <a href="twitter.aspx">twitter</a> | <a href="#">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>

    </div>
 
</body>
</html>

