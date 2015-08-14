<%-- 
    Document   : noGroup
    Created on : Aug 2, 2015, 8:05:52 AM
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
		    padding: 0 200px ;
		}
		 
          </style>
    </head>
<body>
     <%@ include file="adminHeader.jsp" %>
    <div class="container" align="center">
    <h1 align="center"> Staffs in taskforce/committee <small>(<i class="glyphicon glyphicon-filter"></i>)</small></h1>
        <div class="row" align="center">
            <div class="col-md-60">
                <div class="panel panel-primary">
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
                    <table class="table table-hover" id="dev-table">
                        <thead>
                            <tr align="center">
                                <th>No</th>
                                <th>Staff Name</th>
                                <th>Staff ID</th>
                                <th>Department</th>
                                <th>Taskforce </th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            DB db = new DB();
                            DB db2 = new DB();
                            String name;
                            String staffID;
                            String department;
                            String taskName;
                            String tf_memberID;
                            int no=0;
                            if(db.connect())
                            {
                                if(db.query("SELECT * FROM user INNER JOIN tf_member ON user.userID=tf_member.userID "))
                                {
                                    for(int i=0; i<db.getNumberOfRows();i++)
                                    {
                                        name=db.getDataAt(i, "name");
                                        staffID=db.getDataAt(i,"staffID");
                                        department=db.getDataAt(i, "department");
                                    }
                                }
                                db.close();
                            }
                        %>
                            <tr>
                                <td>1</td>
                                <td>Ras</td>
                                <td>a13cs0139</td>
                                <td>Software Engineering</td>
                                <td><li>Jawatankuasa Pemasaran</li></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>	
        </div>
    </div>
</body>
</html>


<%@ include file="../footer.jsp" %>