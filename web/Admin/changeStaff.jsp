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
        <style>
                .clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 15px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}
                    
          </style>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            String postName=request.getParameter("postName");
            String postID=request.getParameter("postID");
        %>
        <table align="center">
             <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
                <h2 align="center">Change Staff for <%=postName%> position</h2>
            <form role="form">
              <div class="form-group">
                <label for="FilterName" class="col-sm-4 control-label">By Name:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" id="filterName" placeholder="Enter Staff's Name">
                </div>
              </div>
              <div class="form-group">
                <label for="FilterID" class="col-sm-4 control-label">By Staff ID:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" id="filterID" placeholder="Enter Staff's ID">
                </div>
              </div>
              <div class="form-group">
                <label for="FilterPosition" class="col-sm-4 control-label">By Position:</label>
                <div class="col-sm-8">
                    <select name="FilterPosition" id="FilterPosition" class="form-control">
                        <option value="">Choose Position...</option>
                        <option>Lecturer</option>
                        <option>Senior Lecturer</option>                                
                        <option>Associate Professor</option>
                        <option>Professor</option>
                    </select>
                </div>
              </div>
                <div class="form-group">
                <label for="FilterDepartment" class="col-sm-4 control-label">By Department:</label>
                <div class="col-sm-8">
                    <select name="FilterDepartment" id="FilterDepartment" class="form-control">
                        <option value="">Choose Department...</option>
                        <option>Computer Science</option>
                        <option>Software Engineering</option>
                        <option>Information System</option>
                    </select>
                </div>
              </div>
              <div class="form-group" style="padding-left:171px;">
                  
                    <button type="submit" class="btn btn-default">Search</button>
              </div>
            </form>
        </table>
            
            
        <div class="container" align="center">
        
            <div class="" align="center">
                <div class="col-md-30">
                    <form method="get" action="../changePostMenagement">
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
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Start Date:</label>
                                <div class="col-sm-4">
                                    <input type="date" class="form-control" name="newstartDate" required>
                                </div>
                            </div> <br><br><br>
                                    <input type="hidden" name="postID" value="<%=postID%>"> 
                                    <input type="hidden" name="postName" value="<%=postName%>">
                                    <button type="submit" class="btn btn-default">Proceed</button>                                 
                    </form>
                </div>
            </div>
        </div>    

    </body>
</html>
<%@ include file="../footer.jsp" %>
<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
