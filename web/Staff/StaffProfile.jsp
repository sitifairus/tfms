<%-- 
    Document   : StaffProfile.jsp
    Created on : Aug 4, 2015, 9:51:42 AM
    Author     : aya
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../head.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <style>
            span.pull-right{
                padding-right: 10px;
                
            }
            .user-row {
                margin-bottom: 14px;
            }

            .user-row:last-child {
                margin-bottom: 0;
            }

            .dropdown-user {
                margin: 13px 0;
                padding: 5px;
                height: 100%;
            }

            .dropdown-user:hover {
                cursor: pointer;
            }

            .table-user-information > tbody > tr {
                border-top: 1px solid rgb(221, 221, 221);
            }

            .table-user-information > tbody > tr:first-child {
                border-top: 1px;
            }


            .table-user-information > tbody > tr > td {
                border-top: 1px;
            }
            .toppad
            {margin-top:20px;
            }
            
        </style>
        <script>
           
                $(document).ready(function(){
                    $('[data-toggle="tooltip"]').tooltip(); 
                });
            
        </script>
    </head>
    <body>
      <%@ include file="StaffHeader.jsp" %>
      <%
          String userID=(String)session.getAttribute("user");
          String userType=(String)session.getAttribute("userType");
          DB db=new DB();
          if ((!(userID==null))&&(userType.equals("lecturer"))) {
              if(db.connect())
              {
                  db.query("SELECT * FROM user WHERE userID='"+userID+"'");
                  String name=db.getDataAt(0, "name");
                  String q=db.getDataAt(0, "qualification");
                  String position=db.getDataAt(0, "position");
                  String email=db.getDataAt(0, "email");
                  String phone=db.getDataAt(0, "phone");
                  String department=db.getDataAt(0, "department");
                  String office=db.getDataAt(0, "office");
                  String staffID=db.getDataAt(0, "staffID");
      %>
      <div class="container">
       <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-danger class">
            <div class="panel-heading">
              <h3 class="panel-title">User Profile</h3><!-- user name-->
            </div>
            <div class="panel-footer"><!--script use from here-->
             <div class="row">
              <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> </div>
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Staff ID:</td>
                        <td><%=staffID%></td>
                      </tr>
                      <tr>
                        <td>Position:</td>
                        <td><%=position%></td>
                      </tr>
                      <tr>
                        <td>Department</td>
                        <td><%=department%></td>
                      </tr>
                      <tr>
                        <td>Address :</td>
                        <td><%=office%></td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:<%=email%>"><%=email%></a></td>
                      </tr>
                      <tr>
                        <td>Phone Number</td>
                        <td><%=phone%></td>
                      </tr>
                     
                    </tbody>
                  </table>
                  <!--<a href="#" class="btn btn-primary">Edit Profile</a>-->
               </div><!--footer size-->
              </div><!--row-->
             </div><!--footer 1-->
                 <div class="panel-footer">
                     <div class="row">
                        <form id="butform" action="editProfile.jsp" method="get">
                        <span class="pull-right">
                            <button data-original-title="Edit profile" data-toggle="tooltip" type="submit" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></button>
                            <!--<a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>-->
                            
                        </span>
                        </form>
                     </div>  
                 </div><!--footer 2-->    
                
            
          </div><!--panel danger-->
        </div><!--container size-->
      </div><!--row-->
    </div><!--container-->
    <%
              }
          }
    %>
  </body>
</html>
