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
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
            String taskID=request.getParameter("taskID");
            String name=null;
            String staffID=null;
            String post=null;
            String dept=null;
            String stat=null;
            String qualification;
            String userID=null;
            int p=0;
            userID=request.getParameter("userID");            
            
            DB db= new DB();
            if(db.connect())
            {
                if(userID!=null)
                {
                    if(db.query("SELECT * FROM tempconfirmmember WHERE userID='"+userID+"'"))
                    {
                        
                       if(db.getNumberOfRows()==0)
                       {
                            System.out.println("not empty");
                            db.query("INSERT INTO tempconfirmmember(userID) VALUES('"+userID+"')");
                       }
                    }
                    else
                    {
                         db.query("INSERT INTO tempconfirmmember(userID) VALUES('"+userID+"')");
                    }
                }
                
        %>
        <div>
        <h4 align="center">Which staff you want to add as a member for the taskforce?</h4><br>
            
        <div class="container" align="center" >
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
                                        <th></th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%      
                                    db.query("SELECT userID FROM tf_member WHERE tfID='"+taskID+"'");
                                    int a=db.getNumberOfRows();
                                    boolean flag =true;
                                    String [] ID=new String[a];
                                    for(int q=0; q<a; q++)
                                    {
                                        ID[q]=db.getDataAt(q,"userID");
                                    }
                                    db.query("SELECT userID FROM tempconfirmmember");
                                    p=db.getNumberOfRows();
                                    String [] u=new String[p];
                                    for(int z=0; z<p; z++)
                                    {
                                        u[z]=db.getDataAt(z, "userID");
                                    }
                                    db.query("SELECT * FROM user WHERE status='active'");
                                    int numOfRow=db.getNumberOfRows();  
                                    for(int i=0; i<numOfRow; i++)
                                    {
                                        flag=true;
                                        userID=db.getDataAt(i, "userID");
                                        for(int k=0; k<a; k++)
                                        {
                                            if(ID[k].equals(userID))
                                            {
                                                flag=false;
                                            }
                                        }
                                        for(int k=0; k<p; k++)
                                        {
                                            if(u[k].equals(userID))
                                            {
                                                flag=false;
                                            }
                                        }
                                        if(flag)
                                        {
                                            name=db.getDataAt( i,"name");
                                            staffID=db.getDataAt( i,"StaffID");
                                            post=db.getDataAt( i,"position");
                                            dept=db.getDataAt( i,"department");
                                            stat=db.getDataAt( i,"status");
                                            qualification=db.getDataAt(i,"qualification");
                                        %>

                                        <tr>
                                            <td><%
                                                if(!qualification.equals("none")&&!qualification.equals("None")&&qualification!=null)
                                                {
                                                    out.print(qualification);
                                                }
                                            %><%=name%></td>
                                            <td><%=staffID%></td>
                                            <td><%=post%></td>
                                            <td><%=dept%></td> 
                                            <td>
                                                <form method="post" action="addMembership.jsp">
                                                    <input type="hidden" name="userID" value="<%=userID%>">
                                                    <input type="hidden" name="taskID" value="<%=taskID%>">
                                                    <button class="btn btn-default">+ add</button>
                                                </form>
                                            </td>
                                        </tr>
                                     <%
                                        }
                                    }
                                 %>  
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
            </div> 
                        
                        
                        
                        
           
        <div class="container" align="center" >
                <div class="col-md-30">
                    
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                                <h3 class="panel-title">Selected Staff</h3>
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
                                        <th>Staff Name</th>
                                        <th>Staff ID</th>
                                        <th>Position</th>
                                        <th>Department</th>
                                        <th></th>
                                    </tr>
                            </thead>
                            <tbody>
                            <%                               
                                    
                                    db.query("SELECT * FROM tempconfirmmember INNER JOIN user ON user.userID=tempconfirmmember.userID");
                                    int numRow=db.getNumberOfRows();
                                    if(numRow-1!=-1)
                                    {
                                        
                                    for(int i=0; i<numRow; i++)
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
                                                        <td><%
                                                            if(!qualification.equals("none")&&!qualification.equals("None")&&qualification!=null)
                                                            {
                                                                out.print(qualification);
                                                            }
                                                        %><%=name%></td>
                                                        <td><%=staffID%></td>
                                                        <td><%=post%></td>
                                                        <td><%=dept%><input type="hidden" name="userID<%=i%>" value="<%=userID%>" ></td>  
                                                        <td>
                                                            <form method="get" action="../removeTempUser">
                                                                <input type="hidden" name="userID" value="<%=userID%>">
                                                                <input type="hidden" name="taskID" value="<%=taskID%>">
                                                                <button type="submit" class="btn btn-default">Remove</button> 
                                                            </form>
                                                        </td>
                                                    </tr>
                                                 <%
                            
                                    }
                                    }
                                 %>  
                            </tbody>
                        </table>
                        </div>
                    </div>
                    <form method="post" action="addMemberConfirmation.jsp">
                        <input type="hidden" name="taskID" value="<%=taskID%>">
                        <button type="submit" class="btn btn-default">Proceed</button>                                 
                    </form>
                    <form method="post" action="viewCT.jsp">
                        <button type="submit" class="btn btn-default">Cancel</button>
                        <input type="hidden" name="taskID" value="<%=taskID%>">
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
<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
