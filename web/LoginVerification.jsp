<%-- 
    Document   : newjsp
    Created on : Aug 3, 2015, 9:47:40 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*" %>
import com.mysql.jdbc.Driver;
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Connection</title>
    </head>
    <body>
         <%!
         public class con{
            String url = "jdbc:mysql://localhost:3306/forcetaskmanagement";
            String USERNAME = "root";
            String PASSWORD = "";
            PreparedStatement selectUser=null;
            ResultSet resultset=null;
           Connection connection = null;

           public con(){
               try{
               connection = DriverManager.getConnection (url,USERNAME,PASSWORD);
               selectUser= connection.prepareStatement(
                    "SELECT * FROM forcetaskmanagement.viewstaff");
               }catch(SQLException e){
                   e.printStackTrace();

                   }
           }
           
           public ResultSet getStaff(){
            try{
            resultset= selectUser.executeQuery();
            }
            catch(SQLException e){
                e.printStackTrace();
            }
            return resultset;
            }
        }     
        %>
         <%
            con user = new con();
            ResultSet staffs = user.getStaff();
        %>

    </body>
</html>
