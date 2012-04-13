<%-- 
    Document   : upload
    Created on : Jan 3, 2012, 11:21:10 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <s:form enctype="multipart/form-data" action="Uploadact" >
            <s:file name="banimage" label="select image" ></s:file>
            <s:submit value="add" />
            
        </s:form>
    </body>
</html>
