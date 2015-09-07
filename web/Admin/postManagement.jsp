<%-- 
    Document   : postManagement
    Created on : Jul 26, 2015, 3:29:37 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
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
        <%
            String userSession=(String)session.getAttribute("user");
            String userType=(String)session.getAttribute("userType");
            if (((userSession==null))||(!userType.equals("admin")&&!userType.equals("Admin"))) {
                response.sendRedirect("../message.jsp");
            }
        %>
        <%@ include file="adminHeader.jsp" %><br>
        
        
        <div class="container" align="center">
            
    <a class="btn btn-default" href="assignPost.jsp">Assign Position</a>
    <h1 align="center"> Post Management </h1>
    <div class="row" align="center">
			<div class="col-md-60">
                            <div class="panel panel-primary" style="width: 950px">
					<div class="panel-heading">
						<h3 class="panel-title">Staff Details</h3>
						
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr align="center">
								<td style="text-align: center"><b>Post</b></td>
                                                                <td style="text-align: center"><b>Name</b></td>
                                                                <td style="text-align: center"><b>Email</b></td>
                                                                <td style="text-align: center"><b>Start Date</b></td>
                                                                <td style="text-align: center"><b>End Date</b></td>
                                                                <td style="text-align: center" colspan='2'><b>Admin options</b></td>
                                                        </tr>
						</thead>
						<tbody>
							<%
            String postID=null;
            String email=null;
            String name=null;
            String startDate=null;
            String lastDate=null; 
            String userID=null;
            String idPost=null;
            String postName=null;
            String status=null;
            String qualification=null;
            String sql="SELECT postdetail.postName,ak_position.idPost, ak_position.postID, ak_position.status, user.name, user.qualification, user.userID, user.email, ak_position.lastDate, ak_position.startDate FROM ak_position INNER JOIN user ON ak_position.userID=user.userID INNER JOIN postdetail ON postdetail.postID=ak_position.postID";
            DB db= new DB();
            System.out.println("sql:"+sql);
            if(db.connect())
            {
                db.query(sql);
                int numOfRow=db.getNumberOfRows();
                for(int i=0; i<numOfRow; i++)
                {
                    postID=db.getDataAt( i,"postID");
                    postName=db.getDataAt(i, "postName");
                    userID=db.getDataAt(i,"userID");
                    name=db.getDataAt( i,"name");
                    email=db.getDataAt( i,"email");
                    idPost=db.getDataAt(i,"idPost");
                    startDate=db.getDataAt( i,"startDate");
                    status=db.getDataAt(i, "status");
                    lastDate=db.getDataAt(i, "lastDate");
                    qualification=db.getDataAt(i,"qualification");
                    if(status.equals("active")){
                                  
        %>    
                <tr>
                    <td style="text-align:center;"><%=postName%></td>
                    <td style="text-align:center;"><%
                                    if(qualification!="none"&&qualification!=null)
                                    {
                                        out.print(qualification);
                                    }
                                %> <%=name%></td>
                    <td style="text-align:center;"><%=email%></td>
                    <td style="text-align:center;"><%=startDate%></td>
                    <td style="text-align:center;"><%=lastDate%></td>
                    <td style="text-align:center;">
                        <form action="EditPostMenagement.jsp" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="idPost" value="<%=idPost%>">
                            <input type="submit" value="Edit" class="btn btn-toolbar">
                        </form>
                    </td>
                    <td style="text-align:center;">
                        <form action="changeStaff.jsp" method="post" > <?---where to,action & method---?>
                            <input type="hidden" name="idPost" value="<%=idPost%>">
                            <input type="hidden" name="postID" value="<%=postID%>">
                            <input type="submit" value="Change staff" class="btn btn-toolbar">
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
        
        
        <div class="container" align="center">
    <h1 align="center"> Ex Post Management </h1>
    <div class="row" align="center">
			<div class="col-md-60">
				<div class="panel panel-primary" style="width: 950px">
					<div class="panel-heading">
						<h3 class="panel-title">Staff Details</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table1" placeholder="Search Staff" />
					</div>
                                    <div style="max-height:500px; overflow-y: scroll;">
					<table class="table table-hover" id="dev-table1">
						<thead>
							<tr align="center">
								<td style="text-align: center"><b>Post</b></td>
                                                                <td style="text-align: center"><b>Name</b></td>
                                                                <td style="text-align: center"><b>Email</b></td>
                                                                <td style="text-align: center"><b>Start Date</b></td>
                                                                <td style="text-align: center"><b>End Date</b></td>
                                                        </tr>
						</thead>
						<tbody>
                                                    
                                                    <%
                for(int i=0; i<numOfRow; i++)
                {
                    postName=db.getDataAt( i,"postName");
                    name=db.getDataAt( i,"name");
                    email=db.getDataAt( i,"email");
                    startDate=db.getDataAt( i,"startDate");
                    lastDate=db.getDataAt(i, "lastDate");
                    status=db.getDataAt(i, "status");
                    qualification=db.getDataAt(0, "qualification");
                    if(status.equals("not active")){         
        %>
                <tr>
                    <td style="text-align:center;"><%=postName%></td>
                    <td style="text-align:center;"><%
                                    if(qualification!="none"&&qualification!=null)
                                    {
                                        out.print(qualification);
                                    }
                                %> <%=name%></td>
                    <td style="text-align:center;"><%=email%></td>
                    <td style="text-align:center;"><%=startDate%></td>
                    <td style="text-align:center;"><%=lastDate%></td>
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
				</div>
			</div>
			
		</div>
	</div>
        

    </body>
</html>
<%@ include file="../footer.jsp" %>