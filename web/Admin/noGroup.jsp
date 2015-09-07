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
     <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
        %>
     <%@ include file="adminHeader.jsp" %>
    <div class="container" align="center">
    <h1 align="center"> Staffs currently Not in any taskforce/committee</h1>
        <div class="row" align="center">
            <div class="col-md-60">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Task Force Members</h3>
                        <div class="pull-right">
                            <span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
                                <i class="glyphicon glyphicon-search"></i>
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
                                <th>No</th>
                                <th>Staff Name</th>
                                <th>Staff ID</th>
                                <th>Department</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            DB db = new DB();
                            String name;
                            String staffID;
                            String department;
                            String q;
                            String taskName;
                            String userID;
                            int no=0;
                            if(db.connect())
                            {
                                if(db.query("SELECT * FROM user WHERE user.userID NOT IN (SELECT userID FROM tf_member WHERE status='active')"))
                                {
                                    System.out.println(db.getNumberOfRows());
                                    for(int i=0; i<db.getNumberOfRows();i++)
                                    {
                                        name=db.getDataAt(i, "name");
                                        staffID=db.getDataAt(i,"staffID");
                                        department=db.getDataAt(i, "department");
                                        q=db.getDataAt(i, "qualification");
                                        userID=db.getDataAt(i, "userID");
                                        System.out.println(userID);
                                        %>
                                        <tr>
                                        <td><%=i+1%></td>
                                        <td><a href="viewProfile.jsp?userID=<%=userID%>"><%
                                            if(!q.equals("none")&&q!=null)
                                            {out.print(q);}
                                        %><%=name%>
                                            </a></td>
                                        <td><%=staffID%></td>
                                        <td><%=department%></td>
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
</body>
</html>


<%@ include file="../footer.jsp" %>