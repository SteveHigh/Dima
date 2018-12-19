<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="userpage_mgebhard.aspx.vb" Inherits="Dima.userpage_mgebhard" %>

<!doctype html>  
<html lang="en">
<head runat="server">

  <title>User page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="css/style.css" rel="stylesheet" />

    <script src="http://modernizr.com/downloads/modernizr-latest.js"></script>

    <style>

 .welcome
{
	color:#05C6FC;
   	font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	font-size:1em;
   	margin-left:110px;
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
	/*margin:28px 10px 0 -90px;*/
    margin-right:10px;
    margin-top:10px;
   	padding:4px 0;
	text-shadow:1px 1px #000;
	width:90px;
}

.FileUpload
{
	margin-left:120px;
	/*margin-top:-20px;*/
    margin-top:20px;
    color:#e2799b;
	font-family:'Segoe UI','trebuchet ms', 'News Cycle', Helvetica;
	font-size:14px;
}

.FileResult 
{
   color:#ffffff;
   font-size:14px;
   border: 1px solid;
   border-color:#05C6FC;
   position:absolute;
   left: 790px;
   top: 450px;
   padding:15px;
   
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

          <!-- class="logo_colour", change text colour -->

         <h1><a href="#">Dima <span class="logo_colour">Dayoub</span></a></h1>

          </div>
      
      </div>
     
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
          <ul class="images">
            <li class="show"><img width="450" height="450" src="images/1.jpg" alt="photo_one" /></li>
           <li><img width="450" height="450" src="images/2.jpg" alt="photo_two" /></li>
            <li><img width="450" height="450" src="images/3.jpg" alt="photo_three" /></li>
            <li><img width="450" height="450" src="images/4.jpg" alt="photo_four" /></li>
            <li><img width="450" height="450" src="images/5.jpg" alt="photo_five" /></li>
            <li><img width="450" height="450" src="images/6.jpg" alt="photo_six" /></li>
            <li><img width="450" height="450" src="images/7.jpg" alt="photo_seven" /></li>
            <li><img width="450" height="450" src="images/8.jpg" alt="photo_eight" /></li>
            <li><img width="450" height="450" src="images/9.jpg" alt="photo_nine" /></li>
            <li><img width="450" height="450" src="images/10.jpg" alt="photo_ten" /></li>
          </ul>
        </div>
      </div>     
           
   <form id="form1" runat="server">    

           <div>

                 <asp:Label ID="Message" runat="server" Text=""></asp:Label>
    </div>


         <asp:Label ID="Label1" runat="server" CssClass="upload"></asp:Label>    

         <asp:Label ID="Label2" runat="server" CssClass="welcome"></asp:Label>
              
         <asp:Label ID="Label3" runat="server" Text="" CssClass="error"></asp:Label><br />

         <asp:Label ID="Label4" runat="server" Text="" CssClass="noPath"></asp:Label><br />

         <asp:Label ID="Label5" runat="server" CssClass="FileResult" Visible="false"></asp:Label><br />

         <asp:FileUpload runat="server" ID="MyFileUpload" CssClass="FileUpload"/><br />

         <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="uploadBtn" onClick="btnUpload_Click" /><br /><br />

        <asp:Button ID="btnLogout" runat="server" Text="Log out" CssClass="btnLogout" onclick="btnLogout_Click" />

   </form>
       
       </div>
           
              </div>

    <footer>
           
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>

  <p>&nbsp;</p>

  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

     <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.0.min.js"></script> -->

  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js/image_fade.js"></script>
  <script type="text/javascript">
      $(document).ready(function () {
          $('ul.sf-menu').sooperfish();
      });
  </script>

   </body>
</html>


     
    