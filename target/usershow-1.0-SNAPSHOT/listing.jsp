<%-- 
    Document   : listing1
    Created on : Nov 13, 2011, 1:47:40 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.Customer"%>
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
              <%
                   }else
                   {
              %>
              	<li>welcome back <s:property value="%{cuser.getEmail()}"/></li>
              <%
                    }
              %>
                <li><a href="accdash.action">My Account</a></li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li><a href="cart.jsp">My Cart</a></li>
                <li><a href="default.jsp">Checkout</a></li>
                <%
                if(obj==null)
                  {
              %>
            	<li class="last"><a href="login.jsp">Log In</a></li>
              <%
                   }else
                   {
              %>
            	 <li class="last"><a href="logoutaction.action">Log Out</a></li>
              <%
                    }
              %>
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
        	    <!-- Categories -->
                    <s:include value="dropdown.jsp" />
                <!-- My Cart Products -->
                <div class="mycart">
                    <div class="small_heading">
                        <h5 class="colr">My Cart</h5>
                        <div class="clear"></div>
                        <span class="veiwitems">(3) Items - <a href="cart.jsp" class="colr">View Cart</a></span>
                    </div>
                    <ul>
                        <li>
                            <p class="bold title">
                                <a href="detail.jsp">Apple Ipad Special Edition 3rd generation</a>
                            </p>
                            <div class="grey">
                                <p class="left">QTY: <span class="bold">3</span></p>
                                <p class="right">Price: <span class="bold">$200</span></p>
                            </div>
                        </li>
                        <li>
                            <p class="bold title">
                                <a href="detail.jsp">Apple Ipad Special Edition 3rd generation</a>
                            </p>
                            <div class="grey">
                                <p class="left">QTY: <span class="bold">3</span></p>
                                <p class="right">Price: <span class="bold">$200</span></p>
                            </div>
                        </li>
                        <li>
                            <p class="bold title">
                                <a href="detail.jsp">Apple Ipad Special Edition 3rd generation</a>
                            </p>
                            <div class="grey">
                                <p class="left">QTY: <span class="bold">3</span></p>
                                <p class="right">Price: <span class="bold">$200</span></p>
                            </div>
                        </li>
                    </ul>
                    <a href="#" class="simplebtn"><span>Checkout</span></a>
                </div>
                <div class="poll">
            	<div class="small_heading">
            		<h5 class="colr">Poll</h5>
                </div>
                <p>What is your favorite Magento feature?</p>
                <ul>
                	<li><input name="layerd" type="radio" value="" /> Layered Navigation</li>
                    <li><input name="price" type="radio" value="" /> Price Rules</li>
                    <li><input name="category" type="radio" value="" /> Category Management</li>
                    <li><input name="compare" type="radio" value="" /> Compare Products</li>
                </ul>
                <a href="#" class="simplebtn">Vote</a>
            </div>
        </div>
        <!-- Column2 Section -->
        <div class="col2">
        	<h3 class="heading colr">Stylish chair</h3>
            <!-- Product Detail -->
            <div class="listing_banner">
            	<div class="anythingSlider">        
                  <div class="wrapper">
                    <ul>
                       <li><img src="images/banner_small.gif" alt="" /></li>
                       <li><img src="images/banner_small.gif" alt="" /></li>
                       <li><img src="images/banner_small.gif" alt="" /></li>
                       <li><img src="images/banner_small.gif" alt="" /></li>
                       <li><img src="images/banner_small.gif" alt="" /></li>
                    </ul>        
                  </div>
                  
                </div>
            </div>
            <div class="sorting">
            	<p class="left">1 - 12 of 32 Item(s)</p>
                <ul class="right">
                	<li class="text">
                    	Sort by Position
                    	<a href="#" class="colr">Name </a>
                        <a href="#" class="colr">Price</a> 
                    </li>
                    <li class="text">Page
                        <a href="#" class="colr">1</a> 
                        <a href="#" class="colr">2</a> 
                        <a href="#" class="colr">3</a> 
                        <a href="#" class="colr">/ All</a> 
                    </li>
                </ul>
                <div class="clear"></div>
                <p class="left">View as: <a href="#" class="bold">Grid</a>&nbsp;<a href="#" class="colr">List</a></p>
                <ul class="right">
                	<li class="text">
                    	Sort by Position
                    	<a href="#" class="colr">Name </a>
                        <a href="#" class="colr">Price</a> 
                    </li>
                </ul>
          	</div>
            <div class="listing">
        	<h3 class="heading colr">Recent Products</h3>
        	<ul>
            	<li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod1.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod2.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod3.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li class="last">
                    <a href="detail.jsp" class="thumb"><img src="images/prod4.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod1.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod2.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod3.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li class="last">
                    <a href="detail.jsp" class="thumb"><img src="images/prod4.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod1.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod2.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <a href="detail.jsp" class="thumb"><img src="images/prod3.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
                <li class="last">
                    <a href="detail.jsp" class="thumb"><img src="images/prod4.gif" alt="" /></a>
                    <h6 class="colr">Product Title</h6>
                    <p class="price">Regural Price: <span class="bold regprice">$155.99</span></p>
                    <p class="price">Special Price: <span class="bold">$55.99</span></p>
                    <div class="stars">
                    	<a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_brown.gif" alt="" /></a>
                        <a href="#"><img src="images/star_drk_brown.gif" alt="" /></a>
                    </div>
                    <a href="#" class="rev">2 Reviews (s)</a>
                    <div class="clear"></div>
                    <div class="butns">
                    <a href="cart.jsp" class="addcrt">Add to Cart</a>
                    <a href="#" class="simplebtn">Read More</a>
                    </div>
                    <div class="clear"></div>
                </li>
            </ul>
            <div class="clear"></div>
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
