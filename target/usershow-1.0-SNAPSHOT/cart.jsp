<%-- 
    Document   : cart1
    Created on : Nov 13, 2011, 1:24:05 PM
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
            	<li>welcome back <%= session.getAttribute("Cuser") %><s:property value="cartlist.iterator().next().getBasket().getCustomer().getEmail()" /></li>
                <li><a href="accdash.action">My Account</a></li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li>My Cart</li>
                <li><a href="default.jsp">Checkout</a></li>
                 <li class="last"><a href="logoutaction.action">Log Out</a></li>
              
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
    	<h3 class="heading colr">Shoping Cart</h3>
    	<div class="shoppingcart">
            	<ul class="tablehead">
                	<li class="remove">Remove</li>
                    <li class="thumb">&nbsp;</li>
                    <li class="title">Product Name</li>
                    <li class="price">Unit Price</li>
                    <li class="qty">QTY</li>
            
                    <li class="total">Sub Total</li>
                    <li class="save">Save</li>
                </ul>
                
                <s:iterator value="checknmlist" status="ct">
                <ul class="cartlist">
                    <s:url action="dellist.action" var="delete">
                                            <s:param name="prodid" value="%{getProduct().getProductId()}" />
                    </s:url>
                    
                	<li class="remove txt"><s:a href="%{delete}"><img src="images/delete.gif" alt="" /></s:a></li>
                    <li class="thumb"><a href="detail.jsp"><img src="pdtimg.action?productid=<s:property value="%{getProduct().getProductId()}"/>" onerror="this.src='images/cart_thumb.gif';" width="42" height="42" /></a></li>
                    <li class="title txt"><a href="detail.jsp"><s:property value="%{getProduct().getName()}" /></a></li>
                    <li class="price txt">$<s:property value="%{price}" /></li>
                  <s:form action="updlist">  
                    <li class="qty"><input type="text" name="upqty"  value="<s:property value="%{qn}" />" size="10" cssClass="bar" /></li>
                    <li class="total txt">$<s:property value="%{price*qn}" /><s:hidden name="upprodid" value="%{getProduct().getProductId()}" /></li>
                    <li class="save1"><s:submit type="image" src="images/save12.jpg" alt="" height="30" width="32" cssClass="save1"/></li>
                    </s:form>
                </ul>
                    
             </s:iterator>         
                <div class="clear"></div>
                <div class="subtotal">
                	<a href="listing.jsp" class="simplebtn">Continue Shopping</a>
                        <a href="calc.action" class="simplebtn">Finish</a>
                        <h3 class="right"><s:property value="%{stotal}" /></h3>
                </div>
                <div class="clear"></div>
                <div class="sections">
                	<div class="cartitems">
                    	<h6 class="colr">Based on your selection, you may be interested in the following items:</h6>
                        <ul>
                        	<li>
                            	<div class="thumb">
                                	<a href="detail.jsp"><img src="images/prod_cart.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<a href="#" class="title bold">Iphone 3G</a>
                                    <p class="bold">$300</p>
                                    <a href="#" class="simplebtn">Add to Cart</a>
                                    <div class="clear"></div><br />
                                    <a href="#"><u>Add to Wishlist</u></a><br />
                                    <a href="#"><u>Add to Compare</u></a>
                                </div>
                            </li>
                            <li>
                            	<div class="thumb">
                                	<a href="detail.jsp"><img src="images/prod_cart.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<a href="#" class="title bold">Iphone 3G</a>
                                    <p class="bold">$300</p>
                                    <a href="#" class="simplebtn">Add to Cart</a>
                                    <div class="clear"></div><br />
                                    <a href="#"><u>Add to Wishlist</u></a><br />
                                    <a href="#"><u>Add to Compare</u></a>
                                </div>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="centersec">
                    <div class="discount">
                    	<h6 class="colr">Discount Codes</h6>
                        <p>Enter your coupon code if you have one.</p>
                        <ul>
                        	<li><input name="discount" type="text" class="bar" /></li>
                            <li><a href="#" class="simplebtn">Apply Coupon</a></li>
                        </ul>
                    </div>
                  <div class="estimate">
                    	<h6 class="colr">Estimate Shipping and Tax</h6>
                    <p>Enter your destination to get a shipping estimate.</p>
                      <ul>
                       	  <li class="bold">Country</li>
                          <li>
                          	<select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)" class="bar">
                            	<option>item1</option>
                            	<option>item2</option>
                            	<option>item3</option>
                          	</select>
                          </li>
                      </ul>
                      <ul>
                       	  <li class="bold">State/Province</li>
                          <li>
                          	<select name="jumpMenu" id="jumpMenu1" onchange="MM_jumpMenu('parent',this,0)" class="bar">
                            	<option>item1</option>
                            	<option>item2</option>
                            	<option>item3</option>
                          	</select>
                          </li>
                      </ul>
                      <ul>
                       	  <li class="bold">Zip code</li>
                          <li><input name="discount" type="text" class="bar" /></li>
                          <li><a href="#" class="simplebtn">Submit</a></li>
                      </ul>
                    </div>
                    </div>
                    <div class="grand_total">
                    	<!--<ul>
                        	<li class="title">Subtotal</li>
                            <li class="price bold">$349.99</li>
                        </ul>-->
                        <ul>
                        	<li class="title"><h5>Grand total</h5></li>
                            <li class="price"><h5>$349.99</h5></li>
                        </ul>
                        <div class="clear"></div>
                        <a href="#" class="proceed right">Proceed to Checkout</a>
                        <div class="clear"></div>
                        <a href="#" class="right">Checkout with Multiple Addresses</a>
                    </div>
                </div>
            </div>
                <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Footer Section -->
    <s:include value="footer.jsp"/>
</div>
</body>

<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
</html>

