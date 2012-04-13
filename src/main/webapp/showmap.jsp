<%-- 
    Document   : categories1
    Created on : Nov 13, 2011, 1:25:11 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page import="model.*"%>
<sj:head  jqueryui="true"/>
<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Estore 14</title>
<!-- // Stylesheets // -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/default.advanced.css" type="text/css" />
<!-- // Javascript // -->

<sj:head jquerytheme="simple" jqueryui="true"/>	
<style type="text/css">
    table
    {
    margin-left:auto; 
    margin-right:auto;
    border-collapse:collapse;
  
    }
</style>
      </head>
<body>
<a name="top"></a>
<div id="wrapper_sec">
	<!-- Header -->
	<div id="masthead">
           
        <!-- for headernew.jsp  -->
        <div class="logo">
        	<a href="index.jsp"><img src="images/m.gif" alt="" width="500" height="60" /></a>
        </div>
        <div class="small_cart">
        	<div class="items">
            	<p>Shopping Cart</p>
                <a href="#" class="bold colr"><s:property value="itemcount" />items</a>
            </div>
            <ul class="network">
            	<li class="share">Share with us:</li>
                <li class="clear"><a href="#"><img src="images/twitter.gif" alt="" /></a></li>
                <li><a href="#"><img src="images/delicious.gif" alt="" /></a></li>
                <li><a href="#"><img src="images/blogger.gif" alt="" /></a></li>
                <li><a href="#"><img src="images/facebook.gif" alt="" /></a></li>
            </ul>
        </div>
            <%
              Object obj = session.getAttribute("Cuser");
              %>
        <div class="clear"></div>
        <div class="navigation">
            <ul id="nav" class="dropdown dropdown-linear dropdown-columnar">
                <li><a href="index.jsp" >Home</a></li>
                <li><a href="statpage.jsp">About Us</a></li>
                <li><a href="login.jsp">Events</a>
                <ul>  
                    <li class="clear"><a href="index.jsp" >Event Type</a></li>
                        <li class="clear"><a href="index.jsp" >Event Location</a></li>
                        <li class="clear"><a href="index.jsp" >Name of the Event</a></li>
                        <li class="clear"><a href="index.jsp" >Date of the Event</a></li>   
                    </ul>
                </li>
                 <li><a href="contact.jsp">Sales Outlet</a><!--           this is foe stall search             -->
                 <ul> 
                        <li class="clear"><a href="index.jsp" >Stall Type</a></li>
                        <li class="clear"><a href="index.jsp" >Name of the Stall</a></li>  
                    </ul>
                 </li>
                 
                 <li><a openDialog="myclickdialog11">Products</a></li>
                <li><a href="contact.jsp">Contact</a></li>
             
            </ul>
        </div>
        <div class="clear"></div>
            
        <div class="secnd_navi">
        	<ul class="links">
              <%  if(obj==null) {   %>
            	<li>welcome to Zorrit!</li>
              <%  }else {   %>
              	<li>welcome back <%= session.getAttribute("Cuser") %></li>
              <%  } %>
                <li><a href="accdash.action">My Account</a></li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li><a href="countindetail.action">My Cart</a></li>
                <% if(obj==null)  {   %>
            	<li class="last"><a href="login.jsp">Log In</a></li>
              <%   }else  { %>
                <li><a href="default.jsp">Checkout</a></li>
                <li class="last"><a href="logoutaction.action">Log Out</a></li>
              <%  }  %>
               
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
    	<div class="categories1">
        	<h3 class="heading colr">Select stall in the Show U Seen</h3>
               
             
                 <s:actionerror/>
                
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/main.js" type="text/javascript"></script>

<style>

#preview{
	position:absolute;
	border:1px solid #ccc;
	background:#333;
	padding:5px;
	display:none;
	color:#fff;
	}

</style>
            <script type="text/javascript" src="js/jquery.min41.js"></script>
	<script type="text/javascript" src="js/jquery.maphilight.min.js"></script>
	<script type="text/javascript">$(function() {
		$('.map').maphilight();
	});</script>
        <table border="2" ><tr><td> <img  src="shlay.action?showlay=<s:property value="%{showid}"/>" onerror="this.src='images/cat_img3.gif';"  class="map" usemap="#usa" /></td></tr></table>
                  
          
                    <map name="usa">
                        <s:iterator value="shdislist" >
                            <s:url action="viewstall.action" var="viewstall">
                                      <s:param name="stallid" value="%{getStall().getStallId()}" />
                          </s:url>  
                                          
                          <a href="stallsrchimg.action?stallsrchimg=<s:property value="%{getStall().getStallId()}"/>"
                             class="preview" title="<s:property value="%{getStall().getStallname()}" />">
                           <area shape="rect" coords="<s:property value="%{x1}"/>,<s:property value="%{y1}"/>,<s:property value="%{x2}"/>,<s:property value="%{y2}"/>"
                             href="viewstall.action?stallid=<s:property value="%{getStall().getStallId()}" />"  /></a>
                        </s:iterator>
                                    
                    </map> 
                   </div>
         
        
          
        
    	<div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Footer Section -->
    <s:include value="footer.jsp" />
</div>
</body>

<!-- Uploaded by raphael_primo. More ThemeForest Templates in http://www.templates4all.net/ -->
</html>
