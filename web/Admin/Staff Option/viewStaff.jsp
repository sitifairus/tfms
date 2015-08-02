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
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
            img {
                opacity: 1.0;
                filter: alpha(opacity=20); /* For IE8 and earlier */
            }       
        </style>
    </head>
    <body>
        <nav class="navbar navbar-inverse" role="navigation" style="width:1365px">
            <div class="navbar-header" >
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="../HomePageAdmin.jsp">UTM Task Force</a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
               <ul class="nav navbar-nav">
                   <li><a href="../HomePageAdmin.jsp">Home</a></li>
                  <li><a href="#">News</a></li>
                  
                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Staff Option <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="registerMember.jsp">Input new staff data</a></li>
                        <li class="divider"></li>
                        <li><a href="viewStaff.jsp">View all staff profile</a></li>
                        <li class="divider"></li>
                        <li><a href="postManagement.jsp">Post management</a></li>
                     </ul>
                  </li>  
                  
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T Option<b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="../CT option/viewCTinfo.jsp">View C/T info</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT option/createTask.jsp">Create C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT option/viewTaskforce_alter.jsp">Update C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT option/viewTaskforce_del.jsp">Delete C/T</a></li>
                        <li class="divider"></li>
                        </ul>
                     </li>    
                  
                  <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T Expiration <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="../CT Expiration/searchExpired3.jsp">3 months</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT Expiration/searchExpired2.jsp">2 months</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT Expiration/searchExpired1.jsp">1 months</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT Expiration/searchOverdue.jsp">Overdue</a></li>
                        <li class="divider"></li>
                     </ul>
                     </li>
                      
                      <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                         Group <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="Groups/inGroup.jsp">In taskforce</a></li>
                        <li class="divider"></li>
                        <li><a href="Groups/noGroup.jsp">Not in any taskforce</a></li>
                     </ul> 
                     </li>
                     
                      <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Log Out <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="../../Login.jsp">Log Out</a></li>
                     </ul> 
                     </li>
               </ul>
                
            </div>
        </nav>
        <table align="center">
             <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
                <h2 align="center">View Staff- Search engine</h2>
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
                
              <div class="form-group">
                <label for="FilterStatus" class="col-sm-4 control-label">By Status:</label>
                <div class="col-sm-8">
                    <select name="FilterStatus" id="FilterStatus" class="form-control">
                        <option value="">Choose Status...</option>
                        <option>Active</option>
                        <option>Not Active</option>
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

<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>