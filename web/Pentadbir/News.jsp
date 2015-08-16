<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>UTM Task Force</title>
        
<%@include file="../head.jsp" %>

<style>
            .carousel-inner > .item > img,
            .carousel-inner > .item > a > img {
            width: 50%;
            height: 300px;

            
            
            margin: auto;
            }
</style>

</head>

<body>
        
        <%@include file="PentadbirHeader.jsp" %><br><br><br>
        <MARQUEE><center><p>News Page!</p></center></MARQUEE><br><br><br>
        
        
        <div id="myCarousel" class="carousel slide" data-ride="carousel" >
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="../images/se.jpg" alt="Welcome">
            <div class="carousel-caption"> Welcome to Utm News Page</div>
        </div>

        <div class="item">
            <img src="../images/news1.jpg" alt="Management">
            <center><a href="http://www.news.utm.my/2015/08/engagement-between-utm-top-management-and-utm-emeritus-professors-fruitful/">Engagement between UTM Top Management and UTM Emeritus Professors Fruitful</a>
            </center>
        </div>

        <div class="item">
            <img src="../images/news2.jpg" alt="rank">
            <center><a href="http://www.news.utm.my/2015/08/webo-july-2015/">Webometrics: UTM at Malaysia Second Highest of July 2015 Ranking</a>
            </center>
        </div>

        <div class="item">
            <img src="../images/news3.jpg" alt="robotcop2015">
            <center><a href="http://www.news.utm.my/2015/08/utm-represented-malaysia-in-robocup-2015-hefei-china/">UTM Represented Malaysia in Robocup 2015, Hefei China</a>
            </center>
        </div>

            
        <div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        </div>
            
        </div>
        
        <%@include file="../footer.jsp" %>
        
</body>
</html>

