<%-- 
    Document   : ViewAllStaff
    Created on : Aug 5, 2015, 3:08:59 PM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
        $(document).ready(function(){
            $('#myTable').dataTable();
        });
        </script>
        <%@include file="../head.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <h2 align="center">Result</h2><br>
        <div class="container">
        <table border="2"  align="center" cellspacing="2" cellpadding="2" id="myTable" class="table table-striped">
            <tbody>
                <tr>
                    <td style="text-align: center"><b>No.</b></td>
                    <td style="text-align: center"><b>Name</b></td>
                    <td style="text-align: center"><b>Staff ID</b></td>
                    <td style="text-align: center"><b>Position</b></td>
                    <td style="text-align: center"><b>Department</b></td>
                    <td style="text-align: center"><b>Status</b></td>
                    <td style="text-align: center" colspan='2'><b>Admin options</b></td>

                </tr>
        <% //
                    String name=null;
                    String staffID=null;
                    String post=null;
                    String dept=null;
                    String stat=null; 
                    String userID=null;
                    String sql="SELECT * FROM user ";
                    DB db= new DB();
                    System.out.println("sql:"+sql);
                    if(db.connect())
                    {
                        db.query(sql);
                        int numOfRow=db.getNumberOfRows();
                        for(int i=0; i<numOfRow; i++)
                        {
                            name=db.getDataAt( i,"name");
                            staffID=db.getDataAt( i,"StaffID");
                            post=db.getDataAt( i,"position");
                            dept=db.getDataAt( i,"department");
                            stat=db.getDataAt( i,"status");
                            userID=db.getDataAt(i,"userID");
                            
        %>
        
                <tr>
                    <td style="text-align:center;"><%=i+1%></td>
                    <td style="text-align:center;"><%=name%></td>
                    <td style="text-align:center;"><%=staffID%></td>
                    <td style="text-align:center;"><%=post%></td>
                    <td style="text-align:center;"><%=dept%></td>
                    <td style="text-align: center"><%=stat%></td>
                    <td style="text-align:center;">
                        <form action="profileEdit.jsp" method="get"> <?---where to,action & method---?>
                            <input type="hidden" name="userID" value="<%=userID%>">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                    
                </tr>   
        
        <%
                        }
                        

                    
                    }
                    db.close();
        %>
                
                </tbody>
        </table>
        <div><a href="viewStaff.jsp">back</a></div>
        </div>
        
        <%@ include file="../footer.jsp" %>
    </body>
</html>
