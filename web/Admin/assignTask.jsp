<%-- 
    Document   : assignTask
    Created on : Sep 7, 2015, 9:57:36 AM
    Author     : on
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../head.jsp" %>
    </head>
    <body >
        <%@ include file="adminHeader.jsp" %>
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
            String userID=request.getParameter("userID");
            DB db=new DB();
            db.connect();
            db.query("SELECT * FROM user WHERE userID='"+userSession+"'");
            String name=db.getDataAt(0, "name");
            String staffID=db.getDataAt(0,"staffID");
        %>
        <form method="post" action="../assignTask">
        <table align="center" style="width: 500px;">
            <tr>
                <th><input type="hidden" name="userID" value="<%=userSession%>">
                    <label for="startDate" class="col-sm-8 control-label">Name:</label></th>
                <th><%=name%></th>
            </tr>
            <tr>
                <th><label for="startDate" class="col-sm-8 control-label">Staff ID:</label></th>
                <th><%=staffID%></th>
            </tr>
            <tr>
                <th><label class="col-sm-8 control-label">Committee/Taskforce:</label></th>
                <%
                    db.query("SELECT * FROM tf ");
                    
                %>
                <th>
                    <select name="taskID" id="position" class="form-control" required>
                        <%
                            for(int i=0; i<db.getNumberOfRows(); i++)
                            {
                                String taskName=db.getDataAt(i, "TFname");
                                String taskID=db.getDataAt(i,"idTF"); 
                        %>
                            <option value="<%=taskID%>"><%=taskName%></option>    
                        <%
                            }
                        %>
                    </select>
                </th>
            </tr>
            <tr>
                <th><label for="startDate" class="col-sm-8 control-label">Start Date:</label></th>
                <th><input type="date" class="form-control" name="sDate" required></th>
            </tr>
            <tr>
                <th><label for="endDate" class="col-sm-8 control-label">End Date:</label></th>
                <th><input type="date" class="form-control" name="lDate" required></th>
            </tr>
            <tr>
                <th colspan="2" style="padding-left: 212px;">
                    <button type="submit" class="btn btn-default">Confirm</button>
                </th>
            </tr>
        </table>
        </form>
    </body>
</html>
