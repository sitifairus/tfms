<%-- 
    Document   : addMemberConfirmstion
    Created on : Aug 28, 2015, 7:19:16 PM
    Author     : on
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UTM Task Force</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
            int numOfRow=100;
            String taskID=null;
            taskID=request.getParameter("taskID");
            String name=null;
            String staffID=null;
            String post=null;
            String dept=null;
            String qualification=null;
            String userIDd=null;
            DB db=new DB();
            if(db.connect())
            {
                
                %>
            
        <div class="container" align="center">
                <div class="col-md-30">
                    
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                                <h3 class="panel-title">List of Staff</h3>
                                <div class="pull-right">
                                    <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
                                            <i class="glyphicon glyphicon-search"></i>
                                    </span>
				</div>
                        </div>
                        <div class="panel-body">
                                <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Seacrh Staff" />
                        </div>
                        <div style="max-height: 400px; overflow-y: scroll;">
                       
                        <table class="table table-hover" id="dev-table" >
                            <thead>
                                    <tr align="center">
                                        <th>Staff Name</th>
                                        <th>Staff ID</th>
                                        <th>Position</th>
                                        <th>Department</th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%                               
                                    
                                    db.query("SELECT * FROM tempconfirmmember JOIN user ON user.userID=tempconfirmmember.userID");
                                    if(numOfRow-1!=-1)
                                    {
                                        
                                    for(int i=0; i<db.getNumberOfRows(); i++)
                                    {
                                        name=db.getDataAt( i,"name");
                                        staffID=db.getDataAt( i,"StaffID");
                                        post=db.getDataAt( i,"position");
                                        dept=db.getDataAt( i,"department");
                                        userIDd=db.getDataAt(i, "userID");
                                        qualification=db.getDataAt(i,"qualification");
                                        %>

                                            <tr>
                                                <td><%
                                                    if(qualification!="none"&&qualification!="None"&&qualification!=null)
                                                    {
                                                        out.print(qualification);
                                                    }
                                                %><%=name%></td>
                                                <td><%=staffID%></td>
                                                <td><%=post%></td>
                                                <td><%=dept%></td>
                                            </tr>
                                         <%
                                    }
                                    }
                                 %>  
                            </tbody>
                        </table>
                        </div>
                    </div>
                    <form method="post" action="../addMembership">
                        <table align="center" style="width: 500px;">
                            
                            <tr>
                                <th><label for="startDate" class="col-sm-8 control-label">Start Date:</label></th>
                                <th><input type="date" class="form-control" name="sDate"></th>
                            </tr>
                            <tr>
                                <th><label for="endDate" class="col-sm-8 control-label">End Date:</label></th>
                                <th><input type="date" class="form-control" name="lDate"></th>
                            </tr>
                            <tr>
                                <th colspan="2" style="padding-left: 212px;">
                                    <input type="hidden" name="taskID" value="<%=taskID%>">
                                    <button type="submit" class="btn btn-default">Confirm</button>
                                </th>
                            </tr>
                        </table>
                        </form>
                        <form method="post" action="viewCT.jsp">
                            <button type="submit" class="btn btn-default">Cancel</button>
                            <input type="hidden" name="taskID" value="<%=taskID%>">
                        </form> 
                </div>
            </div> 
            
        <%
             db.close();
            }
        %>
        
    </body>
</html>
