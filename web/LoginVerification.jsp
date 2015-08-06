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
             String status=null;
             String userType=null;
            DB db= new DB();
            //System.out.println("password:");
            if(db.connect())
            {
            db.query("select * from user where userID='"+userN+"' and password='"+passs+"' ");
            
            username=db.getDataAt( 0,"userID");

            if(username!=null)
            {
                out.println("password:"+username);
                status=db.getDataAt( 0,"status");
                userType=db.getDataAt( 0,"userType");
                out.println(status);
                if(status.equals("active"))
                {
                    if(userType.equals("admin"))
                    {
                        response.sendRedirect("Admin/HomePageAdmin.jsp");
                    }
                    else if(userType.equals("lecturer"))
                    {
                        response.sendRedirect("Staff/HomePage Staff.jsp");
                    }
                    else
                    {
                        response.sendRedirect("Pentadbir/HomePagePentadbir.jsp");
                    }
                     
                }
                else
                {
                    out.println("your account not active!");
                    
                }
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
         
         db.close();
         %>
    </body>
</html>
