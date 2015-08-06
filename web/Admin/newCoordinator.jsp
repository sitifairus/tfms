<%-- 
    Document   : newCoordinator
    Created on : Jul 27, 2015, 3:51:14 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <%@include file="../head.jsp" %>
        <title>New Coordinator</title>
    </head>
        <body>
        <%@ include file="adminHeader.jsp" %>
        <table align="center">
             <div class="container" style="width:700px; padding-bottom: 50px; padding-top: 20px;">
                <h2 align="center">Choose a new coordinator for the newly assigned committee/taskforce</h2><br>
                <h3 align="center">Search engine</h3>
            <form role="form">
              <div class="form-group">
                <label for="FilterName" class="col-sm-4 control-label">By Name:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" id="filterName" placeholder="Enter Staff's Name">
                </div><br><br>
              </div>
              <div class="form-group">
                <label for="FilterID" class="col-sm-4 control-label">By Staff ID:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" id="filterID" placeholder="Enter Staff's ID">
                </div><br><br>
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
                </div><br><br>
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
                </div><br><br><br><br>
              </div>
                
              
                <div class="form-group" style="padding-left:171px;" align="center">
                  
                    <button type="submit" class="btn btn-default">Search</button>
              </div>
            </form>
             </div>
        </table>
       
    </body>
</html>
<%@ include file="../footer.jsp" %>
