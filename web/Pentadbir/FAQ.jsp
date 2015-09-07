<%-- 
    Document   : FAQ
    Created on : Aug 12, 2015, 3:47:06 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FAQ page</title>
         <%@include file="../head.jsp" %>
    </head>
    <body>
        <%  String userID=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userID==null))||(!userType.equals("Pentadbir")&&!userType.equals("pentadbir"))) {
                response.sendRedirect("../message.jsp");
            }%>
        <%@ include file="PentadbirHeader.jsp" %>
        
        <div class="container" >
            
            <h1>Frequently Asked Questions(FAQ)</h1>
                <br>
                <br>
            
            <p><a href="#Q1">What is TaskForce Management System?</a></p>
            <p><a href="#Q2">How to access TMS system?</a></p>
            <p><a href="#Q3">How to sign up/sign in?</a></p>
            <p><a href="#Q4">What to do if you forgot your password or can't sign in.</a></p>
            <br><br><br>
            <h2 id="Q1">What is Committe/TaskForce Management System?</h2>
            <p>bla bla bla</p>
            <h2 id="Q2">How to access TMS system?</h2>
            <p>bla bla bla</p>
            <h2 id="Q3">How to sign up/sign in?</h2>
            <p>bla bla bla</p>
            <h2 id="Q4">What to do if you forgot your password or can't sign in.</h2>
            <p>bla bla bla</p>
            
        </div>
        
        
        
        
        
        
    </body>
</html>
