<%-- 
    Document   : news
    Created on : Aug 5, 2015, 3:47:52 PM
    Author     : asus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TFMSystem</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@include file="adminHeader.jsp" %>
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
        %>
        <div id="Wrapper">
            <center>
                <br>
                <h2 style="font-family: Serif, Gadget, sans-serif; color: #CC0000;">Announcement</h2>
                
                <marquee direction="up" width="600" height="300"  style="border:solid darkred" scrollamount="2" BGCOLOR=black>
                    <h4 align="center">
                        <font color="#FFFFFF">
                        test<br>
                        test<br>
                        new system is being created<br><br>
                        checking for error..<br><br>
                        deploying..<br><br><br><br>
                        A new system created ! ---> named : TFMSystem ^_^  <br><br>
                        
                        Database have been updated. Please check your info and update where necessary
                        
                    </h4>
                
                </marquee>
            </center>
           
            
        </div>
        
        
                
    </body>
</html>
<%@ include file="../footer.jsp" %>
