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
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("Pentadbir")&&!userType.equals("pentadbir"))) {
                response.sendRedirect("../message.jsp");
            }
        %>
        <%@ include file="PentadbirHeader.jsp" %>
<%
    String sql="SELECT tf.idTF, tf.TFname, user.name, user.qualification, tf.startDate, office.officeName FROM tf JOIN tf_member ON tf.idTF=tf_member.tfID INNER JOIN user ON user.userID=tf_member.userID INNER JOIN office ON officeID=idoffice  WHERE tf_member.GStatus='Coordinator' AND tf_member.status='active'";
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
        <div class="container" align="center" >
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
                        <div style="max-height: 410px; overflow-y: scroll;">
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
                                    </tr> 
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
        </div>                            
    </body>
</html>
<%@ include file="../footer.jsp" %>
