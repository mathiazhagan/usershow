<%-- 
    Document   : account1
    Created on : Nov 13, 2011, 1:23:09 PM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="/struts-tags" prefix="s"%>
 <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page import="model.*"%>
<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Estore 14</title>
<!-- // Stylesheets // -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/default.advanced.css" type="text/css" />
<!-- // Javascript // -->

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
                <li>My Account</li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li><a href="countindetail.action">My Cart</a></li>
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
    <!-- Bread Crumb Section -->
   
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
        	<h3 class="heading colr">Dashboard</h3>
            <!-- Product Detail -->
        	<div class="account">
                <div class="account_title">
                    <h6 class="bold">Hello,<s:property value="odlist.iterator().next().getBasket().getCustomer().getFirstname()" />!</h6>
                    <p>
                        From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.
                    </p>
                </div>
                <div class="clear"></div>
                <div class="account_table">
                	<ul class="headtable">
                    	<li class="order bold">Order</li>
                        <li class="date bold">Date</li>
                        <li class="ship bold">Product</li>
                        <li class="ordertotal bold">Quantity</li>
                        <li class="ordertotal bold">Order Total</li>
                        <li class="status bold">Status</li>
                      <!--  <li class="action bold">&nbsp;</li>   -->
                    </ul>
                 <s:iterator value="odlist" status="rowstatus" >
                   <s:if test="#rowstatus.odd == true">
                    <ul class="contable">
                        <li class="order"><s:property value="getOrderId()" /></li>
                        <li class="date"><s:property value="getOdDate()" /></li>
                        <li class="ship"><s:property value="getProduct().getName()" /></li>
                        <li class="ordertotal"><s:property value="getQn()" /></li>
                        <li class="ordertotal">$<s:property value="getPrice()*getQn()" /></li>
                        <li class="status"><s:property value="getStatus()" /></li>
                    <!--    <li class="action"><a href="#" class="first">View</a><a href="#">Edit</a></li>  -->
                    </ul>
                   </s:if>
                   <s:else>
                    <ul class="contable gray">
                        <li class="order"><s:property value="getOrderId()" /></li>
                        <li class="date"><s:property value="getOdDate()" /></li>
                        <li class="ship"><s:property value="getProduct().getName()" /></li>
                        <li class="ordertotal"><s:property value="getQn()" /></li>
                        <li class="ordertotal">$<s:property value="getPrice()*getQn()" /></li>
                        <li class="status"><s:property value="getStatus()" /></li>
                   <!--     <li class="action"><a href="#" class="first">View</a><a href="#">Edit</a></li>  -->
                    </ul>
                   </s:else>
                  </s:iterator>
                </div>
                <div class="acount_info">
                    <h6 class="heading bold colr">Account Information</h6>
                    <div class="small_sec left">
                        <div class="headng">
                            <h6 class="bold colr">Contact Information</h6>
                            <a href="#" class="right bold colr">Edit</a>
                        </div>
                        <sj:dialog id="myclickdialog01" autoOpen="false" modal="true" width="360" title="Change Password" >
                           
                            <s:form action="changepswd" >
                                <s:password name="oldpswd" label="Enter Old Password" />
                                <s:password name="newpswd" label="Enter New Password" /><br/>
                                <s:password name="newpswd1" label="Re-Enter New Password" /><br/>
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                        </sj:dialog>
                        <div class="content">
                            <p class="bold"><s:property value="odlist.iterator().next().getBasket().getCustomer().getFirstname()" />&nbsp;&nbsp;&nbsp; <s:property value="odlist.iterator().next().getBasket().getCustomer().getLastname()" /></p>
                            <a href="#"><s:property value="odlist.iterator().next().getBasket().getCustomer().getEmail()" /></a><br />
                            <sj:a openDialog="myclickdialog01" href="" >Change Password</sj:a>
                            <font color="#000" size="03px" ><s:actionerror theme="simple"/></font>
                        </div>
                        <div class="clear"></div>
                        <div class="botm_small">&nbsp;</div>
                    </div>
                    <div class="small_sec right">
                        <div class="headng">
                            <h6 class="bold colr">Newsletters</h6>
                            <a href="#" class="right bold colr">Edit</a>
                        </div>
                        <div class="content">
                            <p>You are currently not subscribed to any newsletter.</p>
                        </div>
                        <div class="clear"></div>
                        <div class="botm_small">&nbsp;</div>
                    </div>
                    <div class="clear"></div>
                    <div class="big_sec left">
                        <div class="headng">
                            <h6 class="bold colr">Contact Information</h6>
                            <a href="#" class="right bold colr">Edit</a>
                        </div>
                        <div class="big_small_sec left">
                        	<h6 class="bold">Default Billing Address</h6>
                            <p>You have not set a default billing address.</p>
                            <a href="#"><u>Edit Address</u></a>
                        </div>
                        <div class="big_small_sec right">
                        	<h6 class="bold">Default Shipping Address</h6>
                            <p>You have not set a default shipping address.</p>
                            <a href="#"><u>Edit Address</u></a>
                        </div>
                    </div>
                </div>
                <div class="view_tags">
                	<div class="viewssec">
                    	<h4 class="heading colr">Recent Views</h4>
                    	<ul>
                        	<li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                            <li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                            <li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                            <li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="tagssec">
                    	<h4 class="heading colr">My Recent Tags</h4>
                    	<ul>
                        	<li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                            <li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                            <li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                            <li>
                            	<h5 class="bullet">1</h5>
                                <h5 class="title">Product Name</h5>
                                <div class="clear"></div>
                                <div class="ratings">
                                	<a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_black.png" alt="" /></a>
                                    <a href="#"><img src="images/star_gray.png" alt="" /></a>
                                </div>
                            </li>
                        </ul>
                    </div>
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
