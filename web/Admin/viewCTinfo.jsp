<%-- 
    Document   : view CT info
    Created on : Jul 27, 2015, 2:55:21 PM
    Author     : asus
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
        <%@ include file="adminHeader.jsp" %>
<%
    String sql="SELECT tf.idTF, tf.TFname, user.name, user.qualification, tf.startDate, office.officeName FROM tf JOIN user ON tf.coordinatorID=user.userID INNER JOIN office ON officeID=idoffice";
    String taskName=null;
    String taskID=null;
    String coordinatorName=null;
    String officeID=null;
    String officeName=null;
    String coordinatorQ=null;
    String year=null;
    DB db=new DB();
%>
        <h2 align="center">View Committee/Task Force</h2>
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
                                        <th>Admin option</th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%
                                System.out.println("sql:"+sql);
                                if(db.connect())
                                {
                                    db.query(sql);
                                    int numOfRow=db.getNumberOfRows();
                                    System.out.println("sql:"+sql);
                                    if(numOfRow-1!=-1)
                                    {
                                        System.out.println(numOfRow);
                                    for(int i=0; i<numOfRow; i++)
                                    {
                                        taskName=db.getDataAt( i,"TFname");
                                        coordinatorName=db.getDataAt( i,"name");
                                        taskID=db.getDataAt(i,"idTF");
                                        officeName=db.getDataAt( i,"officeName");
                                        year=db.getDataAt( i,"startDate");
                                        coordinatorQ=db.getDataAt( i,"qualification");
                            %>
                            
                                    <tr>
                                        <td>
                                            <%=i+1%>
                                        </td>
                                        <td><a href="viewCT.jsp?taskID=<%=taskID%>" style="text-decoration: underline;"><%=taskName%></a></td>
                                        <td><%
                                            if(coordinatorQ!="none"&&coordinatorQ!=null)
                                            {
                                                out.print(coordinatorQ);
                                            }
                                        %><%=coordinatorName%></td>
                                        
                                        <td><%=officeName%></td>
                                        <td><%=year%></td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#ConfirmModal<%=i%>" class="btn btn-default">Delete Committee/Taskforce</a>
                                        </td>
                                    </tr>   
                                    
                                    <div class="modal fade" id="ConfirmModal<%=i%>" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true" >
                                        <div class="container">    
                                            <div id="loginbox" style="margin-top:50px; " class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >                    
                                                <div class="panel panel-info" >
                                                    <div class="panel-title"><br><img src="../images/logoUtm.png" alt="" style="width:30px;"/>.  <b>Comfirm to delete this '<%=taskName%>' Committee/Taskforce?</b>
                                                        <form class="form-horizontal" role="form" method="post" action="../CTdelete">
                                                                <input type="hidden" name="taskID" value="<%=taskID%>">
                                                                <button id="btn-login" class="btn btn-success" >Comfirm</button>
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button> 
                                                                <br><br>
                                                        </form>
                                                    </div>                      
                                                </div>  
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    
                                 <%
                                    }
                                    }
                                }
                                db.close();
                                 
                                 %>  
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>                            
    </body>
</html>
<%@ include file="../footer.jsp" %>
