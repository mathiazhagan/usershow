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
    </head>
    <body>
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
                <!--
                <li class="dir"><a href="default.jsp">Mobiles</a>
                    <ul>
                        <li class="dir"><h6>Nokia Accesories</h6>
                            <ul>
                                <li><a href="categories.jsp">Nokia N95</a></li>
                                <li><a href="categories.jsp">Nokia N92</a></li>
                                <li><a href="categories.jsp">Nokia Smart</a></li>
                            </ul>
                        </li>
                        <li class="dir"><h6>Samsung Accesories</h6>
                            <ul>
                                <li><a href="categories.jsp">Samsung Corbi</a></li>
                                <li><a href="categories.jsp">Samsung Galaxy</a></li>
                                <li><a href="categories.jsp">Samsung Metro</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>-->
                <li><a href="login.jsp">Events</a>
                <ul>
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
                               <sj:datepicker inline="true" name="datesear" label="Search by Event Date" changeMonth="true" changeYear="true" />
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                        </sj:dialog>
                        <sj:dialog id="myclickdialogn" autoOpen="false" modal="true" title="Search By Event Name" >
                            <s:form action="namesh" name="namesh" >
                                <sj:textfield name="namesr" label="Search by Event Name" />
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                        </sj:dialog>
    
                        <li class="clear"><sj:a openDialog="myclickdialog1" >Event Type</sj:a></li>
                        <li class="clear"><sj:a openDialog="myclickdialog2" >Event Location</sj:a></li>
                        <li class="clear"><sj:a openDialog="myclickdialogn" >Name of the Event</sj:a></li>
                        <li class="clear"><sj:a openDialog="myclickdialog3" >Date of the Event</sj:a></li>   
                    </ul>
                </li>
                 <li><a href="contact.jsp">Sales Outlet</a><!--           this is foe stall search             -->
                 <ul>
                        <sj:dialog id="myclickdialog9" autoOpen="false" modal="true" title="Search By Sales Outlet's Type" >
                            <s:form action="typestall" >
                               <s:select name="typesearch" list="{'Flower','Books','Arts & Paintings','Handicrafts','Food and beverage','Mobile',
                                         'Comics','Computer show','Pets Show','Furniture','Technical Fairs','Cars',
                                    'Toys & Games','Photography','Consumer electronics'}" headerKey="Please Select" headerValue="Please Select" label="Search by Outlet's Type" />
                               <sj:submit value="Submit" button="true"/>
                            </s:form>
                        </sj:dialog>
                        <sj:dialog id="myclickdialog6" autoOpen="false" modal="true" title="Search By Sales Outlet Name" >
                            <s:form action="namestall" >
                                <sj:textfield name="namesearch" label="Search By Sales Outlet Name" />
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                        </sj:dialog>
    
                        <li class="clear"><sj:a openDialog="myclickdialog9" >Sales Outlet's Type</sj:a></li>
                        <li class="clear"><sj:a openDialog="myclickdialog6" >Name of the Sales Outlet</sj:a></li>  
                    </ul>
                 </li>
                 <sj:dialog id="myclickdialog11" autoOpen="false" modal="true" title="Search Product's Name" >
                            <s:form action="prodmenuname" >
                                <sj:textfield name="prodnmsearch" label="Search Product's Name" />
                               <sj:submit value="Submit" cssClass="simplebtn" button="true"/>
                            </s:form>
                  </sj:dialog>
                 <li><sj:a openDialog="myclickdialog11">Products</sj:a></li>
                <li><a href="contact.jsp">Contact</a></li>
               <!-- <li class="dir"><a href="#">Themes</a>
                    <ul class="pad">
                    	<li class="clear"><a href="../grey/index-2.jsp">Grey</a></li>
                        <li class="clear"><a href="../blue/index-2.jsp">Blue</a></li>
                        <li class="clear"><a href="index-2.jsp">Green</a></li>
                        <li class="clear"><a href="../red/index-2.jsp">Red</a></li>
                    </ul>
                </li>-->
              <!-- <li class="dir"><a href="#">Pages</a>
                    <ul class="pad">
                    	<li class="clear"><a href="index-2.jsp">Home Page</a></li>
                        <li class="clear"><a href="account.jsp">Account Page</a></li>
                        <li class="clear"><a href="cart.jsp">Shopping Cart Page</a></li>
                        <li class="clear"><a href="categories.jsp">Categories Page</a></li>
                        <li class="clear"><a href="detail.jsp">Product Detail Page</a></li>
                        <li class="clear"><a href="listing.jsp">Listing Page</a></li>
                        <li class="clear"><a href="static.jsp">Static Page</a></li>
                        <li class="clear"><a href="contact.jsp">Contact Page</a></li>
                    </ul>
                </li>-->
            </ul>
        </div>
        <div class="clear"></div>
    </body>
</html>
