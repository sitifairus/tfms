<%-- 
    Document   : inGroup
    Created on : Aug 2, 2015, 8:05:42 AM
    Author     : user8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Has/Have TaskForce</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
    
    </body>
    <%@ include file="adminHeader.jsp" %>
</html>
<f:view>
        <h:form><h2 align="center">Staff that is in taskforce/committee</h2>
           <h2 align="center">Search Engine</h2></h:form>
            <table align="center" border="0" cellspacing="1" cellpadding="1">
               
                <tbody>
                    <tr>
                        <td>Filter search by name</td>
                        <td>:<input type="text" name="name" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Filter search by staff ID</td>
                        <td>:<input type="text" name="username" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Filter search by position</td>
                         <td>:<select name="position">
                                <option value="">--Not Selected--</option>
                                <option value="1">Senior Lecturer</option>
                                <option value="2">Lecturer</option>
                                <option value="3">Associate Professor</option>
                                <option value="4">Professor</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Filter search by department</td>
                        <td>:<select name="department">
                                <option value="">--Not Selected--</option> 
                                <option value="1">Computer Science</option>
                                <option value="2">Software Engineering</option>
                                <option value="3">Information System</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td> 
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;"><input type="submit" value="Search" /></td>
                    </tr>
                                        
                </tbody>
            </table>
           
</f:view>

