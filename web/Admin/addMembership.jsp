<%-- 
    Document   : changeStaff
    Created on : Jul 27, 2015, 9:35:20 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<%@page import="TFMSystem.changePostMenagement"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <title>UTM Task Force</title>
        
        <%@include file="../head.jsp" %>
        
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            
            String taskID=request.getParameter("taskID");
            String name=null;
            String staffID=null;
            String post=null;
            String dept=null;
            String stat=null;
            String qualification=null;
            String userID=null;
            userID=request.getParameter("userID");
            DB db= new DB();
            db.connect();
            if(userID==null||userID=="")
            {
        %>
        
        <h4 align="center">Which staff you want to add as a member for the taskforce?</h4><br>
        <form method="post" action="addMembership.jsp">
            
        <div class="container" align="center" >
        
            <div class="" align="center">
                <div class="col-md-30">
                    
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
                        <div style="max-height: 400px; overflow-y: scroll;">
                       
                        <table class="table table-hover" id="dev-table" >
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
                                String sql="SELECT * FROM user ";
                                
                                
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
                                        <td>
                                            <input type="radio" name="userID" value="<%=userID%>" >
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
                    </div>
                        <input type="hidden" name="taskID" value="<%=taskID%>">
                        <input type="hidden" name="numOfRow" value="<%=numOfRow%>">
                        <button type="submit" class="btn btn-default">Proceed</button>                                 
                    
                </div>
            </div>
        </div>    
    </form>
                        <%         
            }
            else
            {
                db.query("SELECT * FROM tf WHERE idTF='"+taskID+"'");
                    String taskName=db.getDataAt( 0,"TFname");
                db.query("SELECT * FROM user WHERE userID='"+userID+"'");
                    name=db.getDataAt( 0,"name");
                    staffID=db.getDataAt( 0,"StaffID");
                    post=db.getDataAt( 0,"position");
                    dept=db.getDataAt( 0,"department");
                    stat=db.getDataAt( 0,"status");
                    userID=db.getDataAt(0, "userID");
                    qualification=db.getDataAt(0,"qualification");
                        %>
                <h2 align="center">Confirmation</h2>
                <div class="container" align="center" style="width:500px;">
                    <div class="" align="center">
                        <div class="col-md-30">
                            <div class="panel panel-primary">
                                <form action="../addMembership" method="post">
                                <table class="table table-hover" id="dev-table">
                                    <thead>
                                        <tr >
                                            <td><b>Staff Name:</b></td>
                                            <td ><%if(qualification!="none"||qualification!=null)
                                                    {
                                                        out.print(qualification);
                                                    }
                                                %><%=name%></td>
                                        </tr>
                                        <tr>
                                            <td><b>Staff ID:</b></td>
                                            <td ><%=staffID%></td>
                                        </tr>
                                        <tr>
                                            <td><b>Position:</b></td>
                                            <td >
                                                    <%=post%></td>
                                        </tr>
                                        <tr>
                                            <td><b>Department:</b></td>
                                            <td >
                                                    <%=dept%></td>
                                        </tr>
                                        <tr>
                                            <td><b>Taskforce Assign:</b></td>
                                            <td >
                                                    <%=taskName%></td>
                                        </tr>
                                        <tr>
                                            <td><b>Date Start:</b></td>
                                            <td ><input type="date" class="form-control" name="StartDate" required></td>
                                        </tr>
                                        <tr>
                                            <td><b>Status:</b></td>
                                            <td ><input type="date" class="form-control" name="endDate" required></td>
                                        </tr>
                                        <tr>
                                            
                                            <td colspan="2" align="center">
                                                <br>
                                                    <input type="hidden" name="taskID" value="<%=taskID%>">
                                                    <input type="hidden" name="userID" value="<%=userID%>">
                                                    <input type="submit" value="Confirm">
                                                
                                            </td>
                                        </tr>
                                    </thead>
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        
        <%
            }
        %>
    </body>
</html>
<%@ include file="../footer.jsp" %>
<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
