<%-- 
    Document   : newjsp
    Created on : Aug 3, 2015, 9:47:40 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Connection</title>
    </head>
    <body>
         <%
             String userN = request.getParameter("username");
             String passs= request.getParameter("password");
             String username=null;
         DB db= new DB();
         if(db.connect())
         {
            db.query("select * from user where username='"+userN+"' and password='"+passs+"' ");
            username=db.getDataAt( 0,"username");
            if(username!=null)
            {
                out.println("password:"+username);
                response.sendRedirect("Admin/HomePageAdmin.jsp");
                        }
            else
            {
                out.println("wrong username or password");
                response.sendRedirect("Login.jsp");
            }
         }
         else
         {
             System.out.println("not connecteed!!");
         }
         
         
         %>
    </body>
</html>
