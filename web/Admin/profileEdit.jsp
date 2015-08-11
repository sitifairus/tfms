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
           
            String password=null;
            String gender=null;
            String name=null;
            String staffID=null;        
            String phone=null;     
            String userType=null;
            String email=null;              
            String position=null;               
            String department=null;                       
            String qualification=null;   
            String status=null;
            String office=null;
            String username=request.getParameter("userID");
            String sql="SELECT * FROM user WHERE userID='"+username+"'";
            DB db= new DB();
            System.out.println("sql:"+sql);
            if(db.connect())
            {
                db.query(sql);
                name=db.getDataAt( 0,"name");
                userType=db.getDataAt(0,"userType");
                password=db.getDataAt(0, "password");
                gender=db.getDataAt(0,"gender");
                phone=db.getDataAt(0,"phone");
                office=db.getDataAt(0,"office");
                staffID=db.getDataAt( 0,"StaffID");
                qualification=db.getDataAt(0,"Qualification");
                position=db.getDataAt( 0,"position");
                department=db.getDataAt( 0,"department");
                email=db.getDataAt(0, "email");
                status=db.getDataAt( 0,"status");
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

             <form class="form-horizontal" role="form" action="../ProfileEdit" method="get" >
                <div class="form-group">
                    <label class="col-lg-3 control-label">Username:</label>
                    <div class="col-lg-8">
                        <%=username%>
                        <input class="hidden" value="<%=username%>" name="userID">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Password:</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=password%>" name="password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Name:</label>
                    <div class="col-lg-8">
                        <input class="form-control" value="<%=name%>" name="name" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Staff ID:</label>
                    <div class="col-lg-8">
                        <%=staffID%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Gender:</label>
                    <div class="col-lg-8">
                        <%=gender%>
                    </div>
                </div>
                <div class="form-group">
                <label class="col-lg-3 control-label">Office :</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="office" value="<%=office%>" >
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Phone :</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="phone" value="<%=phone%>r" >
                </div><br><br>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Email :</label>
                <div class="col-sm-8">
                    <input type="email" class="form-control" name="email" value="<%=email%>">
                </div><br><br>
              </div>                      
              <div class="form-group">
                <label class="col-lg-3 control-label">Position:</label>
                <div class="col-sm-8">
                    <select name="position" id="position" class="form-control" >
                        <option value="<%=position%>"><%=position%></option>
                        <option value="Lecturer">Lecturer</option>
                        <option value="Senior Lecturer">Senior Lecturer</option>                                
                        <option value="Assiociate Professor">Associate Professor</option>
                        <option value="Professor">Professor</option>
                    </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Department:</label>
                <div class="col-sm-8">
                    <select name="department" id="department" class="form-control" >
                        <option value="<%=department%>"><%=department%></option>
                        <option value="Computer Science">Computer Science</option>
                        <option value="Software Engineering">Software Engineering</option>
                        <option value="Information System">Information System</option>
                    </select>
                </div>
              </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Qualification:</label>
                    <div class="col-lg-8">
                        <select name="qualification" class="form-control" >
                            <option value="<%=qualification%>"><%=qualification%></option>
                            <option value="Dr. ">Dr.</option>
                            <option value="none">None</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-3 control-label">User Type:</label>
                    <div class="col-sm-8">
                        <select name="userType"  class="form-control" >
                            <option value="<%=userType%>"><%=userType%></option>
                            <option value="admin">Admin</option>
                            <option value="lecturer">Lecturer</option>
                            <option value="pentadbir">Dean</option>
                        </select>
                    </div>
              </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Status:</label>
                    <div class="col-lg-8">
                        <div class="ui-select">
                            <select name="status" id="position" class="form-control" >
                                <option value="<%=status%>"><%=status%></option>
                                <option value="active">Active</option>
                                <option value="not active">Not Active</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <button class="btn btn-primary" >Save Change</button><span class=""></span>
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