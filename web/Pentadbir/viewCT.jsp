<%-- 
    Document   : viewCT
    Created on : Aug 11, 2015, 1:20:40 PM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../head.jsp" %>
        <title>Community Task Force</title>
    </head>
    <body>
        <%@ include file="PentadbirHeader.jsp" %>
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("Pentadbir")&&!userType.equals("pentadbir"))) {
                response.sendRedirect("../message.jsp");
            }
            String taskID=request.getParameter("taskID");
            String taskName=null;
            String coordinatorName=null;
            String coordinatorQ=null;
            String officeName=null;
            String startDate=null;
            String taskStatus=null;
            String memberID=null;
            String sql1="SELECT tf.TFname, user.name, user.qualification, tf.startDate, office.officeName, tf.status FROM tf INNER JOIN tf_member ON tf.idTF=tf_member.tfID INNER JOIN user ON tf_member.userID=user.userID INNER JOIN office ON officeID=idoffice WHERE tf.idTF='"+taskID+"' AND GStatus='Coordinator' AND tf_member.status='active'";
            String sql2="SELECT user.name, user.staffID, user.userID, user.qualification, tf_member.position, tf_member.idtf_member, tf_member.GStatus, tf_member.startDate, tf_member.endDate FROM tf_member INNER JOIN user ON tf_member.userID=user.userID WHERE tf_member.tfID='"+taskID+"' AND tf_member.status='active'";
            String sql3="SELECT user.name, user.qualification, user.userID, user.staffID, tf_member.position, tf_member.idtf_member, tf_member.GStatus, tf_member.startDate, tf_member.endDate FROM tf_member JOIN user ON tf_member.userID=user.userID WHERE tf_member.tfID='"+taskID+"' AND tf_member.status='not active'";
            //out.println("taskID:"+taskID);
            DB db=new DB();
            if(db.connect())
            {
                if(db.query(sql1));
                {
                    taskName=db.getDataAt(0,"TFname");
                    coordinatorName=db.getDataAt(0,"name");
                    coordinatorQ=db.getDataAt(0,"qualification");
                    officeName=db.getDataAt(0,"officeName");
                    taskStatus=db.getDataAt(0,"status");
                    startDate=db.getDataAt(0,"startDate");
        %>
        <h2 align="center">View Committee/Task Force</h2>
        <div class="container" align="center" style="width:500px;">
            <div class="" align="center">
                <div class="col-md-30">
                    <div class="panel panel-primary">
                        
                        <table class="table table-hover" id="dev-table">
                            <thead>
                                <tr >
                                    <td><b>C/T Name:</b></td>
                                    <td colspan="2"><%=taskName%></td>
                                </tr>
                                <tr>
                                    <td><b>C/T Office:</b></td>
                                    <td colspan="2"><%=officeName%></td>
                                </tr>
                                <tr>
                                    <td><b>C/T Coordinator Name:</b></td>
                                    <td colspan="2"><%
                                            if(!coordinatorQ.equals("none"))
                                            {
                                                out.print(coordinatorQ);
                                            }
                                        %><%=coordinatorName%></td>
                                </tr>
                                <tr>
                                    <td><b>Date Start:</b></td>
                                    <td colspan="2"><%=startDate%></td>
                                </tr>
                                <tr>
                                    <td><b>Status:</b></td>
                                    <td colspan="2"><%=taskStatus%></td>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
                
        %>
        
        
        <div class="container" align="center">
            <div class="" align="center">
                <div class="col-md-30">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                                <h3 class="panel-title">List of Active Member</h3>
                                <div class="pull-right">
                                    <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
                                            <i class="glyphicon glyphicon-filter"></i>
                                    </span>
				</div>
                        </div>
                        <div class="panel-body">
                                <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table2" placeholder="Seacrh Staff" />
                        </div>
                       <div style="max-height: 410px; overflow-y: scroll;">
                        <table class="table table-hover" id="dev-table2">
                            <thead>
                                    <tr align="center">
                                        <th>No.</th>
                                        <th>Name</th>
                                        <th>Staff ID</th>
                                        <th>Position</th>
                                        <th>Group Status</th>
                                        <th>Start Date</th>
                                        <th>End Status</th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%
                                String name=null;
                                String StaffID=null;
                                String position=null;
                                String gStatus=null;
                                String SDate=null;
                                String EDate=null;
                                String userID=null;
                                System.out.println("sql:"+sql2);
                                    if(db.query(sql2))
                                    {
                                        int numOfRow=db.getNumberOfRows();
                                        System.out.println("sql:"+sql2);
                                        if(numOfRow-1!=-1)
                                        {
                                            System.out.println(numOfRow);
                                            for(int i=0; i<numOfRow; i++)
                                            {
                                                name=db.getDataAt( i,"name");
                                                StaffID=db.getDataAt( i,"staffID");
                                                position=db.getDataAt( i,"position");
                                                gStatus=db.getDataAt( i,"GStatus");
                                                SDate=db.getDataAt( i,"startDate");
                                                EDate=db.getDataAt( i,"endDate");
                                                userID=db.getDataAt(i,"userID");
                                                coordinatorQ=db.getDataAt(i,"qualification");
                                                memberID=db.getDataAt(i,"idtf_member");
                            %>
                            
                                    <tr>
                                        <td>
                                            <%=i+1%>
                                        </td>
                                        <td><a href="profileMember.jsp?userID=<%=userID%>" style="text-decoration: underline;"><%
                                            if(!coordinatorQ.equals("none")&&coordinatorQ!=null)
                                            {
                                                out.print(coordinatorQ);
                                            }
                                        %><%=name%></a></td>
                                        <td><%=StaffID%></td>
                                        
                                        <td><%=position%></td>
                                        <td><%=gStatus%></td>
                                        <td><%=SDate%></td>
                                        <td><%=EDate%></td>
                                    </tr>
                                 <%
                                            }
                                        }
                                    }
                                
                                 %>  
                            </tbody>
                        </table>
                       </div>
                    </div>
                </div>
            </div>
        </div>
                                 
        <div class="container" align="center">
            <div class="" align="center">
                <div class="col-md-30">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                                <h3 class="panel-title">List of Past Member</h3>
                                <div class="pull-right">
                                    <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
                                            <i class="glyphicon glyphicon-filter"></i>
                                    </span>
				</div>
                        </div>
                        <div class="panel-body">
                                <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table1" placeholder="Seacrh Staff" />
                        </div>
                        <div style="max-height: 410px; overflow-y: scroll;">
                        <table class="table table-hover" id="dev-table1">
                            <thead>
                                    <tr align="center">
                                        <th>No.</th>
                                        <th>Name</th>
                                        <th>Staff ID</th>
                                        <th>Position</th>
                                        <th>Group Status</th>
                                        <th>Start Date</th>
                                        <th>End Date</th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%
                                System.out.println("sql:"+sql3);
                                    if(db.query(sql3))
                                    {
                                        int numOfRow=db.getNumberOfRows();
                                        System.out.println("sql:"+sql3);
                                        if(numOfRow-1!=-1)
                                        {
                                            System.out.println(numOfRow);
                                            for(int i=0; i<numOfRow; i++)
                                            {
                                                name=db.getDataAt( i,"name");
                                                StaffID=db.getDataAt( i,"staffID");
                                                position=db.getDataAt( i,"position");
                                                gStatus=db.getDataAt( i,"GStatus");
                                                SDate=db.getDataAt( i,"startDate");
                                                EDate=db.getDataAt( i,"EndDate");
                                                coordinatorQ=db.getDataAt(i,"qualification");
                            %>
                            
                                    <tr>
                                        <td>
                                            <%=i+1%>
                                        </td>
                                        <td><a href="viewCT.jsp?taskID=<%=taskID%>" style="text-decoration: underline;"><%
                                            if(!coordinatorQ.equals("none")&&coordinatorQ!=null)
                                            {
                                                out.print(coordinatorQ);
                                            }
                                        %><%=name%></a></td>
                                        <td><%=StaffID%></td>
                                        
                                        <td><%=position%></td>
                                        <td><%=gStatus%></td>
                                        <td><%=SDate%></td>
                                        <td><%=EDate%></td>
                                 <%
                                            }
                                        }
                                    }
                                
                                 %>  
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<%              db.close();
            }
            
%>
    </body>
</html>
<%@ include file="../footer.jsp" %>
