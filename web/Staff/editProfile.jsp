<%-- 
    Document   : editProfile.jsp
    Created on : Aug 4, 2015, 11:53:14 AM
    Author     : aya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../head.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Profile</title>
        <style>
            .user-row {
                margin-bottom: 14px;
                margin-left: 5px;
                margin-right: 5px;
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
                border-top: 0;
            }


            .table-user-information > tbody > tr > td {
                border-top: 0;
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
              <h3 class="panel-title">Edit Profile</h3><!-- user name-->
            </div>
            
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-4" align="center"> 
                    <img src="../images/personIcon.png" class="avatar img-circle" alt="avatar">
                </div><br>
                <div  class="col-lg-6 control lable" align="center">
                    <input  type="file" class="form-control" >
                </div>
                
                <div class=" col-md-9 col-lg-9 " align="center"> 
                    <form class="form-horizontal" role="form" >
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Name:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="Nurul Nadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Username:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Password:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Staff ID:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Telephone No.:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Email :</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Position:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Department:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-4 control-label">Qualification:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" value="nurulnadia">
                          </div>
                        </div>
                    </form>
                  
                </div>
              </div>
            </div>
                 <div class="panel-footer" class="col-lg-3"><!--script use from here-->
                     
                     <a data-original-title="Back" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-circle-arrow-left"></i></a>
                        <span class="pull-right">
                            <a data-original-title="Save" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-floppy-saved"></i></a>
                        </span>
                 </div>
            
          </div>
        </div>
      </div>
    </div>
    </body>
</html>

