<%-- 
    Document   : contact1
    Created on : Nov 13, 2011, 1:26:29 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Estore 14</title>
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
<a name="top"></a>
<div id="wrapper_sec">
	<!-- Header -->
	<div id="masthead">
            <s:include value="header.jsp" />
        <div class="secnd_navi">
        	<ul class="links">
                  <%
              Object obj = session.getAttribute("Cuser");
                 if(obj==null)
                  {
              %>
              
            	<li>welcome to Zorrit!</li>
              <%  }else  {  %>
              	<li>welcome back <%= session.getAttribute("Cuser") %></li>
              <%  }  %>
                <li><a href="accdash.action">My Account</a></li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li><a href="countindetail.action">My Cart</a></li>
                <li><a href="default.jsp">Checkout</a></li>
                <%  if(obj==null)   {   %>
            	<li class="last"><a href="login.jsp">Log In</a></li>
              <% }else  {    %>
                <li class="last"><a href="logoutaction.action">Log Out</a></li>
              <%  }   %>
            </ul>
            <ul class="search">
                	<li><input type="text" value="Search" id="searchBox" name="s" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" class="bar" /></li>
                    <li><input type="image" src="images/go.gif" class="go" /></li>
              	</ul>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Content Section -->
	<div id="content_sec">
    	<!-- Column1 Section -->
    	<div class="col1">
        	    
                <!-- My Cart Products -->
                <div class="mycart">
                    <div class="small_heading">
                        <h5 class="colr">My Cart</h5>
                        <div class="clear"></div>
                        <span class="veiwitems">(3) Items - <a href="cart.jsp" class="colr">View Cart</a></span>
                    </div>
                    <ul>
                        <s:iterator value="%{#session.clist}">
                            <li>
                                <p class="bold title">
                                    <a href="detail.jsp"><s:property value="%{getProduct().getName()}" /></a>
                                </p>
                                <div class="grey">
                                    <p class="left">QTY: <span class="bold"><s:property value="%{qn}" /></span></p>
                                    <p class="right">Price: <span class="bold"><s:property value="%{price}" /></span></p>
                                </div>
                            </li>
                        </s:iterator>
                    </ul>
                    <a href="#" class="simplebtn"><span>Checkout</span></a>
                </div>
              
        </div>
        <!-- Column2 Section -->
        <div class="col2">
        	<div class="contact">
            	<h3 class="heading">Get in Touch</h3>
                <div class="mapsec">
                	<h6>Schdule a visit</h6>
                    <p>
                    	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, 
                    </p>
                    <div class="clear"></div>
                    <br />
                    <p>
                    	<span class="bold">P:</span> 123-040-536<br />
                        <span class="bold">C:</span> 123-040-536<br />
                        <span class="bold">E:</span> info@website.com<br />
                    </p>
                    <div class="map">
                    	<iframe width="400" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=london&amp;ie=UTF8&amp;hq=&amp;hnear=London,+United+Kingdom&amp;t=h&amp;z=14&amp;ll=51.500152,-0.126236&amp;output=embed"></iframe><br /><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=london&amp;ie=UTF8&amp;hq=&amp;hnear=London,+United+Kingdom&amp;t=h&amp;z=14&amp;ll=51.500152,-0.126236" class="enlarg">VIEW MAP</a><div class="clear"></div>
                    </div>
                </div>
                <div class="contact_form">
                	<h6>Send us a Message</h6>
                    <ul>
                    	<li>
                        	<input type="text" value="Name" name="contactname" id="contactname" onblur="if(this.value == '') { this.value = 'Name'; }" onfocus="if(this.value == 'Name') { this.value = ''; }" class="bar required" />
                        </li>
                        <li>    
                            <input type="text" value="Email Adress" name="email" id="email" onblur="if(this.value == '') { this.value = 'Email Adress'; }" onfocus="if(this.value == 'Email Adress') { this.value = ''; }" class="bar required email" />
                        </li>
                        <li>
                            <input type="text" value="Subject" name="subject" onblur="if(this.value == '') { this.value = 'Subject'; }" onfocus="if(this.value == 'Subject') { this.value = ''; }" id="subject" class="required bar" />
                        </li>
                        <li>
                            <textarea id="message" name="message" onblur="if(this.value == '') { this.value = 'Message'; }" onfocus="if(this.value == 'Message') { this.value = ''; }" cols="50" rows="5" class="required"></textarea>
                        </li>
                        <li>
                            <a href="#" class="simplebtn">Submit</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!-- Footer Section -->
    <s:include value="footer.jsp" />
</div>
</body>

<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
</html>

