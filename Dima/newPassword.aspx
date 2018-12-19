<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newPassword.aspx.vb" Inherits="Dima.newPassword" %>

<html lang="en">
<head runat="server">

  <title>reset password</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

      <style>

        .status 
        {
            color:#ffffff;
            font-family:'Segoe UI', Tahoma, Candara, sans-serif;
            font-size:16px;
            border: 2px solid #05C6FC;
            border-radius:15px;
            -moz-border-radius:15px;
            -webkit-border-radius:15px;
            position:absolute;
            /*left: 700px;*/
            left: 715px;
            top: 430px;
            padding:15px;
            width: 350px;
            height: 90px;
        }

        .expired 
        {
            /*color:#ffffff;*/
            color:red;
            font-family:'Segoe UI', Tahoma, Candara, sans-serif;
            font-size:16px;
            border: 2px solid #05C6FC;
            border-radius:15px;
            -moz-border-radius:15px;
            -webkit-border-radius:15px;
            position:absolute;
            /*left: 700px;*/
            left: 715px;
            /*top: 430px;*/
            top: 480px;
            padding:15px;
            /*width: 350px;*/
            width: 300px;
            /*height: 90px;*/
            height: 50px;     
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
        <!-- <h1>Password reset</h1> -->

               <h1><img src="images/pwdReset1.jpg" width="258" height="77" alt="Contact" /></h1>

                <form id="resetPWD" runat="server">
                      
                    <div class="form_settings">                                  

                       <p style="color: #a6e6f4; font-family:'Segoe UI'; font-size:1.1em; text-align:center">Reset your password</p>

                        <p><asp:Label ID="newPass" runat="server" Text="New password"></asp:Label>
                        <asp:TextBox ID="newPass1" runat="server"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" controlToValidate="newPass1" ForeColor="#FF6666" SetFocusOnError="True" ErrorMessage="Please complete the password field"></asp:RequiredFieldValidator>

                        <p><asp:Label ID="cfm_newPass" runat="server" Text="Confirm new password"></asp:Label>
                        <asp:TextBox id="cfm_newPass1" cols="50" rows="5" runat="server"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" controlToValidate="cfm_newPass1" ForeColor="#FF6666" SetFocusOnError="True" ErrorMessage="Please confirm your password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ControlToCompare="newPass1" ControlToValidate="cfm_newPass1" Display="Dynamic" ErrorMessage="The passwords do not match" />     
                        
                        <asp:Button ID="resetBtn" runat="server" Text="Send" CssClass="submit" OnClick="resetBtn_Click" />
                        
                       <!-- close form_settings -->
                         
                        </div>

                    <!-- close form -->

                    <asp:TextBox ID="txtNewPwd" runat="server" style="display:none"></asp:TextBox>

                    <asp:TextBox ID="txtConfirmPwd" runat="server" style="display:none"></asp:TextBox>
                
                </form>
                          <!-- close content -->

                     </div>

         <asp:Label ID="lblStatus" runat="server" CssClass="status" Visible="false"></asp:Label><br />

         <asp:Label ID="lblExpired" runat="server" CssClass="expired" Visible="false"></asp:Label>

      </div>

        <footer>
            <p><a href="#">home</a> | <a href="portfolio.aspx">portfolio</a> | <a href="twitter.aspx">twitter</a> | <a href="contact.aspx">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>
  </div>
  <p>&nbsp;</p>
 
   </body>
</html>