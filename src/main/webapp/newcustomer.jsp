<%-- 
    Document   : newcustomer
    Created on : 19-Nov-2011, 10:30:27
    Author     : radan
--%>
<%@page import="java.text.DateFormat"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%> 
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Saw it at the Show</title>
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

        <style type="text/css">
            #page{
                margin:0 auto;
                position:relative;
                width:900px;
            }
            #content{
                width:100%;
            }
            table{
                margin-left: auto;
                margin-right: auto;
            }
            td
            {
               
                font-style:normal;
                font-size:medium;
                height: 35px;
                
            }

        </style> 
        <s:head/>
        <sj:head jqueryui="true" jquerytheme="flick" /> 
    </head>

    <body>
        <a name="top"></a>
        <div id="wrapper_sec">
            <div id="masthead">
                <s:include value="headernew.jsp" />
                <!-- Header -->
                <div class="clear"></div>

            </div>
            <div class="clear"></div>
            <div id="content">
                <div>
                    <br/>
                    <h3 align="center">Sign Up </h3>
                    <br/>
                </div>
            
                <s:fielderror theme="jquery" />
                <s:form enctype="multipart/form-data" method="post" action="signup" theme="simple">
                    <table>
                        <tr><td align="left" style="padding-left: 10px;" > First Name</td><td>
                            <s:textfield cssClass="bar" name="fname" required="true" />
                            </td></tr><tr><td align="left" style="padding-left: 10px;"> Last Name</td><td>
                            <s:textfield name="lname" cssClass="bar" required="true" />
                            </td></tr><tr><td align="left" style="padding-left: 10px;">Email Id</td><td>
                            <s:textfield name="cusemail" cssClass="bar"  required="true" />                
                            </td></tr><tr><td align="left" style="padding-left: 10px;">Password</td><td>
                            <s:password name="cussword" cssClass="bar" required="true" id="password" />
                             </td></tr><tr><td align="left" style="padding-left: 10px;">Re-Enter Password</td><td>
                            <s:password name="cussword1" cssClass="bar" required="true" id="password" />
                             </td></tr><tr><td align="left" style="padding-left: 10px;">Address</td><td>
                            <s:textarea name="addr" required="true" ccsClass="bar" />
                            </td></tr><tr><td align="left" style="padding-left: 10px;">Mobile No</td><td>
                            <s:textfield name="mobil" id="mobile" required="true" cssClass="bar" />
                            </td></tr><tr><td align="left" style="padding-left: 10px;">Phone Number</td><td>
                            <s:textfield name="phon" id="phone"  required="true" cssClass="bar" />
                            </td></tr><tr><td align="left" style="padding-left: 10px;"> City</td><td> 
                            <s:textfield id="city" name="city" required="true" cssClass="bar" />
                            </td></tr><tr><td align="left" style="padding-left: 10px;">Select Country</td><td>
                            <s:select required="true" list="{'Afghanistan','Aland Islands','lbania','Algeria','American Samoa','Andorra',
                                      'Angola','Anguilla','Antarctica','Antigua And Barbuda','Argentina','Armenia','Aruba','Australia',
                                      'Austria','Azerbaijan','Bahamas','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize',
                                      'Benin','Bermuda','Bhutan','Bolivia','Bosnia And Herzegovina','Botswana','Bouvet Island','Brazil',
                                      'British Indian Ocean Territory','Brunei Darussalam','Bulgaria','Burkina Faso','Burundi','Cambodia',
                                      'Cameroon','Canada','Cape Verde','Cayman Islands','Central African Republic','Chad','Chile','China',
                                      'Christmas Island','Cocos (Keeling) Islands','Colombia','Comoros','Congo','Congo The Democratic Republic',
                                      'Cook Islands','Costa Rica','Cote DIvoire','Croatia','Cuba','Cyprus','Czech Republic','Denmark','jibouti','Dominica',
                                      'Dominican Republic','Ecuador','Egypt','El Salvador','Equatorial Guinea','Eritrea','Estonia','Ethiopia',
                                      'Falkland Islands (Malvinas)','Faroe Islands','Fiji','Finland','France','French Guiana','French Polynesia',
                                      'French Southern Territories','Gabon','Gambia','Georgia','Germany','Ghana','Gibraltar','Greece',
                                      'Greenland','Grenada','Guadeloupe','Guam','Guatemala','Guernsey','Guinea','Guinea-bissau','Guyana',
                                      'Haiti','Heard Island And Mcdonald Islands','Holy See (Vatican City State)','Honduras','Hong Kong',
                                      'Hungary','Iceland','India','Indonesia','Iran Islamic Republic','Iraq','Ireland','Isle Of Man',
                                      'Israel','Italy','Jamaica','Japan','Jersey','Jordan','Kazakhstan','Kenya','Kiribati','Korea Democratic People Republic',
                                      'Korea Republic Of','Kuwait','Kyrgyzstan','Lao People Democratic Republic','Latvia','Lebanon','Lesotho','Liberia',
                                      'Libyan Arab Jamahiriya','Liechtenstein','Lithuania','Luxembourg','Macao','Macedonia The Former Yugoslav Republic',
                                      'Madagascar','Malawi','Malaysia','Maldives','Mali','Malta','Marshall Islands','Martinique','Mauritania','Mauritius',
                                      'Mayotte','Mexico','Micronesia Federated States','Moldova Republic','Monaco','Mongolia','Montenegro','Montserrat',
                                      'Morocco','Mozambique','Myanmar','Namibia','Nauru','Nepal','Netherlands','Netherlands Antilles','New Caledonia',
                                      'New Zealand','Nicaragua','Niger','Nigeria','Niue','Norfolk Island','Northern Mariana Islands','Norway','Oman',
                                      'Pakistan','Palau','Palestinian Territory Occupied','Panama','Papua New Guinea','Paraguay','Peru','Philippines',
                                      'Pitcairn;Poland','Portugal','Puerto Rico','Qatar','Reunion','Romania','Russian Federation','Rwanda','Saint Helena',
                                      'Saint Kitts And Nevis','Saint Lucia','Saint Pierre And Miquelon','Saint Vincent And The Grenadines','Samoa','San Marino',
                                      'Sao Tome And Principe','Saudi Arabia','Senegal','Serbia','Seychelles','Sierra Leone','Singapore','Slovakia',
                                      'Slovenia','Solomon Islands','Somalia','South Africa','South Georgia And The South Sandwich Islands','Spain',
                                      'Sri Lanka','Sudan','Suriname','Svalbard And Jan Mayen','Swaziland','Sweden','Switzerland',
                                      'Syrian Arab Republic','Taiwan Province Of China','Tajikistan','Tanzania, United Republic',
                                      'Thailand','Timor-leste','Togo','Tokelau','Tonga','Trinidad And Tobago','Tunisia','Turkey',
                                      'Turkmenistan','Turks And Caicos Islands','Tuvalu','Uganda','Ukraine','United Arab Emirates',
                                      'United Kingdom','United States','United States Minor Outlying Islands','Uruguay','Uzbekistan',
                                      'Vanuatu','Venezuela','Viet Nam','Virgin Islands British','Virgin Islands U.S.','Wallis And Futuna',
                                      'Western Sahara','Yemen','Zambia','Zimbabwe'}" headerKey="Please Select" headerValue="Please Select"  name="country" id="country" />
                            </td></tr><tr><td align="left" style="padding-left: 10px;">Postal Code</td><td>
                            <s:textfield cssClass="bar" required="true" name="postal" />
                            </td></tr><tr><td>
                            <s:submit value=" Accept Terms and Conditions " cssClass="simplebtn"/>
                            </td></tr>
                    </table>
                </s:form>
            </div>
            <s:include value="footer.jsp" />
        </div>
    </body>
</html>
