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
        
        <h2 align="center">Post Management</h2><br>
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
            String stDate=null;
            String endDate=null; 
            String sql1="SELECT * FROM ak_position WHERE status='active'";
            String sqlemail="SELECT * FROM user WHERE ak_position.userID=user.userID";
            DB db= new DB();
            System.out.println("sql:"+sql1);
            if(db.connect())
            {
                db.query(sql1);
                int numOfRow=db.getNumberOfRows();
                for(int i=0; i<numOfRow; i++)
                {
                    post=db.getDataAt( i,"postName");
                    name=db.getDataAt( i,"userID");
                    email=db.getDataAt( i,"positionID");
                                  
        %>    
                <tr>
                    <td style="text-align:center;"><%=post%></td>
                    <td style="text-align:center;"><%=name%></td>
                    <td style="text-align:center;"><%=email%></td>
                    <td style="text-align:center;"><%=stDate%></td>
                    <td style="text-align:center;"><%=endDate%></td>
                    <td style="text-align:center;">
                        <form action="profileEdit.jsp" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="id" value="2">
                            <input type="hidden" name="vipID" value="1">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                    <td style="text-align:center;">
                        <form action="changeStaff.jsp" method="post" > <?---where to,action & method---?>
                            <input type="hidden" name="memberID" value="2">
                            <input type="hidden" name="vipID" value="1">
                            <input type="submit" value="Change staff">
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
        </div>
    </body>
</html>
<%@ include file="../footer.jsp" %>