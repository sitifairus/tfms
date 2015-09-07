<%-- 
    Document   : changeCoordinator
    Created on : Aug 5, 2015, 9:44:58 PM
    Author     : on
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../head.jsp" %>
        <title>All Community Task Force</title>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
            String taskID=request.getParameter("taskID");
            String memberIDcoor=request.getParameter("memberID");
            DB db = new DB();
            if(db.connect())
            {
                db.query("SELECT tf.TFname, office.officeName, tf.StartDate, tf.EndDate FROM tf INNER JOIN office ON tf.officeID=idoffice WHERE tf.idTF='"+taskID+"'");
                String taskName=db.getDataAt(0, "TFname");
                String officeName=db.getDataAt(0, "officeName");
                String Sdate=db.getDataAt(0, "StartDate");
                String Edate=db.getDataAt(0,"EndDate");
            
        %>
        <table align="center">
            <div class="container" style="width:600px; padding-bottom: 50px; padding-top: 20px;" border="2">
                <h2 align="center">Committee/Taskforce data</h2><br>
                    <div class="form-group">
                      <label for="TaskName" class="col-sm-4 control-label">C/T Name:</label>
                      <%=taskName%>
                    </div>
                    <div class="form-group">
                        <label for="office" class="col-sm-4 control-label">Office:</label>
                        <%=officeName%>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-4 control-label">Start Date:</label>
                        <%=Sdate%>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-4 control-label">End Date:</label>
                        <%=Edate%>
                    </div>
                  
            </div>
        </table> 
        <div class="container" align="center" style="width:950px;">
            <div class="" align="center">
                <div class="col-md-30">
                    <h3 align="center">Choose a new coordinator for this committee/taskforce</h3><br>
                    <form method="get" action="../changeCoordinator">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                                <h3 class="panel-title">List of Staff</h3>
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
                                        <th colspan="2">Staff Name</th>
                                        <th>Staff ID</th>
                                        <th>Position</th>
                                        <th>Department</th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%
                                String sql="SELECT * FROM user INNER JOIN tf_member ON user.userID=tf_member.userID WHERE tf_member.tfID='"+taskID+"' AND tf_member.status='active'";
                                String name=null;
                                String staffID=null;
                                String post=null;
                                String dept=null;
                                String stat=null;
                                String qualification=null;
                                String userID=null;
                                System.out.println("sql:"+sql);
                                
                                    db.query(sql);
                                    int numOfRow=db.getNumberOfRows();
                                    if(numOfRow-1!=-1)
                                    {
                                        System.out.println(numOfRow);
                                        System.out.println("memberID:"+memberIDcoor);
                                    for(int i=0; i<numOfRow; i++)
                                    {
                                        name=db.getDataAt( i,"name");
                                        staffID=db.getDataAt( i,"StaffID");
                                        post=db.getDataAt( i,"position");
                                        dept=db.getDataAt( i,"department");
                                        stat=db.getDataAt( i,"status");
                                        userID=db.getDataAt(i, "userID");
                                        qualification=db.getDataAt(i,"qualification");
                            %>
                            
                                    <tr>
                                        <td>
                                            <input type="radio" name="newCoordinatorID" value="<%=userID%>" checked>
                                        </td>
                                        <td><%
                                            if(qualification!="none")
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
                        <input type="hidden" name="taskID" value="<%=taskID%>">
                        <input type="hidden" name="memberIDcoor" value="<%=memberIDcoor%>">
                        <button type="submit" class="btn btn-default">Proceed</button>                                 
                    </form>
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