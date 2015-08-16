<%@page import="TFMSystem.LoginVerification"%>
<html>
        
<head>
    <title>TFMSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
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
<body style="background-color:white">
   
            <div style="background: -webkit-linear-gradient(#FFCC66, white); height: 120px;">
               
                <div class="UTMlogo"><img src="images/logo-UTM-baru.png" alt="Home" style="width:300px; height:100px; "/></div>
               <div style="position: absolute; right: 0px; padding: 5px 20px 5px 20px; background-color: #990033; height: 30px; width: 35%;
                     color: white; text-align: center; font-family: Arial Black, Gadget, sans-serif; border-bottom-left-radius: 10px;"> TASKFORCE MANAGEMENT SYSTEM</div>
                <div style="position: absolute; right: 15px; padding-top: 25px;"><h2 style="font-family: Arial Black, Gadget, sans-serif; color: darkred">FACULTY OF COMPUTING</h2></div>
                 <div style="position: absolute; right: 50px; padding-top: 85px;"><img src="images/inno.png"></div>
                
            </div> 
            <div style="background: -webkit-linear-gradient(yellow, darkred); height: 2px">
            </div>
            <div style="background: -webkit-linear-gradient(darkred, yellow); height: 2px">
            </div>
           <br>
          
   <div class="container">
   <div class="jumbotron">
  	<div class="row">
  	<div class="col-md-3">
            <div class="list-group" id="sidebar">
                <a href="#" class="list-group-item" style="background-color: darkred; color: white;">Users</a>
                <a href="#" class="list-group-item" data-toggle="modal" data-target="#LoginModal"><span class="glyphicon glyphicon-log-in"> Admin</span></a>
                <a href="#" class="list-group-item" data-toggle="modal" data-target="#LoginModal"><span class="glyphicon glyphicon-log-in"> Pentadbir</span></a>
                <a href="#" class="list-group-item" data-toggle="modal" data-target="#LoginModal"><span class="glyphicon glyphicon-log-in"> Staff/Pensyarah</span></a>
            </div>
        </div>
    <div id="Wrapper">
            <center> 
                <marquee direction="up" width="600" height="300" scrollamount="2" BGCOLOR=#FFFFFF style="border:solid darkred; border-width:2px; ">
                    <h4 align="center">
                        <font color="#000000">
                        test<br>
                        test<br>
                        new system is being created<br><br>
                        checking for error..<br><br>
                        deploying..<br><br><br><br>
                        A new system created ! ---> named : TFMSystem ^_^  <br><br>
                        
                        Database have been updated. Please check your info and update where necessary
                    </h4>
                </marquee>
            </center>
    </div>
        
        <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true" >
            <div class="container">    
                <div id="loginbox" style="margin-top:50px; " class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >                    
                    <div class="panel panel-info" >
                        <div class="panel-heading">
                            <div class="panel-title"><img src="images/logoUtm.png" alt="" style="width:50px; height: 50px;"/>.  <b>Sign In</b></div>

                            <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                        </div>     

                        <div style="padding-top:30px" class="panel-body" >

                            <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                            <form id="loginform" class="form-horizontal" role="form" method="post" action="./LoginVerification">

                                <div style="margin-bottom: 25px" class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Enter Your ID" required>                                        
                                        </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input id="login-password" type="password" class="form-control" name="password" placeholder="Enter Your Password" required>
                                </div>
                                    <div style="margin-top:10px" class="form-group">
                                        <!-- Button -->

                                        <div class="col-sm-12 controls" style=" left:0px;">
                                          <button id="btn-login" class="btn btn-success" >Login  </button>
                                     
                                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                            Close
                                            </button>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-12 control">
                                            <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                                copyright D'Amateur UTM
                                            </div>
                                        </div>
                                    </div>    
                                </form> 
                        </div>                     
                    </div>  
            </div>
            </div>
        </div>
        </div></div></div>
</body>
</html>
<%@ include file="footer.jsp" %> 
    
