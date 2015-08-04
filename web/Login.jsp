<%@page import="package1.DB"%>
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
        
        <div class="row-header" style="text-align:center; color:black;">

        <h3>Welcome to UTM Task Force Login</h3>
        </div>
        <div class="row header" style="text-align:center;margin-top:40px;">
        <a href="#" data-toggle="modal" data-target="#LoginModal">Login</a><br><br><br><br>
         <img src="images/utm1.jpg" alt="UTM" style="width:1350px;height:550px;">
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

                            <form id="loginform" class="form-horizontal" role="form" method="post" action="LoginVerification.jsp">

                                <div style="margin-bottom: 25px" class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Staff'd ID" required>                                        
                                        </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input id="login-password" type="password" class="form-control" name="password" placeholder="password" required>
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
        
        </body>
<%@ include file="footer.jsp" %> 
    

    

                        
     

    

    
