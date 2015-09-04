<%-- 
    Document   : createTask
    Created on : Jul 27, 2015, 3:49:04 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<%@page import="TFMSystem.createTask"%>
<!DOCTYPE html>
<html>
    <head>
              
        <%@include file="../head.jsp" %>
        
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            DB db= new DB();
            String taskName="";
            String officeID="";
            String officeName="";
            officeID=request.getParameter("office");
            taskName=request.getParameter("taskName");
            String startDate=request.getParameter("startDate");
            String endDate=request.getParameter("endDate");
            System.out.println("officeName:"+taskName);
            if(taskName==null)
            {
        
        %>
        
        

        <table align="center">
            <div class="container" style="width:600px; padding-bottom: 50px; padding-top: 20px;" border="2">
                <h2 align="center">New Committee/Taskforce data</h2><br>
                <form role="form" method="get" action="createTask.jsp">
                    <div class="form-group">
                      <label for="TaskName" class="col-sm-3 control-label">C/T Name:</label>
                      
                      <div class="col-sm-9">
                          <input type="" class="form-control" name="taskName" placeholder="Enter Task Name" required>
                      </div><br><br>
                    </div>
                    <div class="form-group">
                    <label for="office" class="col-sm-3 control-label">Office:</label>
                    <div class="col-sm-9">
                        <select name="office" class="form-control">
                            
                           
                            
                            <%
                                
                                //out.println("sql:"+sql);
                                if(db.connect())
                                {
                                    db.query("SELECT * FROM office");
                                    int numOfRow=db.getNumberOfRows();
                                    //out.println("numOfRow:"+numOfRow);
                                    for(int i=0;i<numOfRow;i++)
                                    {
                                        officeName=db.getDataAt(i,"officeName");
                                        officeID=db.getDataAt(i, "idoffice");
                                    
                            %>          
                            <option value="<%=officeID%>"><%=officeName%></option>
                            <%
                                    }
                                    db.close();
                                }
                            %>
                        </select><a href="#">Add New Office</a>
                    </div><br><br>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-3 control-label">Start Date:</label>
                        <div class="col-sm-9">
                          <input type="date" class="form-control" name="startDate" placeholder="Enter Task Start Date">
                        </div><br><br>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-3 control-label">End Date:</label>
                        <div class="col-sm-9">
                          <input type="date" class="form-control" name="endDate" placeholder="Enter End Date">
                        </div><br>
                    </div>
                   .
                    <div class="form-group" style="padding-left:160px;">
                        <button class="btn btn-default">Proceed</button>
                    </div>
                    
                </form>
            </div>
        </table>
        <%
            }
            else
            {
        %>
        
        
        <table align="center">
            <div class="container" style="width:600px; padding-bottom: 50px; padding-top: 20px;" border="2">
                <h2 align="center">New Committee/Taskforce data</h2><br>
                    <div class="form-group">
                      <label for="TaskName" class="col-sm-4 control-label">C/T Name:</label>
                      <%=taskName%>
                    </div>
                    <div class="form-group">
                        <label for="office" class="col-sm-4 control-label">Office:</label>
                        <%  if(db.connect())
                            {
                                db.query("SELECT * FROM office WHERE idoffice='"+officeID+"'");
                                officeName=db.getDataAt(0,"officeName");
                                out.println(officeName);
                                db.close();
                            }
                        %>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-4 control-label">Start Date:</label>
                        <%=startDate%>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-4 control-label">End Date:</label>
                        <%=endDate%>
                    </div>
                  
            </div>
        </table> 
        <div class="container" align="center" style="width:950px;">
            <div class="" align="center">
                <div class="col-md-30">
                    <h3 align="center">Choose a new coordinator for the newly assigned committee/taskforce</h3><br>
                    <form method="get" action="../createTask">
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
                                String sql="SELECT * FROM user";
                                String name=null;
                                String staffID=null;
                                String post=null;
                                String dept=null;
                                String stat=null;
                                String qualification=null;
                                String userID=null;
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
                                        <td>
                                            <input type="radio" name="userID" value="<%=userID%>" checked>
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
                                }
                                db.close();
                                 
                                 %>  
                            </tbody>
                        </table>
                    </div>
                        <input type="hidden" name="officeName" value="<%=officeName%>">
                        <input type="hidden" name="taskName" value="<%=taskName%>">
                        <input type="hidden" name="officeID" value="<%=officeID%>">
                        <input type="hidden" name="startDate" value="<%=startDate%>">
                        <input type="hidden" name="endDate" value="<%=endDate%>">
                        <button type="submit" class="btn btn-default">Proceed</button>                                 
                    </form>
                </div>
            </div>
        </div>
        
        
        <%
            }
        
        %>
    </body>
</html>
<%@ include file="../footer.jsp" %>