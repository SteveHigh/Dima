<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="userpage.aspx.vb" Inherits="Dima.userpage" %>

<!doctype html>  
<html lang="en">
<head runat="server">

  <title>User page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

     <style>

 .welcome
{
	color:#05C6FC;
   	font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	font-size:1em;
   	margin-left:140px;
    margin-top:30px;
    text-align:center;
    position:absolute;
}

.upload
{
	color:#fff;
	font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	font-size:1em;
	margin-left:160px;
    margin-top:70px;
 	text-align:center;
    position:absolute;
}

.error
{
	color:#e2799b;
	font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	font-size:1em;
	margin-left:160px;
    margin-top:10px;
    padding-bottom:20px;
	text-align:center;
    position: Absolute;
 }

.noPath
{
	color:#e2799b;
	font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	font-size:1em;
    margin-left:160px;	
    margin-top:-15px;
	/*padding-top:70px;*/
    padding-bottom:40px;
	text-align:center;
    position: Absolute;
}

.uploadBtn
{
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	background:#444;
	border:0;
	border-radius:6px;
	color:#fff;
	cursor:pointer;
	float:right;
	font:100% 'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	height:30px;
	line-height:15px;
	/*margin:30px 10px 0 0;*/
    margin-right:10px;
    margin-top:10px;
    padding:4px 0;
	text-shadow:1px 1px #000;
	width:90px;
}

.btnLogout
{
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	background:#444;
	border:0;
	border-radius:6px;
	color:#fff;
	cursor:pointer;
	float:right;
	font:100% 'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	height:30px;
	line-height:15px;
	margin-right:10px;
    margin-top:10px;
   	padding:4px 0;
	text-shadow:1px 1px #000;
	width:90px;
}

.FileUpload
{
	margin-left:120px;
    margin-top:20px;
    color:#e2799b;
	font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	font-size:14px;
}

.FileResult 
{
   color:#ffffff;
   font-size:14px;
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

.extension
{
  color:#e2799b;
  font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
  text-align:center;
  width:300px;
  margin-left:65px;
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
          <!-- class="logo_colour", allows you to change the colour of the text -->

         <!-- <h1><a href="#">Dima <span class="logo_colour">Dayoub</span></a></h1> -->

              <p style="float: left;"><img src="images/dimaHeader1.jpg" alt="Header" /></p>

           <h2 class="specialh2"><a href="register.aspx">Register</a> | <a href="logon.aspx">Log-in</a></h2>
        
        </div>
      <!-- <p style="float: right; padding-top: 75px;"><img src="images/twitter32.png" alt="twitter" />&nbsp;<img src="images/facebook32.png" alt="facebook" />&nbsp;<img src="images/Google32.png" alt="google" /></p> -->
      </div>
     
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
    
   <form id="form1" runat="server">    

           <div>

         <asp:Label ID="Label1" runat="server" CssClass="upload"></asp:Label>    

         <asp:Label ID="Label2" runat="server" CssClass="welcome"></asp:Label>
              
         <asp:Label ID="Label3" runat="server" Text="" CssClass="error"></asp:Label><br />

         <asp:Label ID="Label4" runat="server" Text="" CssClass="noPath"></asp:Label><br />

         <asp:Label ID="Label5" runat="server" CssClass="FileResult" Visible="false"></asp:Label><br />

         <asp:FileUpload runat="server" ID="MyFileUpload" CssClass="FileUpload"/><br />

         <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="uploadBtn" onClick="btnUpload_Click" /><br /><br />

        <asp:Button ID="btnLogout" runat="server" Text="Log out" CssClass="btnLogout" onclick="btnLogout_Click" />

   </div>

    </form>

      </div>

        </div>

    <footer>
           
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>

  <p>&nbsp;</p>

    </body>
</html>
