<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <style>
           
          .UTMlogo {
            position: absolute;
            left: 20px;
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
<body style="background-color:#FFFFCC">
        
        <nav class="navbar navbar-inverse" role="navigation" >
            <div style="background: -webkit-linear-gradient(#FFCC66, white); height: 120px;">
                <div class="UTMlogo"><img src="../images/logo-UTM-baru.png" alt="Home" style="width:210px; height:100px; "/></div>
                <div style="position: absolute; right: 0px; padding: 5px 20px 5px 20px; background-color: #990033; height: 30px; width: 35%;
                     color: white; text-align: center; font-family: Arial Black, Gadget, sans-serif; border-bottom-left-radius: 10px;"> TASKFORCE MANAGEMENT SYSTEM</div>
                     <div style="position: absolute; right: 15px; padding-top: 25px;"><h2 style="font-family: Arial Black, Gadget, sans-serif; color: darkred">FACULTY OF COMPUTING</h2></div>
                 <div style="position: absolute; right: 50px; padding-top: 85px;"><img src="../images/inno.png"></div>
            </div>
            
            <div style="background: -webkit-linear-gradient(black, darkred); height: 5px">
            </div>
     
            <div class="navbar-header" >
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="HomePagePentadbir.jsp">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
                <ul class="nav navbar-nav">
                    <li><a href="news.jsp">News</a></li>
                    <li><a href="viewProfile.jsp">My Profile</a></li>
                    <li><a href="viewStaff.jsp">View all staff profile</a></li>
                    <li><a href="viewCTinfo.jsp">View C/T info</a></li>
                </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="FAQ.jsp"><span class="glyphicon glyphicon-user"></span>FAQ</a></li>
                        <li><form method="post" action="../Logout"><button><span class="glyphicon glyphicon-log-out"> LOGOUT</span></button></form></li>
                    </ul>
                    
                </ul>
                    
            </div>
            <div style="background: -webkit-linear-gradient(darkred, black); height: 5px">
                
            </div>
        </nav>
    </body>
</html>
