<%-- 
    Document   : categories1
    Created on : Nov 13, 2011, 1:25:11 PM
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

<script type="text/javascript" src="js/jquery.dropdown.js"></script>
<style type="text/css">
   .bala
   {
       font-size: 15px; 
       color:  black;
        padding-left: 25px;
   }
   .balahed
   {
       font-size: 20px; 
       color:  black;
        padding-left: 200px;
   }
</style>
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
              <%  }else {  %>
              	<li>welcome back <%= session.getAttribute("Cuser") %></li>
              <%   }  %>
                <li><a href="accdash.action">My Account</a></li>
                <li><a href="default.jsp">My Wishlist</a></li>
                <li><a href="countindetail.action">My Cart</a></li>
                <%  if(obj==null) {    %>
            	<li class="last"><a href="login.jsp">Log In</a></li>
              <%  }else {    %>
              <li><a href="default.jsp">Checkout</a></li>
              <li class="last"><a href="logoutaction.action">Log Out</a></li>
              <%   }  %>
               
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
        	<h3 class="heading colr">All Recent Events</h3>
               
             <ul>
                 <s:actionerror/>
                 <div  style=" width: 815px;">            
                     <div class="col1" style=" width: 215px; ">
                       <s:iterator value="Prodnmlist" status="ll" >
                           <div style=" height: 130px;" >
                           <li class="last" style=" " >
                               <s:url action="viewprod.action" var="viewprod">
                                                <s:param name="prodid" value="%{getProductId()}" />
                          </s:url>
                         <div >                                    
                	 <s:a  href="%{viewprod}"><img src="pdtimg.action?productid=<s:property value="%{getProductId()}"/>" onerror="this.src='images/cat_img3.gif';" height="194" width="215" /></s:a>
                         </div>
                         
                         <div class="descr" style=" height: 5px;" >      
                             <h4 align="center"><s:property value="%{getName()}" /></h4>
                         </div>
                        </li> 
                           </div>
                       </s:iterator>
                 </div>
                   
                     <div class="col2" style=" width: 600px; ">
                 <s:iterator value="Prodnmlist" status="ll" >
               
                     <div  class="descr1" style=" border-bottom:  none; height: 215px;" >  
                         
                         <p class="balahed" >Product name:&nbsp;&nbsp;<s:property value="%{getName()}" /></p><br/><br/><br/><br/>
                         <p class="bala">Price:&nbsp;&nbsp;<s:property value="%{getPrice()}" /></p><br/><br/>
                        
                     </div>
                 </s:iterator>
                 </div>
                 </div>
                   </ul>
                       
                    
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
