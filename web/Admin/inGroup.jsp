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
    <h1 align="center"> Staffs in taskforce/committee </h1>
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
                            //DB db2 = new DB();
                            String u;
                            String name;
                            String staffID;
                            String department;
                            String taskName;
                            String q;
                            if(db.connect())
                            {
                                db.query("SELECT * FROM tf_member WHERE status='active'");
                                String [] userIDD= new String[db.getNumberOfRows()];
                                String [] userID= new String[db.getNumberOfRows()+1];
                                for(int i=0; i<db.getNumberOfRows();i++)
                                {
                                    userIDD[i]=db.getDataAt(i,"userID");  
                                }
                                System.out.print("*");
                                int n=0;
                                for(int i=0; i<db.getNumberOfRows();i++)
                                {
                                    boolean flag=true;
                                    for(int k=0; k<db.getNumberOfRows()-1; k++)
                                    {
                                        if(userIDD[i].equals(userID[k]))
                                        {
                                            flag=false;
                                            System.out.println(flag);
                                        }
                                    }
                                    if(flag)
                                    {
                                        System.out.println(flag);
                                        userID[n]=userIDD[i];
                                        n++;
                                    }
                                }
                                for(int i=0; i<n;i++)
                                {
                                    if(db.query("SELECT * FROM user WHERE userID='"+userID[i]+"'"))
                                    {
                                    
                                        name=db.getDataAt(0, "name");
                                        staffID=db.getDataAt(0,"staffID");
                                        department=db.getDataAt(0, "department");
                                        q=db.getDataAt(0, "qualification");
                                        %>
                                        <tr>
                                            <td><%=i+1%></td>
                                            <td><a href="viewProfile.jsp?userID=<%=userID[i]%>"><%
                                            if(!q.equals("none")&&q!=null)
                                            {out.print(q);}
                                        %><%=name%>
                                            </a></td>
                                            <td><%=staffID%></td>
                                            <td><%=department%></td>
                                            <td>
                                        <%
                                            if(db.query("SELECT TFname FROM tf JOIN tf_member ON tf.idTF=tf_member.tfID WHERE tf_member.userID='"+userID[i]+"'"))
                                            {
                                                for(int k=0; k<db.getNumberOfRows();k++)
                                                {
                                                    taskName=db.getDataAt(k, "TFname");
                                                    System.out.print("*");
                                        %>
                                                    <%=taskName%><br>
                                        <%
                                                }
                                            }
                                        %>
                                            
                                            
                                            </td>
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
</body>
</html>


<%@ include file="../footer.jsp" %>