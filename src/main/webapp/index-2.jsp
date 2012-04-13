<%@page import="model.Order"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Saw it at the show</title>
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

</head>

<body>
     <%

    Object obj = session.getAttribute("Cuser");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    %>
<a name="top"></a>
<div id="wrapper_sec">
	<!-- Header -->
	<div id="masthead">
            <s:include value="header.jsp" />
        <div class="secnd_navi">
        	<ul class="links">
            	<li>welcome back <%= session.getAttribute("Cuser") %></li>
                <li><a href="accdash.action">My Account</a></li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li><a href="countindetail.action">My Cart</a></li>
                <li><a href="default.jsp">Checkout</a></li>
                <li class="last"><a href="logoutaction.action">Log Out</a></li>
               
            </ul>
            <ul class="search">
                	<li>
                    <input type="text" value="Search" id="searchBox" name="s" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" class="bar" size="20" /></li>
                    <li>
                    <input type="image" src="images/go.gif" class="go" width="13" height="11" /></li>
              	</ul>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Banner Section -->
	<div id="banner">
    	<div class="anythingSlider">
        
          <div class="wrapper">
            <ul>
               <li><div class="caption"><p>New Exhibition Events - 2011</p></div>
               <img src="create.action?PicId=1" alt="" width="932" height="330" /></li>
               <li><div class="caption"><p>New Exhibition Events - 2011</p></div>
               <img src="create.action?PicId=2" alt="" width="932" height="330" /></li>
               <li><div class="caption"><p>New Exhibition Events - 2011</p></div>
               <img src="create.action?PicId=3" alt="" width="932" height="330" /></li>
               <li><div class="caption"><p>New Exhibition Events - 2011</p></div>
               <img src="create.action?PicId=4" alt="" width="932" height="330" /></li>
               <li><div class="caption"><p>New Exhibition Events - 2011</p></div>
               <img src="create.action?PicId=5" alt="" width="932" height="330" /></li>
            </ul>        
          </div>
          
        </div>
    </div>
    <div class="clear"></div>
    <!-- Scrolling Products -->
    	<div id="prod_scroller">
        	<h3 class="colr">Latest Product</h3>
            <a href="#" class="prev">&nbsp;</a>
        	<div class="anyClass scrol">
                <ul>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod1.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod2.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod3.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod4.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod5.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod1.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod2.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                    <li>
                    	<a href="detail.jsp">
                        <img src="images/prod3.gif" alt="" width="154" height="152" /></a>
                        <h6 class="colr">Samsung Corbi</h6>
                        <p>View All: <a href="#" class="colr">Samsung Mobiles</a></p>
                    </li>
                </ul>
			</div>
            <a href="#" class="next">&nbsp;</a>
        </div>
    <div class="clear"></div>
    <!-- Advertise Section -->
    <div class="adv">
    	<ul>
        	<li><a href="#">
            <img src="images/adv1.gif" alt="" width="297" height="106" /></a></li>
            <li><a href="#">
            <img src="images/adv2.gif" alt="" width="297" height="106" /></a></li>
            <li class="last"><a href="#">
            <img src="images/adv3.gif" alt="" width="297" height="106" /></a></li>
        </ul>
    </div>
    <div class="clear"></div>
    <!-- Footer Section -->
    <s:include value="footer.jsp" />
</div>
</body>

</html>
