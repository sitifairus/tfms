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
        <%@ include file="adminHeader.jsp" %>
        
        <table align="center">
            <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
                <h2 align="center">Staff that is in taskforce/committee</h2>
                <h3 align="center">Search Engine</h3>
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
                            <option value="">--Not Selected--</option>
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
                            <option value="">--Not Selected--</option>
                            <option>Computer Science</option>
                            <option>Software Engineering</option>
                            <option>Information System</option>
                        </select>
                    </div>
                    </div>
                    <div class="form-group" style="padding-left:171px;">
                       <button type="submit" class="btn btn-default">Search</button>
                    </div>
                </form>
            </div>
        </table>
    </body>  
</html>
