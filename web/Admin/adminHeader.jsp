<%-- 
    Document   : adminHeader
    Created on : Aug 3, 2015, 12:56:56 PM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
    </head>
    <body>
        <nav class="navbar navbar-inverse" role="navigation" style="width:1297px">
            <div class="navbar-header" >
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="HomePageAdmin.jsp">Register New Staff</a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
               <ul class="nav navbar-nav">
                   <li><a href="HomePageAdmin.jsp">Home</a></li>
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
                        <li><a href="viewCTinfo.jsp">View C/T info</a></li>
                        <li class="divider"></li>
                        <li><a href="createTask.jsp">Create C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="viewTaskforce_alter.jsp">Update C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="viewTaskforce_del.jsp">Delete C/T</a></li>
                        <li class="divider"></li>
                        </ul>
                     </li>    
                  
                  <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T Expiration <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="searchExpired3.jsp">3 months</a></li>
                        <li class="divider"></li>
                        <li><a href="searchExpired2.jsp">2 months</a></li>
                        <li class="divider"></li>
                        <li><a href="searchExpired1.jsp">1 months</a></li>
                        <li class="divider"></li>
                        <li><a href="searchOverdue.jsp">Overdue</a></li>
                        <li class="divider"></li>
                     </ul>
                     </li>
                      
                      <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                         Group <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="inGroup.jsp">In taskforce</a></li>
                        <li class="divider"></li>
                        <li><a href="noGroup.jsp">Not in any taskforce</a></li>
                     </ul> 
                     </li>
                     
                      <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Log Out <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="../Login.jsp">Log Out</a></li>
                     </ul> 
                     </li>
               </ul>
                
            </div>
        </nav>
    </body>
</html>
