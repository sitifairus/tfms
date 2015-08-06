<%-- 
    Document   : registerStaff
    Created on : Jul 27, 2015, 10:11:41 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="TFMSystem.Test"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Register New Member</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
    <%@ include file="adminHeader.jsp" %>
        <%
            String username=null;
            String password=null;
            String name=null;
            String staffID=null;        
            String phone=null;        
            String email=null;              
            String position=null;               
            String department=null;                       
            String qualification=null;                        
            String day=null;                                
            String month=null;                                
            String year=null;                                            
                                        
            username=request.getParameter("userID");
            password=request.getParameter("password");
            name=request.getParameter("name");
            staffID=request.getParameter("staffID");       
            phone=request.getParameter("phone");       
            email=request.getParameter("email");            
            position=request.getParameter("position");             
            department=request.getParameter("department");                      
            qualification=request.getParameter("qualification");                     
            day=request.getParameter("day");                                
            month=request.getParameter("month");                                
            year=request.getParameter("year");
            if(username==null)
            {
        %>
        <table align="center">
            <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
            <h2 align="center">Register New Staff</h2><br>
            <form role="form" action="registerMember.jsp" method="post">
              <div class="form-group">
                  <label for="userID" class="col-sm-3 control-label">Username :</label>
                <div class="col-sm-9">
                    <input type="" class="form-control" name="userID" placeholder="Enter Staff's Username" required>
                </div>
              </div><br><br>
              <div class="form-group">
                  <label for="password" class="col-sm-3 control-label">Password :</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" name="password" placeholder="Enter Staff's Password" required>
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="name" class="col-sm-3 control-label">Staff Name :</label>
                <div class="col-sm-9">
                    <input type="" class="form-control" name="name" placeholder="Enter Staff's Name" required>
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="staffID" class="col-sm-3 control-label">Staff ID :</label>
                <div class="col-sm-9">
                    <input type="" class="form-control" name="staffID" placeholder="Enter Staff's ID" required>
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="phone" class="col-sm-3 control-label">Phone :</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="phone" placeholder="Enter Staff's Telephone Number" required>
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email :</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" name="email" placeholder="Enter Staff's Email" required>
                </div>
              </div><br><br>                      
              <div class="form-group">
                <label for="position" class="col-sm-3 control-label">Position:</label>
                <div class="col-sm-9">
                    <select name="position" id="position" class="form-control" required>
                        <option value="0">Not Selected</option>
                        <option value="1">Lecturer</option>
                        <option value="2">Senior Lecturer</option>                                
                        <option value="3">Associate Professor</option>
                        <option value="4">Professor</option>
                    </select>
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="department" class="col-sm-3 control-label">Department:</label>
                <div class="col-sm-9">
                    <select name="department" id="department" class="form-control" required>
                        <option value="0">Not Selected</option>
                        <option value="1">Computer Science</option>
                        <option value="2">Software Engineering</option>
                        <option value="3">Information System</option>
                    </select>
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="qulification" class="col-sm-3 control-label">Qualification:</label>
                <div class="col-sm-9">
                    <select name="qualification" id="qualification" class="form-control" required>
                        <option value="1">None</option>
                        <option value="2">Dr.</option>
                    </select>
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="startDate" class="col-sm-3 control-label">Start Date:</label>
                <div class="container">
                <div class="row">
                    <div class='col-sm-3'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker1'>
                                <input type='text'name="startDate" class="form-control" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(function () {
                            $('#datetimepicker1').datetimepicker();
                        });
                    </script>
                </div>
                </div>
              </div><br><br>
              <div class="form-group" style="padding-left: 171px;">
                  <div class="col-sm-offset-2 col-sm-10" >
                    <button type="submit" class="btn btn-default"  >Proceed</button>
                  </div>
              </div>
            </form>
          </div>
        </table>        
        
        <%
                
            }
            else
            {
        %>
        
        
        
        
        <%
                out.println("username:"+username+"\npassword:"+password);
                //response.sendRedirect("./Test.java?userID="+username+"&password="+password+"&name="+name+"&satffID="+staffID+"&phone="+phone+"&email="+email+"&psosition="+position+"&department="+department+"&qualification="+qualification+"&day="+day+"&month="+month+"&year="+year);
            }
            
        %>
    </body>
</html>
<%@ include file="../footer.jsp" %>
