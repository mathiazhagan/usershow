<%-- 
    Document   : header
    Created on : Nov 16, 2011, 11:57:53 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <%@taglib uri="/struts-tags" prefix="s"%>
        <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
       <sj:head  jqueryui="true"/>
       <style type="css/text">
     .h
           {
           color:  #00ffff;
           }
       </style>
    </head>
    <body>
       
        <div><p style=" padding-right: 15px; color: #666600; font-size: 12px; "> &nbsp;&nbsp;Welcome ! <a  href="login.jsp" >Sign in</a> or <a href="newcustomer.jsp" >register</a></p></div>
        <div class="logo">
        	<a href="index.jsp">
            <img src="images/m.gif" alt="" width="500" height="55" /></a>
        </div>
        <div class="small_cart" style=" padding-top: none; vertical-align: top;" >
        	<div class="items">
                    <a href="countindetail.action" >Shopping Cart</a>
                <a href="#" class="bold colr"><s:property value="itemcount" /></a>
            </div>
            <ul class="network">
            	<li class="share">Share with us:</li>
                <li class="clear"><a href="#">
                <img src="images/twitter.gif" alt="" width="15" height="15" /></a></li>
                <li><a href="#">
                <img src="images/delicious.gif" alt="" width="15" height="15" /></a></li>
                <li><a href="#">
                <img src="images/blogger.gif" alt="" width="15" height="15" /></a></li>
                <li><a href="#">
                <img src="images/facebook.gif" alt="" width="15" height="15" /></a></li>
            </ul>
        </div>
       <div class="clear"></div>
       <%
              Object obj = session.getAttribute("Cuser");
                
              %>
        <div class="navigation">
            <ul id="nav" class="dropdown dropdown-linear dropdown-columnar">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="statpage.jsp">About Us</a></li>
                <li class="dir"><a href="statpage.jsp">Categories</a>
                    <!--   for show         -->
                        <sj:dialog id="myclickdialog1" autoOpen="false" modal="true" title="Search By Event Type" >
                            <s:form action="typesearch" >
                               <s:select name="typesear" list="{'Flower','Books','Arts & Paintings','Handicrafts','Food and beverage','Mobile',
                                         'Comics','Computer show','Pets Show','Furniture','Technical Fairs','Cars',
                                    'Toys & Games','Photography','Consumer electronics'}" headerKey="Please Select" headerValue="Please Select" label="Search by Event Type" />
                               <sj:submit value="Submit" button="true"/>
                            </s:form>
                        </sj:dialog>
                        <sj:dialog id="myclickdialog2" width="360" autoOpen="false" modal="true" title="Search By Event Location" >
                            <s:form action="venuesearch" >
                                <s:select name="venuesear" list="{'London','Birmingham','Leeds','Glasgow','Sheffield',
                                'Bradford','Edinburgh','Liverpool','Manchester','Bristol','Wakefield','Cardiff','Coventry',
                                'Nottingham','Leicester','Sunderland','Belfast','Newcastle upon Tyne','Brighton','Hull',
                                'Plymouth','Stoke-on-Trent','Wolverhampton','Derby','Swansea','Southampton','Salford','Aberdeen',
                                'Westminster','Portsmouth','York','Peterborough','Dundee','Lancaster','Oxford','Newport','Preston',
                                'St Albans','Norwich','Chester','Cambridge','Salisbury','Exeter','Gloucester','Lisburn','Chichester',
                                'Winchester','Londonderry','Carlisle','Worcester','Bath	90000','87000','Lincoln','Hereford',
                                'Armagh','Inverness','Stirling','Canterbury','Lichfield','Newry','Ripon','Bangor','Truro','Ely',
                                'Wells','St Davids'}" headerKey="Please Select" headerValue="Please Select" label="Search by Event Location" />
                                <sj:submit value="Submit" button="true"/>
                            </s:form>
                        </sj:dialog>
                        <sj:dialog id="myclickdialog3" autoOpen="false" modal="true" title="Search By Event Date" >
                            <s:form action="yearsearch" >
                               <sj:datepicker inline="true" name="datesear" label="Search by Event Year" changeMonth="true" changeYear="true" />
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                        </sj:dialog>
                        <sj:dialog id="myclickdialogn" autoOpen="false" modal="true" title="Search By Event Name" >
                            <s:form action="namesh" name="namesh" >
                                <sj:textfield name="namesr" label="Search by Event Name" /><br>
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                        </sj:dialog>
    <!-- for stall  -->
                        <sj:dialog id="myclickdialog9" autoOpen="false" modal="true" title="Search By Sales Outlet Type" >
                            <s:form action="typestall" >
                               <s:select name="typesearch" list="{'Flower','Books','Arts & Paintings','Handicrafts','Food and beverage','Mobile',
                                         'Comics','Computer show','Pets Show','Furniture','Technical Fairs','Cars',
                                    'Toys & Games','Photography','Consumer electronics'}" headerKey="Please Select" headerValue="Please Select" label="Search By Sales Outlet's Type" />
                               <sj:submit value="Submit" button="true"/>
                            </s:form>
                        </sj:dialog>
                        <sj:dialog id="myclickdialog6" autoOpen="false" modal="true" title="Search By Sales Outlet Name" >
                            <s:form action="namestall" >
                                <sj:textfield name="namesearch" label="Search By Sales Outlet Name" />
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                        </sj:dialog>
    <!--      for products              -->
                        <sj:dialog id="myclickdialog11" autoOpen="false" modal="true" title="Search Product's Name" >
                            <s:form action="prodmenuname" >
                                <sj:textfield name="prodnmsearch" label="Search Product's Name" />
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                  </sj:dialog>
                 
                                <ul>
                        <li class="dir"><h6>Events</h6>
                            <ul>
                                <li class="clear"><sj:a openDialog="myclickdialog1" >Event Type</sj:a></li>
                                <li class="clear"><sj:a openDialog="myclickdialog2" >Event Location</sj:a></li>
                                <li class="clear"><sj:a openDialog="myclickdialogn" >Name of the Event</sj:a></li>
                                <li class="clear"><sj:a openDialog="myclickdialog3" >Date of the Event</sj:a></li> 
                            </ul>
                        </li>
                        <li class="dir"><h6>Sales Outlet</h6>
                            <ul>
                               <li class="clear"><sj:a openDialog="myclickdialog9" >Sales Outlet's Type</sj:a></li>
                               <li class="clear"><sj:a openDialog="myclickdialog6" >Name of the Sales Outlet</sj:a></li>
                            </ul>
                        </li>
                        <li class="dir"><h6>Products</h6>
                            <ul>
                                <li><sj:a openDialog="myclickdialog11">Product Name</sj:a></li>
                            </ul>
                        </li>
                    </ul>
                                                  
                </li>
                               
                <!--
                
                <li class="dir"><a href="#">Themes</a>
                    <ul class="pad">
                    
                    	<li class="clear"><a href="../grey/index-2.jsp">Grey</a></li>
                        <li class="clear"><a href="../blue/index-2.jsp">Blue</a></li>
                        <li class="clear"><a href="index-2.jsp">Green</a></li>
                        <li class="clear"><a href="../red/index-2.jsp">Red</a></li>
                        
                    </ul>
                </li>
                -->
                   <li><a href="#">Offers</a></li>
                  <li><a href="contact.jsp">Contact Us</a></li>

            </ul>
           <!-- <ul class="lang">
            	<li>Your Language:</li>
                <li><a href="#">
                <img src="images/flag1.gif" alt="" width="16" height="10" /></a></li>
                <li><a href="#">
                <img src="images/flag2.gif" alt="" width="16" height="10" /></a></li>
                <li><a href="#">
                <img src="images/flag3.gif" alt="" width="16" height="10" /></a></li>
            </ul>-->
        </div>
    </body>
</html>
