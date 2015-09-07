<%-- 
    Document   : ViewTask.jsp
    Created on : Aug 16, 2015, 11:38:26 AM
    Author     : aya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
        $(document).ready(function(){
            $('#myTable').dataTable();
        });
        </script>
        <%@include file="../head.jsp" %>
        <title>All Community Task Force</title>
    </head>
    <body>
        <%@ include file="StaffHeader.jsp" %>
<%
    String userSession=(String)session.getAttribute("user");
    String userType=(String)session.getAttribute("userType");
    if (((userSession==null))||(!userType.equals("lecturer")&&!userType.equals("Lecturer"))) {
        response.sendRedirect("../message.jsp");
    }
    
    String taskName=null;
    String taskID=null;
    String coordinatorName=null;
    String officeID=null;
    String officeName=null;
    String coordinatorQ=null;
    String year=null;
    DB db=new DB();
    if(db.connect())
    {
%><br>
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
    <%
            db.close();
        }
    %>
            
            

    </body>
</html>
<%@ include file="../footer.jsp" %>