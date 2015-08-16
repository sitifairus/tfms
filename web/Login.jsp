<%@page import="TFMSystem.LoginVerification"%>
<html>
        
<head>
    <title>UTM Task Force</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
</head>
    
<body style="background-color:lightgoldenrodyellow">
    
    <center><img src="images/logo-UTM-baru.png" alt="utm" style="width:auto;height:200px;"><center>
    
    <div style="margin-top:40px;">
    <MARQUEE> Welcome To UTM Task Force Login Page</MARQUEE>
    </div>   
        <div style="text-align:center;margin-top:55px;">
        <a href="#" data-toggle="modal" data-target="#LoginModal">Login</a><br><br><br><br>
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
                                            <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Staff's ID" required>                                        
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
        
    <script type="text/javascript">
    
    tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

    function GetClock(){
    var d=new Date();
    var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getYear();
    if(nyear<1000) nyear+=1900;
    var d=new Date();
    var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;

    if(nhour==0){ap=" AM";nhour=12;}
        else if(nhour<12){ap=" AM";}
            else if(nhour==12){ap=" PM";}
                else if(nhour>12){ap=" PM";nhour-=12;}

    if(nmin<=9) nmin="0"+nmin;
        if(nsec<=9) nsec="0"+nsec;

        document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+" "+nhour+":"+nmin+":"+nsec+ap+"";
}

    window.onload=function(){
    GetClock();
    setInterval(GetClock,1000);
    }
}
</script>
<div id="clockbox"></div>
       
<%@ include file="footer.jsp" %> 
</body>


    

    

                        
     

    

    
