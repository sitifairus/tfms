<%-- 
    Document   : viewTaskforce_alter
    Created on : Jul 29, 2015, 9:56:19 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../head.jsp" %>
        <title>View Task Alter</title>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <form method="POST" action="viewTaskforce_alter.jsp">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <th colspan="3" ><h2 align="center">Alter Task Force</h2></th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td valign="top"><b>Task Force ID</b></td>
                        <td valign="top">:</td>
                        <td>IDD<br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>Task Force Name</b></td>
                        <td valign="top">:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /><br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>Task Force Coordinator</b><br><a href="changeCoordinator.jsp">Change Coordinator</a></td>
                        <td valign="top">:</td>
                        <td>name orang</td>
                       
                    </tr>
                    <tr>
                        <td valign="top"><b>Start Date</b></td>
                        <td valign="top">:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /><br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>End Date</b></td>
                        <td valign="top">:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /><br><br></td>
                   <br><br> </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Proceed" /><input onclick="history.back()" type="submit" value="Cancel" /></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
        
    </body>
</html>
<%@ include file="../footer.jsp" %>