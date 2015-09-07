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
      <%@ include file="PentadbirHeader.jsp" %>
      <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            String taskName=null;
            String taskID=null;
            String coordinatorName=null;
            String officeID=null;
            String officeName=null;
            String coordinatorQ=null;
            String year=null;
          DB db=new DB();
          if ((!(userSession==null))&&(userType.equals("pentadbir")||userType.equals("Pentadbir"))) {
              if(db.connect())
              {
                  db.query("SELECT * FROM user WHERE userID='"+userSession+"'");
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
                 <div class="panel-footer">
                     <div class="row">
                        
                        <span class="pull-right">
                            <a href="#" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#LoginModal" ><i class="glyphicon glyphicon-edit"></i></a>
                            <!--<a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>-->
                            
                        </span>
                        
                     </div>  
                 </div><!--footer 2-->    
                
            
          </div><!--panel danger-->
        </div><!--container size-->
      </div><!--row-->
    </div><!--container-->
    
    
    <br>
<h3 align="center">Your Current Committee/Task Force</h3><br>
        <div class="container" align="center" style="width:1100px;">
            <div class="" align="center">
                <div class="col-md-30">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                                <h3 class="panel-title">List of committee/Taskforce </h3>
                                <div class="pull-right">
                                    <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
                                            <i class="glyphicon glyphicon-filter"></i>
                                    </span>
				</div>
                        </div>
                        <div class="panel-body">
                                <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Seacrh Staff" />
                        </div>
                       
                        <table class="table table-hover" id="dev-table">
                            <thead>
                                    <tr align="center">
                                        <th>No.</th>
                                        <th>Committee/Taskforce Name</th>
                                        <th>Coordinator</th>
                                        <th>Office</th>
                                        <th>Year Start</th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%
                                
                                db.query("SELECT tfID FROM tf_member WHERE userID='"+userSession+"' AND status='active'");
                                if(db.getNumberOfRows()!=0)
                                {
                                    for(int i=0; i<db.getNumberOfRows(); i++)
                                    {
                                        taskID=db.getDataAt(i,"tfID");
                                        if(db.query("SELECT user.name, office.officeName, tf.startDate, tf.TFname, user.qualification FROM user JOIN tf_member ON user.userID=tf_member.userID JOIN tf ON tf_member.tfID=tf.idTF JOIN office ON tf.officeID=office.idoffice WHERE tf_member.tfID='"+taskID+"' AND tf_member.Gstatus='coordinator' AND tf_member.status='active'"))
                                        {
                                            if(db.getNumberOfRows()!=0)
                                            {
                                                taskName=db.getDataAt( 0,"TFname");
                                                coordinatorName=db.getDataAt( 0,"name");
                                                officeName=db.getDataAt( 0,"officeName");
                                                year=db.getDataAt( 0,"startDate");
                                                coordinatorQ=db.getDataAt( 0,"qualification");
                                                %>
                                                    <tr>
                                                        <td>
                                                            <%=i+1%>
                                                        </td>
                                                        <td><a href="ViewTaskInfo.jsp?taskID=<%=taskID%>" style="text-decoration: underline;"><%=taskName%></a></td>
                                                        <td><%
                                                            if(!coordinatorQ.equals("none")&&coordinatorQ!=null)
                                                            {
                                                                out.print(coordinatorQ);
                                                            }
                                                        %><%=coordinatorName%></td>

                                                        <td><%=officeName%></td>
                                                        <td><%=year%></td>
                                                    </tr>
                                                <%
                                            }
                                        }
                                    }
                                }
                                else
                                {
                            %>
                                <tr>
                                    <td colspan="5" align="center">-----------------No Task Assign--------------</td>
                                </tr>
                            <%
                                }
                            %> 
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div
        
        <br><br>
        <h3 align="center">Your Previous Committee/Task Force</h3><br>
        <div class="container" align="center" style="width:1100px;">
            <div class="" align="center">
                <div class="col-md-30">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                                <h3 class="panel-title">List of committee/Taskforce </h3>
                                <div class="pull-right">
                                    <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
                                            <i class="glyphicon glyphicon-filter"></i>
                                    </span>
				</div>
                        </div>
                        <div class="panel-body">
                                <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Seacrh Staff" />
                        </div>
                       
                        <table class="table table-hover" id="dev-table">
                            <thead>
                                    <tr align="center">
                                        <th>No.</th>
                                        <th>Committee/Taskforce Name</th>
                                        <th>Coordinator</th>
                                        <th>Office</th>
                                        <th>Year Start</th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%
                                
                                db.query("SELECT tfID FROM tf_member WHERE userID='"+userSession+"' AND status='not active'");
                                if(db.getNumberOfRows()!=0)
                                {
                                    for(int i=0; i<db.getNumberOfRows(); i++)
                                    {
                                        taskID=db.getDataAt(i,"tfID");
                                        if(db.query("SELECT user.name, office.officeName, tf.startDate, tf.TFname, user.qualification FROM user JOIN tf_member ON user.userID=tf_member.userID JOIN tf ON tf_member.tfID=tf.idTF JOIN office ON tf.officeID=office.idoffice WHERE tf_member.tfID='"+taskID+"' AND tf_member.Gstatus='coordinator' AND tf_member.status='active'"))
                                        {
                                            if(db.getNumberOfRows()!=0)
                                            {
                                                taskName=db.getDataAt( 0,"TFname");
                                                coordinatorName=db.getDataAt( 0,"name");
                                                officeName=db.getDataAt( 0,"officeName");
                                                year=db.getDataAt( 0,"startDate");
                                                coordinatorQ=db.getDataAt( 0,"qualification");
                                                %>
                                                    <tr>
                                                        <td>
                                                            <%=i+1%>
                                                        </td>
                                                        <td><a href="ViewTaskInfo.jsp?taskID=<%=taskID%>" style="text-decoration: underline;"><%=taskName%></a></td>
                                                        <td><%
                                                            if(!coordinatorQ.equals("none")&&coordinatorQ!=null)
                                                            {
                                                                out.print(coordinatorQ);
                                                            }
                                                        %><%=coordinatorName%></td>

                                                        <td><%=officeName%></td>
                                                        <td><%=year%></td>
                                                    </tr>
                                                <%
                                            }
                                        }
                                    }
                                }
                                else
                                {
                            %>
                                <tr>
                                    <td colspan="5" align="center">-----------------No Previous Task--------------</td>
                                </tr>
                            <%
                                }
                            %> 
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    
    
    
    <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true" >
        <form class="form-horizontal" role="form" action="../ProfileEdit" method="get">
      <div class="container">
       <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
            
         <div class="panel panel-danger class">
             
                <div class="panel-heading">
                    <h3 class="panel-title">Edit Profile</h3>
                </div>
                <div class="panel body">
                       &nbsp;
                       &nbsp;&nbsp;&nbsp;
                      <div class="row">
                          
                              
                              <div class="form-group">
                                <label class="col-lg-4 control-label">UserID:</label>
                                <div class="col-lg-6">
                                  <%=userSession%>
                                  <input class="hidden" value="<%=userSession%>" name="userID">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Password:</label>
                                <div class="col-lg-6">
                                  <input class="form-control" value="<%=password%>" name="password">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Name:</label>
                                <div class="col-lg-6">
                                  <input class="form-control" value="<%=name%>" name="name" type="text">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Staff ID:</label>
                                <div class="col-lg-6">
                                  <%=staffID%>
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Office :</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="office" value="<%=office%>" >
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Telephone No.:</label>
                                <div class="col-lg-6">
                                  <input type="text" class="form-control" name="phone" value="<%=phone%>" >
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Email :</label>
                                <div class="col-lg-6">
                                  <input type="email" class="form-control" name="email" value="<%=email%>">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Position:</label>
                                <div class="col-sm-6">
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
                                <label class="col-lg-4 control-label">Department:</label>
                                <div class="col-sm-6">
                                    <select name="department" id="department" class="form-control" >
                                        <option value="<%=department%>"><%=department%></option>
                                        <option value="Computer Science">Computer Science</option>
                                        <option value="Software Engineering">Software Engineering</option>
                                        <option value="Information System">Information System</option>
                                    </select>
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-lg-4 control-label">Qualification:</label>
                                <div class="col-lg-6">
                                  <select name="qualification" class="form-control" >
                                    <option value="<%=q%>"><%=q%></option>
                                    <option value="Dr. ">Dr.</option>
                                    <option value="none">None</option>
                                  </select>
                                </div>
                              </div>
                          
                      </div>
                </div>   
                <div class="panel-footer"><!--script use from here-->
                        <button class="btn btn-sm btn-primary" data-dismiss="modal">Cancel.  <i class="glyphicon glyphicon-circle-arrow-left"></i></button>
                        <span class="pull-right">
                            <button data-original-title="Save" class="btn btn-sm btn-warning">Save.  <i class="glyphicon glyphicon-floppy-saved"></i></button>
                        </span>
                </div>  
                
           </div><!--panel danger-->
          </div><!--container size-->
        </div><!--row-->
      </div><!--container-->
      </form>
      </div>
                                    
                                    
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
