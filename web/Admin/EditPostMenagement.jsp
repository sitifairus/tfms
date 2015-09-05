<%-- 
    Document   : EditPostMenagement
    Created on : Aug 16, 2015, 1:12:19 AM
    Author     : on
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Post Management Position</title>
        <%@include file="../head.jsp" %>
        
    </head>
    <body>
        <%
            String UserSession = (String)session.getAttribute("user");
            String UserType = (String)session.getAttribute("userType");
            //out.println(UserSession);
            if ((!(UserSession==null))&&(UserType.equals("admin"))) {
        %>
        <%@ include file="adminHeader.jsp" %>
        <%
            String idPost=request.getParameter("idPost");
            String name=null;
            String staffID=null;
            String postName=null;
            String sDate=null;
            String lDate=null;
            DB db = new DB();
            if(db.connect())
            {
                if(db.query("SELECT user.name, user.staffID, ak_position.postID, postdetail.postName, ak_position.startDate, ak_position.lastDate FROM user INNER JOIN ak_position ON user.userID=ak_position.userID INNER JOIN postdetail ON postdetail.postID=ak_position.postID WHERE ak_position.idPost='"+idPost+"'"))
                {
                    name=db.getDataAt(0, "name");
                    staffID=db.getDataAt(0, "staffID");
                    postName=db.getDataAt(0, "postName");
                    sDate=db.getDataAt(0, "startDate");
                    lDate=db.getDataAt(0,"lastDate");
        %>
            <div class="container" style="width:500px;">
                <h3 align="center"> Edit Detail of <%=postName%> Position  </h3><br>
                    <div style="width: 500px" >
                        <form role="form" action="../postMenagementEdit">
                        <table align="center">
                            <tr>
                                <td style="width: 120px; height:40px">Position Name:</td>
                                <td style="width: 200px"><%=postName%></td>
                            </tr>
                            <tr>
                                <td style="height:40px">Position Holder:</td>
                                <td><%=name%></td>
                            </tr>
                            <tr>
                                <td style="height:40px">Position Holder's Staff ID:</td>
                                <td><%=staffID%></td>
                            </tr>
                            <tr>
                                <td style="height:40px">Start Date:</td>
                                <td><input class="form-control" type="date" name="sDate" value="<%=sDate%>"></td>
                            </tr>
                            <tr>
                                <td>End Date:</td>
                                <td><input class="form-control" type="date" name="lDate" value="<%=lDate%>"></td>
                            </tr>
                            <tr>
                                <td><input class="hidden" name="idPost" value="<%=idPost%>"></td>
                                <td><br><input class="btn btn-toolbar" type="submit" value="Save Change"></td>
                            </tr>
                        </table>
                        </form>
                    </div>
             </div>
        
        
        <%
                    
                }
                db.close();
            }
            }
        %>
             
    </body>
</html>
<%@ include file="../footer.jsp" %>