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
        <title>UTM Task Force</title>
        
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <table align="center">
             <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
                <h2 align="center">View Staff</h2>
                <h3 align="center"> Search Engine</h3><br>
                <form role="form" action="viewStaff.jsp">
              <div class="form-group">
                <label for="FilterName" class="col-sm-4 control-label">By Name:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" name="filterName" placeholder="Enter Staff's Name" >
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="FilterID" class="col-sm-4 control-label">By Staff ID:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" name="filterID" placeholder="Enter Staff's ID" >
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="FilterPosition" class="col-sm-4 control-label">By Position:</label>
                <div class="col-sm-8">
                    <select name="FilterPosition" id="FilterPosition" class="form-control" >
                        <option value="">Not Selected</option>
                        <option value="1">Lecturer</option>
                        <option value="2">Senior Lecturer</option>                                
                        <option value="3">Associate Professor</option>
                        <option value="4">Professor</option>
                    </select>
                </div>
              </div><br><br>
                <div class="form-group">
                <label for="FilterDepartment" class="col-sm-4 control-label">By Department:</label>
                <div class="col-sm-8">
                    <select name="FilterDepartment" id="FilterDepartment" class="form-control" >
                        <option value="">Not Selected</option>
                        <option value="1">Computer Science</option>
                        <option value="2">Software Engineering</option>
                        <option value="3">Information System</option>
                    </select>
                </div>
              </div><br><br>
                
              <div class="form-group">
                <label for="FilterStatus" class="col-sm-4 control-label">By Status:</label>
                <div class="col-sm-8">
                    <select name="FilterStatus" id="FilterStatus" class="form-control" >
                        <option value="">Not Selected</option>
                        <option value="1">Active</option>
                        <option value="2">Not Active</option>
                    </select>
                </div>
              </div><br><br>
                <div class="form-group" style="padding-left:171px;">
                    
                    <button type="submit" class="btn btn-default">Search</button></a>
              </div><br><br>
            </form>
             </div>
        </table>
        <%
            String name=null;
            String staffID=null;
            String post=null;
            String dept=null;
            String stat=null;
            name=request.getParameter("filterName");
            staffID=request.getParameter("filterID");
            post=request.getParameter("FilterPosition");
            dept=request.getParameter("FilterDepartment");
            stat=request.getParameter("FilterStatus");
            out.println(name+staffID+post+dept+stat);
            if(name!=null||staffID!=null||post!=null||dept!=null||stat!=null)
            {
                
                out.print("okey");
                out.println(name+staffID+post+dept+stat);
            }
        %>
    </body>
</html>
<%@ include file="../footer.jsp" %>
<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
