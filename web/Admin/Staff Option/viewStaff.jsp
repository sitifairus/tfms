<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : viewStaff
    Created on : Jul 26, 2015, 2:45:14 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View staff</title>
    </head>
    <body>
       
    </body>
</html>

<f:view>
        <form action="viewStaff.jsp">
            <table align="center">
                <h1 align="center">View Staff</h1>
                <h3 align="center">Search engine</h3>
                
                <tbody>
                    <tr>
                        <td>Filter by Name</td>
                        <td>:<input type="text" name="name" size="30"></td>
                    </tr>
                    <tr>
                        <td>Filter by Staff ID</td>
                        <td>:<input type="text" name="ID" size="30"></td>
                    </tr>
                    <tr>
                        <td>Filter by Position</td>
                        <td>:
                            <select name="position">
                                <option value="">Not Selected</option>
                                <option value="1">Lecturer</option>
                                <option value="2">Senior Lecture</option>
                                <option value="3">Associate Professor</option>
                                <option value="4">Professor</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Filter by Department</td>
                        <td>:
                            <select name="position">
                                <option value="">Not Selected</option>
                                <option value="1">Computer Science</option>
                                <option value="2">Software Engineering</option>
                                <option value="3">Information System</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Filter by Status</td>
                        <td>:
                            <select name="status">
                                <option value="">Not Selected</option>
                                <option value="1">Active</option>
                                <option value="2">Inactive</option>
                            </select>
                        
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>

                    <td>
                        <input type="submit" name="search" value="Search">
                    </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </f:view>


<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>