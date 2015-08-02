<%-- 
    Document   : changeStaff
    Created on : Jul 27, 2015, 9:35:20 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Staff</title>
    </head>
    <body>
        
        
    </body>
</html>
<f:view>
    <h:form>
        <h1 align="center">Change Staff for Dekan/Timbalan Dekan position</h1>
   
    <h2 align="center">Search engine</h2>
    
    <table align="center" >
        
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
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" name="search" value="Search">
                    </td>
                    </tr>
                </tbody>
    </table>
    </h:form>

</f:view>


<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
