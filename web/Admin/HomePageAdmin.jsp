<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>UTM Task Force</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%
            String UserSession = (String)session.getAttribute("user");
            String UserType = (String)session.getAttribute("userType");
            //out.println(UserSession);
            if ((!(UserSession==null))&&(UserType.equals("admin"))) {

        %>
        <%@include file="adminHeader.jsp" %><br><br><br>
        <p><h3 align="center">Welcome to Admin home page!</h3>
        <%@include file="../footer.jsp" %>
        <%
            }
        else
            {
                out.println("your not login!");
            }
        %>
    </body>
</html>
