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
            String gender=null;
            String name=null;
            String staffID=null;        
            String phone=null;     
            String userType=null;
            String email=null;              
            String position=null;               
            String department=null;                       
            String qualification=null;   
            String office=null;
            String day=null;                                
            String month=null;                                
            String year=null;                                            
                                        
            username=request.getParameter("userID");
            userType=request.getParameter("userType");
            gender=request.getParameter("gender");
            password=request.getParameter("password");
            name=request.getParameter("name");
            staffID=request.getParameter("staffID");   
            office=request.getParameter("office");
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
                <label for="position" class="col-sm-3 control-label">Gender:</label>
                <div class="col-sm-9">
                    <select name="gender" id="gender" class="form-control" required>
                        <option value="Not Selected">Not Selected</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div><br><br>
              </div>
              <div class="form-group">
                <label for="office" class="col-sm-3 control-label">Office :</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="office" placeholder="Enter Staff's Office Address" required>
                </div><br><br>
              </div>
              <div class="form-group">
                <label for="phone" class="col-sm-3 control-label">Phone :</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="phone" placeholder="Enter Staff's Telephone Number" required>
                </div><br><br>
              </div>
              <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email :</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" name="email" placeholder="Enter Staff's Email" required>
                </div><br><br>
              </div>                      
              <div class="form-group">
                <label for="position" class="col-sm-3 control-label">Position:</label>
                <div class="col-sm-9">
                    <select name="position" id="position" class="form-control" required>
                        <option value="0">Not Selected</option>
                        <option value="Lecturer">Lecturer</option>
                        <option value="Senior Lecturer">Senior Lecturer</option>                                
                        <option value="Assiociate Professor">Associate Professor</option>
                        <option value="Professor">Professor</option>
                    </select>
                </div><br><br>
              </div>
              <div class="form-group">
                <label for="department" class="col-sm-3 control-label">Department:</label>
                <div class="col-sm-9">
                    <select name="department" id="department" class="form-control" required>
                        <option value="0">Not Selected</option>
                        <option value="Computer Science">Computer Science</option>
                        <option value="Software Engineering">Software Engineering</option>
                        <option value="Information System">Information System</option>
                    </select>
                </div><br><br>
              </div>
              <div class="form-group">
                <label for="qualification" class="col-sm-3 control-label">Qualification:</label>
                <div class="col-sm-9">
                    <select name="qualification" id="qualification" class="form-control" required>
                        <option value="none">None</option>
                        <option value="Dr.">Dr.</option>
                    </select>
                </div><br><br>
              </div>
              <div class="form-group">
                <label for="User Type" class="col-sm-3 control-label">User Type:</label>
                <div class="col-sm-9">
                    <select name="userType"  class="form-control" required>
                        <option value="lecturer">Not Selected</option>
                        <option value="admin">Admin</option>
                        <option value="lecturer">Lecturer</option>
                        <option value="pentadbir">Dean</option>
                    </select>
                </div><br><br>
              </div>
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
                <div class="container" style="align:center">
                <div><button class="btn btn-default" onclick="history.back()" >Back</button></div><br>
        <h3 class="">Register Confirmation </h3>              
             <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Username:</td>
                        <td><%=username%></td>
                      </tr>
                      <tr>
                        <td>Password:</td>
                        <td><%=password%></td>
                      </tr>
                      <tr>
                        <td>Name:</td>
                        <td>
                        <%
                            if(qualification!="none")
                            {
                                out.print(qualification);
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
                        <td>User Type</td>
                        <td><%=userType%></td>
                      </tr>
                      <tr>
                        <td>Position:</td>
                        <td><%=position%></td>
                      </tr>
                        <tr>
                        <td>Department:</td>
                        <td><%=department%></td>
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
                    </tbody>
                      
                  </table>
                  
                      <form action="../Test" method="get"> <?---where to,action & method---?>
                            <input type="hidden" name="userID" value="<%=username%>">
                            <input type="hidden" name="password" value="<%=password%>">
                            <input type="hidden" name="name" value="<%=name%>">
                            <input type="hidden" name="staffID" value="<%=staffID%>">
                            <input type="hidden" name="phone" value="<%=phone%>">
                            <input type="hidden" name="email" value="<%=email%>">
                            <input type="hidden" name="qualification" value="<%=qualification%>">
                            <input type="hidden" name="gender" value="<%=gender%>">
                            <input type="hidden" name="position" value="<%=position%>">
                            <input type="hidden" name="department" value="<%=department%>">
                            <input type="hidden" name="office" value="<%=office%>">
                            <input type="hidden" name="userType" value="<%=userType%>"> 
                            <input type="submit" class="btn btn-default" value="Comfirm">
                      </form>
            </div>
             </div>   
        
        
        <%
                //response.sendRedirect("./Test.java?userID="+username+"&password="+password+"&name="+name+"&satffID="+staffID+"&phone="+phone+"&email="+email+"&psosition="+position+"&department="+department+"&qualification="+qualification+"&day="+day+"&month="+month+"&year="+year);
            }
            
        %>
    </body>
</html>
<%@ include file="../footer.jsp" %>
