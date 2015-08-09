<%-- 
    Document   : viewProfile
    Created on : Aug 9, 2015, 10:44:08 AM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Staff Detail</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            String name=null;
            String staffID=null;
            String q=null;
            String post=null;
            String email=null;
            String dept=null;
            String stat=null; 
            String gender=null;
            String office=null;
            String phone=null;
            String userID=request.getParameter("userID");
            String sql="SELECT * FROM user WHERE userID='"+userID+"'";
            DB db= new DB();
            System.out.println("sql:"+sql);
            if(db.connect())
            {
                db.query(sql);
                name=db.getDataAt( 0,"name");
                office=db.getDataAt(0, "office");
                q=db.getDataAt(0, "Qualification");
                staffID=db.getDataAt( 0,"staffID");
                gender=db.getDataAt(0, "gender");
                post=db.getDataAt( 0,"position");
                dept=db.getDataAt( 0,"department");
                email=db.getDataAt(0, "email");
                stat=db.getDataAt( 0,"status");
                phone=db.getDataAt(0, "phone");
            }
            db.close();
                        
        %>
        <div class="container">
            <div><button class="btn btn-default" onclick="history.back()" >Back</button></div><br>
     <h1 class="">Staff Personal Info</h1>

    <hr class="">
    <div class="row">
        <!-- left column -->
        <div class="col-md-3">
            <div class="text-center">
                <img src="//placehold.it/100" class="avatar img-circle" alt="avatar"><!--pic for the user-->
             
            </div>
        </div>
        <!-- edit form column -->
        <div class="col-md-9 personal-info">
            <div style="display: none;" class="alert alert-info alert-dismissable"> <a class="panel-close close" data-dismiss="alert">×</a>  <i class="fa fa-coffee"></i>
This
                is an <strong class="">.alert</strong>. Use this to show important messages
                to the user.</div>
             <h3 class="">Personal info</h3>
             
             <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Name:</td>
                        <td>
                        <%
                            if(q!="none")
                            {
                                out.print(q);
                            }
                        %>
                        <%=name%></td>
                      </tr>
                      <tr>
                        <td>Gender:</td>
                        <td><%=gender%></td>
                      </tr>
                      <tr>
                        <td>Staff ID:</td>
                        <td><%=staffID%></td>
                      </tr>
                      <tr>
                        <td>Position:</td>
                        <td><%=post%></td>
                      </tr>
                        <tr>
                        <td>Department:</td>
                        <td><%=dept%></td>
                      </tr>
                      <tr>
                        <td>Office</td>
                        <td><%=office%></td>
                      </tr>
                      <tr>
                        <td>Phone Number</td>
                        <td><%=phone%></td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><%=email%></td>
                      </tr>
                      <tr>
                        <td>Status</td>
                        <td><%=stat%></td>
                      </tr>
                    </tbody>
                      
                  </table>
                  
                      <form action="profileEdit.jsp" method="post"> <?---where to,action & method---?>
                            <input type="hidden" id="userID" name="userID" value="<%=userID%>">
                            <input type="submit" class="btn btn-default" value="Edit Profile">
                      </form>
            </div>
        </div>
    </div>
</div>                               
    </body>
</html>

<%@ include file="../footer.jsp" %>
