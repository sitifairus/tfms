<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
        
        <%
            String UserSession = (String)session.getAttribute("user");
            String UserType = (String)session.getAttribute("userType");
            //out.println(UserSession);
            if ((!(UserSession==null))&&(UserType.equals("admin"))) {

        %>
        <%@include file="adminHeader.jsp" %>
        <h2 align="center">Welcome to Admin home page!</h2><br>
        
         <div id="myCarousel" class="carousel slide" data-ride="carousel" >
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="../images/canselor.jpg" alt="canselor">
        </div>

        <div class="item">
            <img src="../images/se.jpg" alt="se">
        </div>

        <div class="item">
            <img src="../images/raya.jpg" alt="raya">
        </div>
            
        <div class="item">
            <img src="../images/staff.jpg" alt="staff">
        </div>

        <div class="item">
            <img src="../images/psm.jpg" alt="psm">
        </div>
        </div>

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
        <%@include file="../footer.jsp" %>
        
        <%
            }
        else
            {
                out.println("You have not login!");
            }
        %>
       
    </body>
</html>
