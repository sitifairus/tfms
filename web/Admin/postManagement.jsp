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
        <%@ include file="adminHeader.jsp" %><br>
        
        <h2 align="center">Current Post Management</h2><br>
        <div class="container">
        <table border="2"  align="center" cellspacing="2" cellpadding="2" class="table table-bordered">
            <tbody>
                <tr>
                    <td style="text-align: center"><b>Post</b></td>
                    <td style="text-align: center"><b>Name</b></td>
                    <td style="text-align: center"><b>Email</b></td>
                    <td style="text-align: center"><b>Start Date</b></td>
                    <td style="text-align: center"><b>End Date</b></td>
                    <td style="text-align: center" colspan='2'><b>Admin options</b></td>

                </tr>
        <%
            String post=null;
            String email=null;
            String name=null;
            String startDate=null;
            String lastDate=null; 
            String userID=null;
            String postID=null;
            String status=null;
            String sql="SELECT ak_position.postName,ak_position.postID, ak_position.status, user.name, user.userID, user.email, ak_position.lastDate, ak_position.startDate FROM ak_position JOIN user ON ak_position.userID=user.userID";
            DB db= new DB();
            System.out.println("sql:"+sql);
            if(db.connect())
            {
                db.query(sql);
                int numOfRow=db.getNumberOfRows();
                for(int i=0; i<numOfRow; i++)
                {
                    post=db.getDataAt( i,"postName");
                    userID=db.getDataAt(i,"userID");
                    name=db.getDataAt( i,"name");
                    email=db.getDataAt( i,"email");
                    postID=db.getDataAt(i,"postID");
                    startDate=db.getDataAt( i,"startDate");
                    lastDate=db.getDataAt(i, "lastDate");
                    status=db.getDataAt(i, "status");
                    if(status.equals("active")){
                                  
        %>    
                <tr>
                    <td style="text-align:center;"><%=post%></td>
                    <td style="text-align:center;"><%=name%></td>
                    <td style="text-align:center;"><%=email%></td>
                    <td style="text-align:center;"><%=startDate%></td>
                    <td style="text-align:center;"><%=lastDate%></td>
                    <td style="text-align:center;">
                        <form action="profileEdit.jsp" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="userID" value="<%=userID%>">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                    <td style="text-align:center;">
                        <form action="changeStaff.jsp" method="post" > <?---where to,action & method---?>
                            <input type="hidden" name="postID" value="<%=postID%>">
                            <input type="hidden" name="postName" value="<%=post%>">
                            <input type="submit" value="Change staff">
                        </form>
                    </td>
               </tr>
        <%
                    }
                }
        %>
        
        <div class="container">
            
        <table border="2"  align="center" cellspacing="2" cellpadding="2" class="table table-bordered">
            <h2 align="center">Ex's Post Management</h2><br>
            <tbody>
                <tr>
                    <td style="text-align: center"><b>Post</b></td>
                    <td style="text-align: center"><b>Name</b></td>
                    <td style="text-align: center"><b>Email</b></td>
                    <td style="text-align: center"><b>Start Date</b></td>
                    <td style="text-align: center"><b>End Date</b></td>

                </tr>        
        
        <%
                for(int i=0; i<numOfRow; i++)
                {
                    post=db.getDataAt( i,"postName");
                    name=db.getDataAt( i,"name");
                    email=db.getDataAt( i,"email");
                    startDate=db.getDataAt( i,"startDate");
                    lastDate=db.getDataAt(i, "lastDate");
                    status=db.getDataAt(i, "status");
                    if(status.equals("not active")){         
        %>
                <tr>
                    <td style="text-align:center;"><%=post%></td>
                    <td style="text-align:center;"><%=name%></td>
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
    </body>
</html>
<%@ include file="../footer.jsp" %>