<%-- 
    Document   : index
    Created on : Nov 13, 2011, 1:35:30 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@taglib uri="/struts-tags" prefix="s"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Saw it at the Show</title>
<!-- // Stylesheets // -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/default.advanced.css" type="text/css" />
<link rel="stylesheet" href="css/contentslider.css" type="text/css"  />
<link rel="stylesheet" href="css/jquery.fancybox-1.3.1.css" type="text/css" media="screen" />
<!-- // Javascript // -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.min14.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.2.js"></script>
<script type="text/javascript" src="js/jquery.anythingslider.js"></script>
<script type="text/javascript" src="js/anything.js"></script>
<script type="text/javascript" src="js/jcarousellite_1.0.1.js"></script>
<script type="text/javascript" src="js/scroll.js"></script>
<script type="text/javascript" src="js/ddaccordion.js"></script>
<script type="text/javascript" src="js/acordn.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/Trebuchet_MS_400-Trebuchet_MS_700-Trebuchet_MS_italic_700-Trebuchet_MS_italic_400.font.js"></script>
<script type="text/javascript" src="js/cufon.js"></script>
<script type="text/javascript" src="js/contentslider.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-1.3.1.js"></script>
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
<link rel="stylesheet" type="text/css" href="css/zoomer.css" media="screen" />
</head>

<body>
<a name="top"></a>
<div id="wrapper_sec">
<div id="masthead">
    	<s:include value="headernew.jsp" />
        
	<!-- Header -->
        <div class="clear"></div>
</div>
    <div class="clear"></div>
    <!-- Banner Section -->
	<div id="banner">
    	<div id="examples_outer">
			
			<div id="slider_container_2">

				<div id="SliderName_2" class="SliderName_2">
					<img src="create.action?PicId=1" width="960" height="300" alt="Demo2 first" title="Demo2 first" usemap="#img1map" />
					<map name="img1map">
						<area href="#img1map-area1" shape="rect" coords="100,100,200,200" />
						<area href="#img1map-area2" shape="rect" coords="300,100,400,200" />
					</map>
					<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
					<img src="create.action?PicId=2" width="960" height="300" alt="Demo2 second" title="Demo2 second" />
					<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
					<img src="create.action?PicId=3"  width="960" height="300" alt="Demo2 third" title="Demo2 third" />
					<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
					<img src="create.action?PicId=4" width="960" height="300" alt="Demo2 fourth" title="Demo2 fourth" />
					<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
                                        
				</div>
				<div class="c"></div>
				<div id="SliderNameNavigation_2"></div>
				<div class="c"></div>

				<script type="text/javascript">
					effectsDemo2 = 'rain,stairs,fade';
					var demoSlider_2 = Sliderman.slider({container: 'SliderName_2', width: 960, height: 300, effects: effectsDemo2,
						display: {
							autoplay: 3000,
							loading: {background: '#000000', opacity: 0.5, image: 'img/loading.gif'}						
						}
					});
				</script>

				<div class="c"></div>
			</div>
			<div class="c"></div>
		</div>

		<div class="c"></div>
	</div>
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
    <!-- Advertise Section -->
        <div class="clear"></div>
    <!-- Footer Section -->
    <s:include value="footer.jsp" />
</div>
</body>

</html>