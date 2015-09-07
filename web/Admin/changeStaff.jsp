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
            String postID=request.getParameter("postID");
            String idPost=request.getParameter("idPost");
            DB db= new DB();
            if(db.connect())
                                {
                                    db.query("SELECT postName FROM postdetail WHERE postID='"+postID+"'");
                                    String postName=db.getDataAt(0, "postName");
        %>
        <h2 align="center">Change Staff for <%=postName%> position</h2><br>
        <form method="get" action="../changePostMenagement">
            <div class="container" align="center" style="width: 700px;">
                <div class="form-group" align="center">
                    <label class="col-sm-3 control-label">Start Date:</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="newstartDate" required>
                    </div>
                </div> <br><br>
                <div class="form-group" align="center">
                    <label class="col-sm-3 control-label">End Date:</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="newendDate" required>
                    </div>
                </div> <br><br><br>
            </div>
        <div class="container" align="center">
        
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
                        <input type="hidden" name="idPost" value="<%=idPost%>"> 
                        <input type="hidden" name="postID" value="<%=postID%>">
                        <button type="submit" class="btn btn-default">Proceed</button>                                 
                    
                </div>
            </div>
        </div>    
    </form>
    </body>
</html>
<%@ include file="../footer.jsp" %>
<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
