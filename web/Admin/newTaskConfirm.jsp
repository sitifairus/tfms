<%-- 
    Document   : newTaskConfirm
    Created on : Jul 28, 2015, 6:08:57 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../head.jsp" %>
        <title>New Task Confirm</title>
    </head>
    <body>
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
        %>
        <%@ include file="adminHeader.jsp" %>
        <table border="0" align="center">
            <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th><h1>Confirmation</h1></th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Taskname</td>
                    <td>:</td>
                </tr>
                <tr>
                    <td>Taskforce of choice</td>
                    <td>:</td>
                </tr>
                <tr>
                    <td>Date start</td>
                    <td>:</td>
                </tr>
                <tr>
                    <td>Date end</td>
                    <td>:</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;"><font face=" Helvetica" size="2"> Press proceed if you're alright with the input. Otherwise press back to undo the error. </font></td>
                </tr>
                
                <tr>
                    <td>&nbsp;</td>
                </tr> 
                
                <tr> 
                    <td colspan = "2" style="text-align:center;"><font face=" Helvetica"><input type="submit" value ="Proceed"></font></td>
                </tr>
                
                <tr>
            <form action="newCoordinator.jsp" method="post"> 
                <td colspan = "2" style="text-align:center;"><font face=" Helvetica"><input type="submit" value ="Back"></font></td>
            </tr>
            </form>

                
            </tbody>
        </table>

    </body>
</html>
<%@ include file="../footer.jsp" %>