<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="mgebhardLogin.aspx.vb" Inherits="Dima.mgebhardLogin" %>

<!doctype html>  
<html lang="en">
<head runat="server">

  <title>logon</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
   
  <link href="../css/style.css" rel="stylesheet" />
   
  <script src="http://modernizr.com/downloads/modernizr-latest.js"></script>

<style>

    p.forgot {
    color: #ffffff;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 12px;
    padding-top:15px;
    }

    p.forgot a:link {text-decoration: none; color: #ffffff}
    p.forgot a:visited { text-decoration: none; color:#ffffff; }
    p.forgot a:hover { text-decoration: underline; color:#ffffff; }
    p.forgot a:focus { text-decoration: none; color:#ffffff; }

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
          <!-- class="logo_colour" to change text colour -->
         <h1><a href="#">Dima <span class="logo_colour">Dayoub</span></a></h1>

             <h2 class="specialh2"><a href="register.aspx">Register</a></h2>

             </div>
        <p style="float: right; padding-top: 65px;"><img src="/Images/twitter32.png" alt="twitter" />&nbsp;<img src="/Images/facebook32.png" alt="facebook" />&nbsp;<img src="/Images/Google32.png" alt="google" /></p>
      </div>
      <nav>
       <ul class="sf-menu" id="nav">
          <li class="selected"><a href="../index.aspx">Home</a></li>
          <li><a href="../portfolio.aspx">Portfolio</a></li>
          <li><a href="../blog.aspx">Blog</a></li>
          <li><a href="../contact.aspx">Contact</a></li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
          <ul class="images">
           <li class="show"><img width="450" height="450" src="../Images/1.jpg" alt="photo_one" /></li>
            <li><img width="450" height="450" src="../Images/2.jpg" alt="photo_two" /></li>
            <li><img width="450" height="450" src="../Images/3.jpg" alt="photo_three" /></li>
            <li><img width="450" height="450" src="../Images/4.jpg" alt="photo_four" /></li>
            <li><img width="450" height="450" src="../Images/5.jpg" alt="photo_five" /></li>
            <li><img width="450" height="450" src="../Images/6.jpg" alt="photo_six" /></li>
            <li><img width="450" height="450" src="../Images/7.jpg" alt="photo_seven" /></li>
            <li><img width="450" height="450" src="../Images/8.jpg" alt="photo_eight" /></li>
            <li><img width="450" height="450" src="../Images/9.jpg" alt="photo_nine" /></li>
            <li><img width="450" height="450" src="../Images/10.jpg" alt="photo_ten" /></li>
          </ul>
        </div>
      </div>
      <div id="content">
        <h1>Log-in</h1>

                <form id="logon" runat="server">
                      
                    <div class="form_settings">                                  

                       <p style="color: #a6e6f4; font-family:'Segoe UI'; font-size:1.1em; text-align:center">Log in to your account</p>

                        <p><asp:Label ID="Reg_strEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="strEmailTextBox" runat="server"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" controlToValidate="strEmailTextBox" ForeColor="#FF6666" ErrorMessage="Please enter a valid email"></asp:RequiredFieldValidator>

                        <p><asp:Label ID="Reg_password" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" controlToValidate="passwordTextBox" ForeColor="#FF6666" ErrorMessage="Please complete the Password field"></asp:RequiredFieldValidator>
                       
                        <asp:Button ID="LogonBtn" runat="server" Text="Log in" CssClass="submit" OnClick="LogonBtn_Click" />

                  <!-- close form_settings -->
                         
                        </div>

                      <p class="forgot"><a href="../forgot.aspx">Forgotten password?</a></p>

                 <!-- close form -->
                </form>

                          <!-- close content -->

                     </div>

               </div>

       <footer>
            <p><a href="../index.aspx">home</a> | <a href="../portfolio.aspx">portfolio</a> | <a href="../blog.aspx">blog</a> | <a href="../contact.aspx">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>
  </div>
  <p>&nbsp;</p>
 
   </body>
</html>
