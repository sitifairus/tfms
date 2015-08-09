<%-- 
    Document   : adminHeader
    Created on : Aug 3, 2015, 12:56:56 PM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <style>
           
          .UTMlogo {
            position: absolute;
            left: 0px;
            width: 300px;
            padding: 10px;
          .taskLogo{
            position: absolute;
            right: 0px;
            padding: 5px 20px 5px 20px;
            height: 20px;
            width: 500px;
            background-color: darkred;
            }
        }
      </style>
    </head>
    <body style="background-color:#FFDE9D">
        
        <nav class="navbar navbar-inverse" role="navigation" >
            <div style="background: -webkit-linear-gradient(#FFCC66, white); height: 120px;">
                <div class="UTMlogo"><img src="../images/logo-UTM-baru.png" alt="Home" style="width:210px; height:100px; "/></div>
                <div style="position: absolute; right: 0px; padding: 5px 20px 5px 20px; background-color: darkred; height: 30px; width: 45%;
                     color: white; text-align: center; font-family: Arial Black, Gadget, sans-serif; border-bottom-left-radius: 10px;">Committee/Taskforce Management System</div>
                <div style="position: absolute; right: 10px; padding-top: 40px;"><img src="../images/foc.png" style="height:70px; "/></div>
                
            </div>
            <div style="background: -webkit-linear-gradient(white, grey); height: 10px">
                
            </div>
            <div class="navbar-header" >
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="HomePageAdmin.jsp">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
              
               <ul class="nav navbar-nav">
                 
                  <li><a href="news.jsp">News</a></li>
                  
                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Staff Option <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="registerMember.jsp">Register new staff</a></li>
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
                    </ul> 
                
                     <ul class="nav navbar-nav navbar-right">
                        
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> FAQ</a></li>
                        <li><a href="../Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
                      </ul>
                </div>              
            
        </nav>
        
    </body>
</html>
