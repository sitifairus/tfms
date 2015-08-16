<%-- 
    Document   : viewStaff.jsp
    Created on : Aug 5, 2015, 10:51:49 AM
    Author     : aya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../head.jsp" %>
        <title>Task Force System</title>
        <style>
            body {
                padding-top: 50px;
            }
            .dropdown.dropdown-lg .dropdown-menu {
                margin-top: -1px;
                padding: 6px 20px;
            }
            .input-group-btn .btn-group {
                display: flex !important;
            }
            .btn-group .btn {
                border-radius: 0;
                margin-left: -1px;
            }
            .btn-group .btn:last-child {
                border-top-right-radius: 4px;
                border-bottom-right-radius: 4px;
            }
            .btn-group .form-horizontal .btn[type="submit"] {
              border-top-left-radius: 4px;
              border-bottom-left-radius: 4px;
            }
            .form-horizontal .form-group {
                margin-left: 0;
                margin-right: 0;
            }
            .form-group .form-control:last-child {
                border-top-left-radius: 4px;
                border-bottom-left-radius: 4px;
            }

            @media screen and (min-width: 768px) {
                #adv-search {
                    width: 500px;
                    margin: 0 auto;
                }
                .dropdown.dropdown-lg {
                    position: static !important;
                }
                .dropdown.dropdown-lg .dropdown-menu {
                    min-width: 500px;
                }
            }
        </style>
    </head>
    <body>
        <%@ include file="StaffHeader.jsp" %>
        <div class="container">
	<div class="row">
		<div class="col-md-12">
            <div class="input-group" id="adv-search">
                <input type="text" class="form-control" placeholder="Search by"/>
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" ><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form" action="../search" method="post">
                                  <div class="form-group">
                                    <label for="Name">Name</label>
                                    <input class="form-control" type="text" name="name" id="Name"/>
                                  </div> 
                                  <div class="form-group">
                                    <label for="id">Staff ID</label>
                                    <input class="form-control" type="text" name="Staffid" id="id" />
                                  </div>
                                  <div class="form-group">
                                    <label for="FilterPosition">Filter by Position</label>
                                    <select name="FilterPosition" id="FilterPosition" class="form-control">
                                        <option value="" selected>Not Selected</option>
                                        <option value="Lecturer">Lecturer</option>
                                        <option value="Senior Lecturer">Senior Lecturer</option>
                                        <option value="Associate Professor">Associate Professor</option>
                                        <option value="Professor">Professor</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="FilterDepartment">Filter by Department</label>
                                    <select name="FilterDepartment" id="FilterDepartment" class="form-control">
                                        <option value="" selected>Not Selected</option>
                                        <option value="Computer Science">Computer Science</option>
                                        <option value="Software Engineering">Software Engineering</option>
                                        <option value="Information System">Information System</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="FilterStatus">Filter by Status</label>
                                    <select class="form-control" name="FilterStatus" id="FilterStatus">
                                        <option value="" selected>Not Selected</option>
                                        <option value="active">Active</option>
                                        <option value="inactive">Inactive</option>
                                    </select>
                                  </div>
                                  <span class="pull-right">  
                                  <button type="submit" class="btn btn-primary" value="search" ><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                  </span>
                                </form>
                            </div>
                        </div>
                        <!--<button type="button" class="btn btn-primary" value="search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>-->
                    </div>
                </div>
            </div>
          </div>
        </div>
	</div>

    </body>
</html>

