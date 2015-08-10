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
                    <li><a href="#">News</a></li>
                    <li><a href="#">View all staff profile</a></li>
                    <li><a href="#">View C/T info</a></li>
                
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>FAQ</a></li>
                        <li><a href="../Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
                    </ul>
                    
                </ul>
                    
            </div>
        </nav>
    </body>
</html>
