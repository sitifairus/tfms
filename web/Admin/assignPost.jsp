<%-- 
    Document   : assignPost
    Created on : Sep 5, 2015, 10:19:14 PM
    Author     : on
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %><br>
        <%
            String postName=request.getParameter("postName");
            String postID=request.getParameter("postID");
            String startDate=request.getParameter("startDate");
            String endDate=request.getParameter("endDate");
            boolean flag;
            DB db=new DB();
            
            if(db.connect())
            {
                if(postName!=null)
                {
                    db.query("SELECT * FROM postdetail WHERE postName='"+postName+"'");
                    if(db.getNumberOfRows()==0)
                    {
                        db.query("INSERT INTO postdetail(postName) VALUES('"+postName+"') ");
                    }
                    
                }
                if(postID==null)
                {
                String [] post=new String[30];
                db.query("SELECT postID FROM ak_position WHERE status='active'");
                int k=db.getNumberOfRows();
                for(int i=0; i<k; i++)
                {
                    post[i]=db.getDataAt(i, "postID");
                }
                
        %>
        <table align="center" >
             <div class="container" style="width:500px;">
                <h3 align="center"> Assign Academic Position</h3><br>
                <form role="form" method="post" action="assignPost.jsp">
              <div class="form-group">
                <label class="col-sm-4 control-label">Position:</label>
                <div class="col-sm-8">
                    <select name="postID" id=Position" class="form-control" >
        <%
                db.query("SELECT * FROM postdetail");
                for(int i=0; i<db.getNumberOfRows(); i++)
                {
                    flag=true;
                    postID=db.getDataAt(i, "postID");
                    for(int q=0; q<k;q++)
                    {
                        if(postID.equals(post[q]))
                        {
                            flag=false;
                        }
                    }
                    if(flag)
                    {
                        postName=db.getDataAt(i, "postName");
        %>
                        <option value="<%=postID%>"><%=postName%></option>
        <%
                        
                    }
                        
                }
        %>
                    </select>
                    
                </div>
              </div>     
              <div class="form-group">
                <label class="col-sm-4 control-label">Start Date:</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" name="startDate" required >
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">End Date:</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" name="endDate" required >
                </div>
              </div>
              </div>
                <div class="form-group" style="padding-left:587px;">
                    
                    <button type="submit" class="btn btn-default">Next<span>  <i class="glyphicon glyphicon-arrow-right"></i></span></button>
              </div>
            </form>
             <div align="center"><a href="#" data-toggle="modal" data-target="#NewPostModal">Add New Position</a><br></div>
             
        </table>
              <%
                }
                else
                {
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
        
        <table align="center" >
             <div class="container" style="width:500px;">
                <h2 align="center">Select Staff to Assign</h2>
                <h3 align="center"> Search Engine</h3><br>
                <form role="form" action="assignPost.jsp">
                    <input type="hidden" name="postID" value="<%=postID%>">
                    <input type="hidden" name="startDate" value="<%=startDate%>">
                    <input type="hidden" name="endDate" value="<%=endDate%>">
              <div class="form-group">
                <label for="FilterName" class="col-sm-4 control-label">By Name:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" name="filterName" placeholder="Enter Staff's Name" >
                </div>
              </div>
              <div class="form-group">
                <label for="FilterID" class="col-sm-4 control-label">By Staff ID:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" name="filterID" placeholder="Enter Staff's ID" >
                </div>
              </div>
              <div class="form-group">
                <label for="FilterPosition" class="col-sm-4 control-label">By Position:</label>
                <div class="col-sm-8">
                    <select name="FilterPosition" id="FilterPosition" class="form-control" >
                        <option value="">Not Selected</option>
                        <option value="lecturer">Lecturer</option>
                        <option value="senior lecturer">Senior Lecturer</option>                                
                        <option value="associate professor">Associate Professor</option>
                        <option value="professor">Professor</option>
                    </select>
                </div>
              </div>
                <div class="form-group">
                <label for="FilterDepartment" class="col-sm-4 control-label">By Department:</label>
                <div class="col-sm-8">
                    <select name="FilterDepartment" id="FilterDepartment" class="form-control" >
                        <option value="">Not Selected</option>
                        <option value="computer science">Computer Science</option>
                        <option value="software engineering">Software Engineering</option>
                        <option value="information system">Information System</option>
                    </select>
                </div>
              </div><br><br>
                
              <div class="form-group">
                <label for="FilterStatus" class="col-sm-4 control-label">By Status:</label>
                <div class="col-sm-8">
                    <select name="FilterStatus" id="FilterStatus" class="form-control" >
                        <option value="">Not Selected</option>
                        <option value="active">Active</option>
                        <option value="not active">Not Active</option>
                    </select>
                </div>
              </div>
                <div class="form-group" style="padding-left:171px;">
                    
                    <button type="submit" class="btn btn-default">Search</button>
                    <a href="assignPost.jsp?postID=<%=postID%>&startDate=<%=startDate%>&endDate=<%=endDate%>" style="text-decoration: underline;">Display All Staff</a><br>
              </div>
            </form>
               
             </div>
             
        </table>
        
              <form method="post" action="../assignPost"> 
                    <input type="hidden" name="postID" value="<%=postID%>">
                    <input type="hidden" name="startDate" value="<%=startDate%>">
                    <input type="hidden" name="endDate" value="<%=endDate%>">
        <div class="container" align="center">
    <div class="row" align="center" style="width: 900px">
			<div class="col-md-60">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Staff Details</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-search"></i>
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
                    
                    System.out.println("sql:"+sql);
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
                    <td style="text-align:center;"><input type="radio" name="userID" value="<%=userID%>" checked></td>
                    <td style="text-decoration: underline;"><%
                                    if(qualification!="none")
                                    {
                                        out.print(qualification);
                                    }
                                %><%=name%>
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

                    
        %>
					</table>
                                    </div>
				</div>
			</div>
			
		</div>
	</div>
                                        <div align="center">
                                            <button class="btn btn-default">Proceed</button>
                                        </div>
              </form>
                                        
                                        
                    <%
                }
                
                db.close();
            }
              %>
              
            <div class="modal fade" id="NewPostModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true" >
                <div class="container">    
                    <div id="loginbox" style="margin-top:50px; width:450px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >                    
                        <div class="panel panel-info" >
                            <div class="panel-title"><br>.        .<img src="../images/logoUtm.png" alt="" style="width:30px;"/>.  <b>Insert New Post Management Position</b>
                                <br><br>
                                <form class="form-horizontal" role="form" method="post" action="assignPost.jsp">
                                    <div class="col-sm-7">
                                        <input class="form-control" type="text" name="postName" placeholder="Enter New Position">
                                    </div>
                                    <div>
                                        <button id="btn-login" class="btn btn-success" >Confirm</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button> 
                                    </div>
                                    <br><br>
                                </form>
                            </div>                      
                        </div>  
                    </div>
                </div>
            </div>
    </body>
</html>
<%@ include file="../footer.jsp" %>