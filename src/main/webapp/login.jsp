<%-- 
    Document   : login
    Created on : Nov 13, 2011, 1:54:01 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="/struts-tags" prefix="s"%>
<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Saw it at the Show</title>
<!-- // Stylesheets // -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/default.advanced.css" type="text/css" />
<link rel="stylesheet" href="css/contentslider.css" type="text/css"  />
<link rel="stylesheet" href="css/jquery.fancybox-1.3.1.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/zoomer.css" type="text/css" />
<!-- // Javascript // -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.2.js"></script>
<script type="text/javascript" src="js/jquery.anythingslider.js"></script>
<script type="text/javascript" src="js/anything.js"></script>
<script type="text/javascript" src="js/scroll.js"></script>
<script type="text/javascript" src="js/Trebuchet_MS_400-Trebuchet_MS_700-Trebuchet_MS_italic_700-Trebuchet_MS_italic_400.font.js"></script>
<script type="text/javascript" src="js/contentslider.js"></script>
<script type="text/javascript" src="js/lightbox.js"></script>

<script type="text/javascript" src="js/jquery.dropdown.js"></script>

<script type="text/javascript" src="js/sliderman.1.3.6.js"></script>
	<link rel="stylesheet" type="text/css" href="css/sliderman.css" />
    

    <style type="text/css">
body {
	font: Arial, Helvetica, sans-serif normal 10px;
	margin: 0; padding: 0;
}
* {margin: 0; padding: 0;}
#page{
		margin:0 auto;
		position:relative;
		width:900px;
		font-family:verdana;
		font-size:12px;
	}
	#content{
		width:100%;
	}
pre{
	border:3px solid #ccc;
	padding:5px;
	font-size:12px;
	font-family:arial;
	}
	.bold{font-weight:bold;}
	.blue{color:blue;}
	.red{color:red;}
</style> 
</head>

<body>
<a name="top"></a>
<div id="wrapper_sec">
	<!-- Header -->
	<div id="masthead">
            <s:include value="headernew.jsp" />        
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Content Section -->
	<div id="content_sec">
    	<h3 class="heading colr">Log In</h3>
    	<div class="login">
            <s:actionmessage theme="jquery" />
            <s:actionerror theme="jquery" />
                	<div class="registrd">
                        <s:form action="loginAct" method="post">    
                    	<h3>Please Sign In</h3>
                        <p>If you have an account with us, please log in.</p>
                        <table><tr> <td>
                         <s:textfield cssClass="bar" name="emal" label="Email Address" required="true" />
                         </td></tr><tr><td>
                        <s:password cssClass="bar" name="sword" label="Password" required="true" />
                          </td></tr><tr><td>
                        <s:submit value=" Login " cssClass="simplebtn" />
                          </td></tr><tr><td>
                        <s:a href="#" class="forgot">Forgot Your Password?</s:a>
                          </td></tr></table>
                   </s:form>
                        </div>
            
                    <div class="newcus">
                    	<h3>Sign Up</h3>
                        <p>
                        	By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.
                        </p>
                        <a href="newcustomer.jsp" class="simplebtn">Register</a>
                    </div>
                </div>
    </div>
    <div class="clear"></div>
    <!-- Scroolling Products -->
    	 <div>
     <img id="logo" src="images/header.gif"></img>
    </div>
    	<div id="page">
	<center>
	 
	</center>
	<br />
   
		<div id="content">
		
		<div class="container">
		
			<ul class="thumb">
				<li><a href="#"><img src="images/prod1.gif" alt="Robots like cameras" /></a></li>
				<li><a href="#"><img src="images/prod2.gif" alt="Monsters!" /></a></li>
				<li><a href="#"><img src="images/prod3.gif" alt="Santa down under" /></a></li>
				<li><a href="#"><img src="images/prod4.gif" alt="Sponguebob!" /></a></li>
				<li><a href="#"><img src="images/prod5.gif" alt="Star Wars" /></a></li>
                <li><a href="#"><img src="images/prod1.gif" alt="Robots like cameras" /></a></li>
				<li><a href="#"><img src="images/prod2.gif" alt="Monsters!" /></a></li>
			</ul>		 
		</div>
        </div>
        		
	</div>
    <br />
    
    <div>
     <img src="images/footerfinal.gif" />
    </div>
    <script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/zoomer.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
 	$('ul.thumb li').Zoomer({speedView:200,speedRemove:400,altAnim:true,speedTitle:400,debug:false});
});
</script>
    <div class="clear"></div>
    <!-- Footer Section -->
    <s:include value="footer.jsp" />
</div>
</body>

<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
</html>

