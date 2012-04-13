<%-- 
    Document   : detail1
    Created on : Nov 13, 2011, 1:27:55 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
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
                 if(obj==null)  {
              %>
            	<li>welcome to Zorrit!</li>
              <% }else   {   %>
              	<li>welcome back <%= session.getAttribute("Cuser") %></li>
              <%  }  %>
                <li><a href="accdash.action">My Account</a></li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li><a href="countindetail.action">My Cart</a></li>
                <%  if(obj==null) {  %>
            	<li class="last"><a href="login.jsp">Log In</a></li>
              <%  }else  {
              %>
            	<li><a href="default.jsp">Checkout</a></li> 
                <li class="last"><a href="logoutaction.action">Log Out</a></li>
              <%  }  %>
            
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
    <!-- Content Section -->
	<div id="content_sec">
    	<!-- Column1 Section -->
    	<div class="col1">
        	  
                <!-- My Cart Products -->
                <div class="mycart">
                    <div class="small_heading">
                        <h5 class="colr">My Cart</h5>
                        <div class="clear"></div>
                        <span class="veiwitems">(<s:property value="itemcount" />) Items - <a href="countindetail.action" class="colr">View Cart</a></span>
                    </div>
                    <ul>
                       
                        <s:iterator value="checknmlist">
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
                    <a href="countindetail.action" class="simplebtn"><span>Checkout</span></a>
                </div>
               
        </div>
        <!-- Column2 Section -->
        <div class="col2">
        	<h4 class="heading colr"><s:property value="%{proname}"/></h4>
            <!-- Product Detail -->
            <div class="prod_detail">
            	<div class="big_thumb">
                	<div id="slider2">
                        <div class="contentdiv">
                             <img src="pdtimg.action?productid=<s:property value="%{proid}"/>" onerror="this.src='images/detail_img1.gif';" width="238" height="311" />
                            <a rel="example_group" href="images/watch.jpg" title="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." class="zoom">&nbsp;</a>
                      </div>
                        <div class="contentdiv">
                            <img src="pdtimg.action?productid=<s:property value="%{proid}"/>" onerror="this.src='images/detail_img1.gif';" width="238" height="311" />
                            <a rel="example_group" href="images/watch.jpg" title="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." class="zoom">&nbsp;</a>
                        </div>
                        <div class="contentdiv">
                            <img src="pdtimg.action?productid=<s:property value="%{proid}"/>" onerror="this.src='images/detail_img1.gif';" width="238" height="311" />
                            <a rel="example_group" href="images/watch.jpg" title="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." class="zoom">&nbsp;</a>
                        </div>
                         <div class="contentdiv">
                            <img src="pdtimg.action?productid=<s:property value="%{proid}"/>" onerror="this.src='images/detail_img1.gif';" width="238" height="311" />
                            <a rel="example_group" href="images/watch.jpg" title="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." class="zoom">&nbsp;</a>
                        </div>
                                                
                    </div>
                    <a href="javascript:void(null)" class="prev">
                    <img src="images/prev.gif" alt="" width="8" height="14" /></a>
                    <div style="float:left; width:189px !important; overflow:hidden;">
                    <div class="anyClass" id="paginate-slider2">
                        <ul>
                            <li><a href="#" class="toc">
                            <img src="images/detail_img1_small.gif" alt="" width="55" height="55" /></a></li>
                            <li><a href="#" class="toc">
                            <img src="images/detail_img2_small.gif" alt="" width="55" height="55" /></a></li>
                            <li><a href="#" class="toc">
                            <img src="images/detail_img3_small.gif" alt="" width="55" height="55" /></a></li>
                            <li><a href="#" class="toc">
                            <img src="images/detail_img4_small.gif" alt="" width="55" height="55" /></a></li>
                            <li><a href="#" class="toc">
                            <img src="images/detail_img5_small.gif" alt="" width="55" height="55" /></a></li>
                            <li><a href="#" class="toc">
                            <img src="images/detail_img6_small.gif" alt="" width="55" height="55" /></a></li>
                        </ul>
                    </div>
                    </div>
                    <a href="javascript:void(null)" class="next">
                    <img src="images/next.gif" alt="" width="8" height="14" /></a>
                    <script type="text/javascript" src="js/cont_slidr.js"></script>
                </div>
                <div class="desc">
                	<a href="#" class="email">Email to a Friend</a>
                    <div class="clear"></div>
                    <div class="rating left">
                    	<ul>
                        	<li><a href="#">
                            <img src="images/star_brown.gif" alt="" width="12" height="12" /></a></li>
                            <li><a href="#">
                            <img src="images/star_brown.gif" alt="" width="12" height="12" /></a></li>
                            <li><a href="#">
                            <img src="images/star_brown.gif" alt="" width="12" height="12" /></a></li>
                            <li><a href="#">
                            <img src="images/star_brown.gif" alt="" width="12" height="12" /></a></li>
                            <li><a href="#">
                            <img src="images/star_drk_brown.gif" alt="" width="12" height="12" /></a></li>
                        </ul>
                    </div>
                    <ul class="reviews margn">
                    	<li><a href="#">3 Review(s)</a></li>
                        <li class="last"><a href="#">Add Your Review</a></li> 
                    </ul>
                    <div class="clear"></div>
                    <p><span class="bold">Availability:</span> In stock</p>
                    <p class="bold"><s:property value="%{proprice}"/></p>
                    <div class="addtocart">
                    	<h6>Add Items to Cart</h6>
                        <ul class="left">
                        	<li class="bold qty">QTY</li>
                            <li>
                                      
                   <s:form action="addcartpro">
                       <s:hidden name="proname" value="%{proname}" /> 
                       <s:hidden name="proprice" value="%{proprice}" />  
                       <s:hidden name="proid" value="%{proid}" />
                       <s:textfield name="usqty" cssClass="bar" size="20" /></li>
                       <li><s:submit cssClass="addcrt" value="Add Cart" /></li></s:form>
                        </ul>
                        <ul>
                        	<li class="bold or">OR</li>
                            <li>
                                <a href="#" class="bold qty" >Buy</a>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    	<div class="quickreview">
                    	<h6>Quick Overview</h6>
                        <p>
                        	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, vestibulum in, volutpat eget, dapibus ac, lectus. Curabitur dolor sapien, hendrerit non, suscipit bibendum, auctor ac, arcu. Vestibulum dapibus. Sed pede lacus, pretium in, condimentum sit amet, mollis dapibus, magna. 
                        </p>
                    </div>
                    </div>
                </div>
                <div class="prod_desc">
                	<h6 class="bar">Product Description</h6>
                    <p>
                    	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, vestibulum in, volutpat eget, dapibus ac, lectus. Curabitur dolor sapien, hendrerit non, suscipit bibendum, auctor ac, arcu. Vestibulum dapibus. Sed pede lacus, pretium in, condimentum sit amet, mollis dapibus, magna. Ut bibendum dolor nec augue. Ut tempus luctus metus. Sed a velit. Pellentesque at libero elementum ante condimentum sollicitudin. Pellentesque lorem ipsum, semper quis.  interdum et, sollicitudin eu, purus. Vivamus fringilla ipsum vel orci. Phasellus vitae massa at massa pulvinar pellentesque. Fusce tincidunt libero vitae odio. Donec malesuada diam nec mi. Integer hendrerit pulvinar ante. Donec eleifend, nisl eget aliquam congue, justo metus venenatis neque, vel tincidunt elit augue sit amet velit. Nulla facilisi. Aenean suscipit. 
                    </p>
                </div>
                
            </div>
         
            <div class="clear"></div>
            
            
    </div>
    </div>
    <div class="clear"></div>
    <!-- Footer Section -->
    <s:include value="footer.jsp" />
</div>
</body>

<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
</html>
