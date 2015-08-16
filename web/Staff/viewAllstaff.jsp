<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : viewAllstaff.jsp
    Created on : Aug 16, 2015, 1:12:18 PM
    Author     : aya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <title>UTM Task Force</title>
        <script>
        $(document).ready(function(){
            $('#myTable').dataTable();
        });
        </script>
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="StaffHeader.jsp" %>
        <%
            String name=null;
            String staffID=null;
            String post=null;
            String dept=null;
            String stat=null;
            String sql=null;
            String qualification=null;
            String userID=null;
            sql="SELECT * FROM user";
            name=request.getParameter("filterName");
            staffID=request.getParameter("filterID");
            post=request.getParameter("FilterPosition");
            dept=request.getParameter("FilterDepartment");
            stat=request.getParameter("FilterStatus"); 
        %>
        
       <div class="container">
       <div class="row">
        <div class="col-md-12">
            
            <div class="input-group" id="adv-search">
              <input type="text" class="form-control" placeholder="Search by"/>
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" ><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                
                                <form class="form-horizontal" role="form" action="StaffProfile.jsp" method="post">
                                    <div class="form-group">
                                      <label for="filterName">Name</label>
                                      <input class="form-control" type="text" name="name" id="filterName"/>
                                    </div> 
                                    <div class="form-group">
                                      <label for="filterID">Staff ID</label>
                                      <input class="form-control" type="text" name="Staffid" id="filterID" />
                                    </div>
                                    <div class="form-group">
                                      <label for="FilterPosition">Filter by Position</label>
                                      <select name="FilterPosition" id="FilterPosition" class="form-control">
                                          <option value="" selected>Not Selected</option>
                                          <option value="Lecturer">Lecturer</option>
                                          <option value="Senior Lecturer">Senior Lecturer</option>
                                          <option value="Associate Professor">Associate Professor</option>
                                          <option value="Professor">Professor</option>
                                      </select>
                                    </div>
                                    <div class="form-group">
                                      <label for="FilterDepartment">Filter by Department</label>
                                      <select name="FilterDepartment" id="FilterDepartment" class="form-control">
                                          <option value="" selected>Not Selected</option>
                                          <option value="Computer Science">Computer Science</option>
                                          <option value="Software Engineering">Software Engineering</option>
                                          <option value="Information System">Information System</option>
                                      </select>
                                    </div>
                                    <div class="form-group">
                                      <label for="FilterStatus">Filter by Status</label>
                                      <select class="form-control" name="FilterStatus" id="FilterStatus">
                                          <option value="" selected>Not Selected</option>
                                          <option value="active">Active</option>
                                          <option value="inactive">Inactive</option>
                                      </select>
                                    </div>
                                    <span class="pull-right">  
                                    <button type="submit" class="btn btn-primary" value="search" ><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                    </span>
                                </form>
                            </div>
                        </div>
                        <!--<button type="button" class="btn btn-primary" value="search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>-->
                    </div>
                </div>
            </div><!--input division-->
                    
          </div><!--container size-->
        </div><!--row-->
    </div><!---container-->
        
        
        
        <div class="container" align="center">
    <div class="row" align="center" style="width: 900px">
			<div class="col-md-60">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Staff Details</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Search Staff" />
					</div>
                                    <div style="max-height: 410px; overflow-y: scroll;">
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<td style="text-align: center; width: 70px;"><b>No.</b></td>
                                                                <td><b>Name</b></td>
                                                                <td style="text-align: center"><b>Staff ID</b></td>
                                                                <td style="text-align: center"><b>Position</b></td>
                                                                <td style="text-align: center"><b>Department</b></td>
                                                                <td style="text-align: center"><b>Status</b></td>
                                                        </tr>
						</thead>
						<%
                    
                    
                    System.out.println("0");
                    if(name!=null&&staffID!=null&&post!=null&&dept!=null&&stat!=null)
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and position='"+post+"' and department='"+dept+"' and status='"+stat+"'";
                    }
                        
                    if(name==""&&staffID!=""&&post!=""&&dept!=""&&stat!="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE staffID='"+staffID+"' and position='"+post+"' and department='"+dept+"' and status='"+stat+"'";
                    }
                    if(name!=""&&staffID==""&&post!=""&&dept!=""&&stat!="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE name='"+name+"' and position='"+post+"' and department='"+dept+"' and status='"+stat+"'";
                    }
                    if(name!=""&&staffID!=""&&post==""&&dept!=""&&stat!="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and department='"+dept+"' and status='"+stat+"'";
                    }
                    if(name!=""&&staffID!=""&&post!=""&&dept==""&&stat!="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and position='"+post+"' and status='"+stat+"'";
                    }
                    if(name!=""&&staffID!=""&&post!=""&&dept!=""&&stat=="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and position='"+post+"' and department='"+dept+"'";
                    }
                    //2
                    if(name==""&&staffID==""&&post!=""&&dept!=""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE  position='"+post+"' and department='"+dept+"' and status='"+stat+"'";
                    }
                    if(name==""&&staffID!=""&&post==""&&dept!=""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE staffID='"+staffID+"' and department='"+dept+"' and status='"+stat+"'";
                    }
                    if(name==""&&staffID!=""&&post!=""&&dept==""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE staffID='"+staffID+"' and position='"+post+"' and status='"+stat+"'";
                    }
                    if(name==""&&staffID!=""&&post!=""&&dept!=""&&stat=="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE staffID='"+staffID+"' and position='"+post+"' and department='"+dept+"'";
                    }
                    if(name!=""&&staffID==""&&post==""&&dept!=""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and department='"+dept+"' and status='"+stat+"'";
                    }
                    if(name!=""&&staffID==""&&post!=""&&dept==""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and position='"+post+"' and status='"+stat+"'";
                    }
                    if(name!=""&&staffID==""&&post!=""&&dept!=""&&stat=="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and position='"+post+"' and department='"+dept+"'";
                    }
                    if(name!=""&&staffID!=""&&post==""&&dept==""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and status='"+stat+"'";
                    }
                    if(name!=""&&staffID!=""&&post==""&&dept!=""&&stat=="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and department='"+dept+"'";
                    }
                    if(name!=""&&staffID!=""&&post!=""&&dept==""&&stat=="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and position='"+post+"'";
                    }
                    //3
                    if(name==""&&staffID==""&&post==""&&dept!=""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE department='"+dept+"' and status='"+stat+"'";
                    }
                    if(name==""&&staffID==""&&post!=""&&dept==""&&stat!="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE position='"+post+"' and and status='"+stat+"'";
                    }
                    //sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"' and position='"+post+"' and department='"+dept+"' and status='"+stat+"'";
                    if(name==""&&staffID==""&&post!=""&&dept!=""&&stat=="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE position='"+post+"' and department='"+dept+"'";
                    }
                    //////
                    if(name==""&&staffID!=""&&post!=""&&dept==""&&stat=="")//
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE staffID='"+staffID+"' and position='"+post+"'";
                    }
                    if(name==""&&staffID!=""&&post==""&&dept!=""&&stat=="")
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE staffID='"+staffID+"' and position='"+post+"'";
                    }
                    if(name!=""&&staffID==""&&post!=""&&dept==""&&stat=="")//
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and position='"+post+"'";
                    }
                    if(name!=""&&staffID!=""&&post==""&&dept==""&&stat=="")//
                    {
                        System.out.println("1");
                        sql="SELECT * FROM user WHERE name='"+name+"' and staffID='"+staffID+"'";
                    }
                    //4
                    if(name!=""&&staffID==""&&post==""&&dept==""&&stat=="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE name='"+name+"'";
                    }
                    if(name==""&&staffID!=""&&post==""&&dept==""&&stat=="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE staffID='"+staffID+"'";
                    }
                    if(name==""&&staffID==""&&post!=""&&dept==""&&stat=="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE position='"+post+"'";
                    }
                    if(name==""&&staffID==""&&post==""&&dept!=""&&stat=="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE department='"+dept+"'";
                    }
                    if(name==""&&staffID==""&&post==""&&dept==""&&stat!="")
                    {
                        System.out.println("2");
                        sql="SELECT * FROM user WHERE status='"+stat+"'";
                    }
                    if(name==""&&staffID==""&&post==""&&dept==""&&stat=="")
                    {
                        System.out.println("ghdfjhdtyh");
                        sql="SELECT * FROM user";
                    }
                    //
                    
                    DB db= new DB();
                    System.out.println("sql:"+sql);
                    if(db.connect())
                    {
                        db.query(sql);
                        int numOfRow=db.getNumberOfRows();
                        if(numOfRow-1!=-1)
                        {
                            System.out.println(numOfRow);
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
                    <td style="text-align:center;"><%=i+1%></td>
                    <td style="text-decoration: underline;">
                        <a href="viewProfile.jsp?userID=<%=userID%>"><%
                                    if(qualification!="none")
                                    {
                                        out.print(qualification);
                                    }
                                %><%=name%></a>
                    </td>
                    <td style="text-align:center;"><%=staffID%></td>
                    <td style="text-align:center;"><%=post%></td>
                    <td style="text-align:center;"><%=dept%></td>
                    <td style="text-align: center"><%=stat%></td>
                </tr>   
        
        <%
                        }
                        }
                        else
                        {
        %>
        <tr>
            <td style="text-align:center;" colspan="6">------------No Search Found-----------</td>
        </tr>
        <%
                        }

                    db.close();
                    }
                    
        %>
					</table>
                                    </div>
				</div>
			</div>
			
		</div>
	</div>
    </body>
</html>
<%@ include file="../footer.jsp" %>
<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
>
