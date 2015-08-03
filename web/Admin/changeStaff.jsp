<%-- 
    Document   : changeStaff
    Created on : Jul 27, 2015, 9:35:20 AM
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
                <h2 align="center">Change Staff for Dekan/Timbalan Dekan position</h2>
            <form role="form">
              <div class="form-group">
                <label for="FilterName" class="col-sm-4 control-label">By Name:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" id="filterName" placeholder="Enter Staff's Name">
                </div>
              </div>
              <div class="form-group">
                <label for="FilterID" class="col-sm-4 control-label">By Staff ID:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" id="filterID" placeholder="Enter Staff's ID">
                </div>
              </div>
              <div class="form-group">
                <label for="FilterPosition" class="col-sm-4 control-label">By Position:</label>
                <div class="col-sm-8">
                    <select name="FilterPosition" id="FilterPosition" class="form-control">
                        <option value="">Choose Position...</option>
                        <option>Lecturer</option>
                        <option>Senior Lecturer</option>                                
                        <option>Associate Professor</option>
                        <option>Professor</option>
                    </select>
                </div>
              </div>
                <div class="form-group">
                <label for="FilterDepartment" class="col-sm-4 control-label">By Department:</label>
                <div class="col-sm-8">
                    <select name="FilterDepartment" id="FilterDepartment" class="form-control">
                        <option value="">Choose Department...</option>
                        <option>Computer Science</option>
                        <option>Software Engineering</option>
                        <option>Information System</option>
                    </select>
                </div>
              </div>
              <div class="form-group" style="padding-left:171px;">
                  
                    <button type="submit" class="btn btn-default">Search</button>
              </div>
        </table>
    </body>
</html>

<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
