<%-- 
    Document   : HomeLecturer
    Created on : Jul 27, 2015, 12:46:39 PM
    Author     : Dell
--%>

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
        <%  String userID=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userID==null))||(!userType.equals("Pentadbir")&&!userType.equals("pentadbir"))) {
                response.sendRedirect("../message.jsp");
            }%>
        <%@include file="PentadbirHeader.jsp" %><br>
        <p><h3 align="center">Welcome to Pentadbir home page!</h3><br><br>
        

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
</body>
</html>
<%@include file="../footer.jsp" %>
