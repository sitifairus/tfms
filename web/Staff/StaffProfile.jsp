<%-- 
    Document   : StaffProfile.jsp
    Created on : Aug 4, 2015, 9:51:42 AM
    Author     : aya
--%>

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
                        <td>11451</td>
                      </tr>
                      <tr>
                        <td>Position:</td>
                        <td>Lecturer </td>
                      </tr>
                      <tr>
                        <td>Department</td>
                        <td>Computer Science</td>
                      </tr>
                      <tr>
                        <td>Address :</td>
                        <td>505,Tingkat 5, N28A,Fakulti Komputeran </td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:info@support.com">info@support.com</a></td>
                      </tr>
                      <tr>
                        <td>Phone Number</td>
                        <td>07-3557894<br><br>555-4567-890(Mobile)</td>
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
  </body>
</html>
