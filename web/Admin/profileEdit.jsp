<%-- 
    Document   : profileEdit
    Created on : Jul 26, 2015, 3:58:37 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<%@page import="TFMSystem.ProfileEdit"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <title>Edit Staff Detail</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            String name=null;
            String staffID=null;
            String post=null;
            String email=null;
            String dept=null;
            String stat=null; 
            String userID=request.getParameter("userID");
            String sql="SELECT * FROM user WHERE userID='"+userID+"'";
            DB db= new DB();
            System.out.println("sql:"+sql);
            if(db.connect())
            {
                db.query(sql);
                name=db.getDataAt( 0,"name");
                staffID=db.getDataAt( 0,"StaffID");
                post=db.getDataAt( 0,"position");
                dept=db.getDataAt( 0,"department");
                email=db.getDataAt(0, "email");
                stat=db.getDataAt( 0,"status");
            }
            db.close();
                        
        %>
        <div class="container">
            <div><button class="btn btn-default" onclick="history.back()" >Back</button></div><br>
     <h1 class="">Edit Profile</h1>

    <hr class="">
    <div class="row">
        <!-- left column -->
        <div class="col-md-3">
            <div class="text-center">
                <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                 <h6 class="">Upload a different photo...</h6>

                <input class="form-control" type="file">
            </div>
        </div>
        <!-- edit form column -->
        <div class="col-md-9 personal-info">
            <div style="display: none;" class="alert alert-info alert-dismissable"> <a class="panel-close close" data-dismiss="alert">×</a>  <i class="fa fa-coffee"></i>
This
                is an <strong class="">.alert</strong>. Use this to show important messages
                to the user.</div>
             <h3 class="">Personal info</h3>

             <form class="form-horizontal" role="form" action="../ProfileEdit" method="post" >
                <div class="form-group">
                    <label class="col-lg-3 control-label">Name:</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=name%>" name="name" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">StaffID:</label>
                    <div class="col-lg-8">
                        <%=staffID%>
                        <input class="hidden" value="<%=staffID%>" name="staffID">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=email%>" name="email" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Position:</label>
                    <div class="col-lg-8">
                        <div class="ui-select">
                            <select name="position" id="position" class="form-control" required>
                                <option value="<%=post%>"><%=post%></option>
                                <option value="Lecturer">Lecturer</option>
                                <option value="Senior Lecturer">Senior Lecturer</option>                                
                                <option value="Associate Professor">Associate Professor</option>
                                <option value="Professor">Professor</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="department" class="col-sm-3 control-label">Department:</label>
                    <div class="col-lg-8">
                        <div class="ui-select">
                            <select name="department" id="department" class="form-control" required>
                                <option value="<%=dept%>"><%=dept%></option>
                                <option value="Computer Science">Computer Science</option>
                                <option value="Software Engineering">Software Engineering</option>
                                <option value="Information System">Information System</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Status:</label>
                    <div class="col-lg-8">
                        <div class="ui-select">
                            <select name="position" id="position" class="form-control" required>
                                <option value="<%=stat%>"><%=stat%></option>
                                <option value="active">Active</option>
                                <option value="not active">Not Active</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <button class="btn btn-primary" >Save Chage</button><span class=""></span>
                        <button class="btn btn-default" onclick="history.back()" >Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>                               
    </body>
</html>

<%@ include file="../footer.jsp" %>