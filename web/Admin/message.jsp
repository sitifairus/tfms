<%-- 
    Document   : message
    Created on : Aug 12, 2015, 3:57:51 PM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UTM Task Force</title>
        
        <%@include file="../head.jsp" %>
        
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            String message=request.getParameter("message");
        %>
        <%=message%>
    </body>
</html>
