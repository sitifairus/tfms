<%-- 
    Document   : Expiration
    Created on : Aug 9, 2015, 2:02:02 PM
    Author     : user8
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <html><head>
                 <title>TFMSystem</title>
        <%@include file="../head.jsp" %>
          <style>
            .row{
		    margin-top:40px;
		    padding: 0 100px ;
		}
		 
          </style>
    </head>
<body>
    <%
            String UserSession = (String)session.getAttribute("user");
            String UserType = (String)session.getAttribute("userType");
            //out.println(UserSession);
            if ((!(UserSession==null))&&(UserType.equals("admin"))) {
        %>
     <%@ include file="adminHeader.jsp" %>
  <div class="container" align="center">
    <h1 align="center"> Task Expiration <small>(<i class="glyphicon glyphicon-filter"></i>)</small></h1>
    <div class="row" align="center">
			<div class="col-md-30">
				<div class="panel panel-primary" >
					<div class="panel-heading">
						<h3 class="panel-title">Task Force Members</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Task Member" />
					</div>
                                        <div style="max-height: 410px; overflow-y: scroll;">
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr align="center">
								
								<th>Staff Name</th>
								<th>Staff ID</th>
								<th>Position</th>
                                                                <th>Department</th>
                                                                <th>CT Name</th>
                                                                <th>Expired in  </th>
							</tr>
						</thead>
						<tbody>
                                                    <%
                                                        DB db=new DB();
                                                        if(db.connect())
                                                        {
                                                            String name;
                                                            String staffID;
                                                            String position;
                                                            String department;
                                                            String expiredIN;
                                                            String taskName;
                                                            if(db.query("SELECT user.name, user.staffID, user.position, user.department, tf.TFname FROM user INNER JOIN tf_member ON user.userID=tf_member.userID INNER JOIN tf ON tf.idTF=tf_member.tfID WHERE DATE_ADD(CURDATE(), INTERVAL 30 DAY) >= tf_member.endDate AND NOT tf_member.endDate< CURDATE() AND tf_member.status='active'"))
                                                            {
                                                                for(int i=0; i<db.getNumberOfRows();i++)
                                                                {
                                                                    name=db.getDataAt(i, "name");
                                                                    staffID=db.getDataAt(i, "staffID");
                                                                    position=db.getDataAt(i, "position");
                                                                    department=db.getDataAt(i, "department");
                                                                    taskName=db.getDataAt(i,"TFname");
                                                                    expiredIN="1 month";
                                                    %>
                                                        <tr>
								<td><%=name%></td>
								<td><%=staffID%></td>
								<td><%=position%></td>
                                                                <td><%=department%></td>
                                                                <td><%=taskName%></td>
                                                                <td><%=expiredIN%></td>
							</tr> 
                                                    
                                                    <%
                                                                }
                                                            }
                                                        if(db.query("SELECT user.name, user.staffID, user.position, user.department, tf.TFname FROM user INNER JOIN tf_member ON user.userID=tf_member.userID INNER JOIN tf ON tf.idTF=tf_member.tfID WHERE DATE_ADD(CURDATE(), INTERVAL 60 DAY) >= tf_member.endDate AND NOT DATE_ADD(CURDATE(), INTERVAL 30 DAY) >= tf_member.endDate AND tf_member.status='active'"))
                                                            {
                                                                for(int i=0; i<db.getNumberOfRows();i++)
                                                                {
                                                                    name=db.getDataAt(i, "name");
                                                                    staffID=db.getDataAt(i, "staffID");
                                                                    position=db.getDataAt(i, "position");
                                                                    department=db.getDataAt(i, "department");
                                                                    taskName=db.getDataAt(i,"TFname");
                                                                    expiredIN="2 month";    
                                                    %>
                                                        <tr>
								<td><%=name%></td>
								<td><%=staffID%></td>
								<td><%=position%></td>
                                                                <td><%=department%></td>
                                                                <td><%=taskName%></td>
                                                                <td><%=expiredIN%></td>
							</tr> 
                                                    <%
                                                                }
                                                            }
                                                        if(db.query("SELECT user.name, user.staffID, user.position, user.department, tf.TFname FROM user INNER JOIN tf_member ON user.userID=tf_member.userID INNER JOIN tf ON tf.idTF=tf_member.tfID WHERE DATE_ADD(CURDATE(), INTERVAL 90 DAY) >= tf_member.endDate AND NOT DATE_ADD(CURDATE(), INTERVAL 60 DAY) >= tf_member.endDate AND tf_member.status='active'"))
                                                            {
                                                                for(int i=0; i<db.getNumberOfRows();i++)
                                                                {
                                                                    name=db.getDataAt(i, "name");
                                                                    staffID=db.getDataAt(i, "staffID");
                                                                    position=db.getDataAt(i, "position");
                                                                    department=db.getDataAt(i, "department");
                                                                    taskName=db.getDataAt(i,"TFname");
                                                                    expiredIN="3 month";    
                                                    %>
                                                        <tr>
								<td><%=name%></td>
								<td><%=staffID%></td>
								<td><%=position%></td>
                                                                <td><%=department%></td>
                                                                <td><%=taskName%></td>
                                                                <td><%=expiredIN%></td>
							</tr> 
                                                    <%
                                                                }
                                                            }
                                                        
                                                        if(db.query("SELECT user.name, user.staffID, user.position, user.department, tf.TFname FROM user INNER JOIN tf_member ON user.userID=tf_member.userID INNER JOIN tf ON tf.idTF=tf_member.tfID WHERE tf_member.endDate< CURDATE() AND tf_member.status='active'"))
                                                            {
                                                                for(int i=0; i<db.getNumberOfRows();i++)
                                                                {
                                                                    name=db.getDataAt(i, "name");
                                                                    staffID=db.getDataAt(i, "staffID");
                                                                    position=db.getDataAt(i, "position");
                                                                    department=db.getDataAt(i, "department");
                                                                    taskName=db.getDataAt(i,"TFname");
                                                                    expiredIN="Overdue";    
                                                    %>
                                                        <tr>
								<td><%=name%></td>
								<td><%=staffID%></td>
								<td><%=position%></td>
                                                                <td><%=department%></td>
                                                                <td><%=taskName%></td>
                                                                <td><%=expiredIN%></td>
							</tr> 
                                                    <%
                                                                }
                                                            }
                                                            db.close();
                                                        }
                                                    %>
							       
						</tbody>
					</table>
                                        </div>
				</div>
			</div>
			
		</div>
	</div>
    <%
            }
            else
                response.sendRedirect("../message.jsp");
    %>
</body>
</html>


<%@ include file="../footer.jsp" %>
