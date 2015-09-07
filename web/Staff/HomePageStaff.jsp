<!DOCTYPE html>
<html>
<head>
<title>UTM Task Force</title>
        
<%@include file="../head.jsp" %>
</head>

<body>
        <%
            String userID=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userID==null))||(!userType.equals("lecturer")&&!userType.equals("Lecturer"))) {
                response.sendRedirect("../message.jsp");
            }
        %>
        <%@include file="StaffHeader.jsp" %><br><br><br>
        <p><h3 align="center">Welcome to staff home page!</h3><br><br><br>
        <%@include file="../footer.jsp" %>

</body>
</html>
