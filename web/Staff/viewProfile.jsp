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
          if ((!(userID==null))&&(userType.equals("lecturer")||userType.equals("Lecturer"))) {
              if(db.connect())
              {
                  String user=request.getParameter("userID");
                  db.query("SELECT * FROM user WHERE userID='"+user+"'");
                  String name=db.getDataAt(0, "name");
                  String q=db.getDataAt(0, "qualification");
                  String position=db.getDataAt(0, "position");
                  String email=db.getDataAt(0, "email");
                  String phone=db.getDataAt(0, "phone");
                  String password=db.getDataAt(0,"password");
                  String department=db.getDataAt(0, "department");
                  String office=db.getDataAt(0, "office");
                  String staffID=db.getDataAt(0, "staffID");
      %>
      <div class="container">
       <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-danger class">
            <div class="panel-heading">
              <h3 class="panel-title"><b><%
                  if (!q.equals("none")&&q!=null)
                      out.print(q);
                  %><%=name%></b></h3><!-- user name-->
            </div>
            <div class="panel-footer"><!--script use from here-->
             <div class="row">
              <div class="col-md-2 col-lg-2 " ></div>
                
                <div class=" col-md-10 col-lg-10 "> 
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
                        <td>Office Address :</td>
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
                 <div class="panel-footer" align="center">
                     <button class="btn btn-sm btn-primary" type="button" name="back" onclick="history.back()">back.    <i class="glyphicon glyphicon-circle-arrow-left"></i></button>
                 </div><!--footer 2-->    
                
            
          </div><!--panel danger-->
        </div><!--container size-->
      </div><!--row-->
    </div><!--container-->                          
    <%
              }
          }
          else
          {
              response.sendRedirect("../message.jsp");
          }
    %>
  </body>
</html>
<%@ include file="../footer.jsp" %>