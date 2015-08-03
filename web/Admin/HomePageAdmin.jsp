<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
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
               <a class="navbar-brand" href="#">UTM Task Force</a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
               <ul class="nav navbar-nav">
                   <li><a href="">Home</a></li>
                  <li><a href="">News</a></li>
                  
                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Staff Option <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="Staff Option/registerMember.jsp">Input new staff data</a></li>
                        <li class="divider"></li>
                        <li><a href="Staff Option/viewStaff.jsp">View all staff profile</a></li>
                        <li class="divider"></li>
                        <li><a href="Staff Option/postManagement.jsp">Post management</a></li>
                     </ul>
                  </li>  
                  
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T Option<b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="CT option/viewCTinfo.jsp">View C/T info</a></li>
                        <li class="divider"></li>
                        <li><a href="CT option/createTask.jsp">Create C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="CT option/viewTaskforce_alter.jsp">Update C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="CT option/viewTaskforce_del.jsp">Delete C/T</a></li>
                        <li class="divider"></li>
                        </ul>
                     </li>    
                  
                  <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T Expiration <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="CT Expiration/searchExpired3.jsp">3 months</a></li>
                        <li class="divider"></li>
                        <li><a href="CT Expiration/searchExpired2.jsp">2 months</a></li>
                        <li class="divider"></li>
                        <li><a href="CT Expiration/searchExpired1.jsp">1 months</a></li>
                        <li class="divider"></li>
                        <li><a href="CT Expiration/searchOverdue.jsp">Overdue</a></li>
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
                        <li><a href="../Login.jsp">Log Out</a></li>
                     </ul> 
                     </li>
               </ul>
                
            </div>
         
        <img src="../images/utm.jpg" alt="UTM" style="width:1350px;height:550px;">
       </nav>
       <br><br><p>Welcome to admin home page!</p>
    </body>
</html>
