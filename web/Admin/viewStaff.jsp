<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : viewStaff
    Created on : Jul 26, 2015, 2:45:14 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
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
        <%@ include file="adminHeader.jsp" %>
        <%
            String name=null;
            String staffID=null;
            String post=null;
            String dept=null;
            String stat=null;
            String sql=null;
            //sql=request.getParameter("sql");
            name=request.getParameter("filterName");
            staffID=request.getParameter("filterID");
            post=request.getParameter("FilterPosition");
            dept=request.getParameter("FilterDepartment");
            stat=request.getParameter("FilterStatus");
            
            if((name==null||name=="")&&(staffID==null||staffID=="")&&(post==""||post==null)&&(dept==""||dept==null)&&(stat==""||stat==null))
            {
               
        %>
        
        <table align="center" >
             <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
                <h2 align="center">View Staff</h2>
                <h3 align="center"> Search Engine</h3><br>
                <form role="form" action="viewStaff.jsp">
              <div class="form-group">
                <label for="FilterName" class="col-sm-4 control-label">By Name:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" name="filterName" placeholder="Enter Staff's Name" >
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="FilterID" class="col-sm-4 control-label">By Staff ID:</label>
                <div class="col-sm-8">
                    <input type="" class="form-control" name="filterID" placeholder="Enter Staff's ID" >
                </div>
              </div><br><br>
              <div class="form-group">
                <label for="FilterPosition" class="col-sm-4 control-label">By Position:</label>
                <div class="col-sm-8">
                    <select name="FilterPosition" id="FilterPosition" class="form-control" >
                        <option value="">Not Selected</option>
                        <option value="lecturer">Lecturer</option>
                        <option value="senior lecturer">Senior Lecturer</option>                                
                        <option value="associate professo">Associate Professor</option>
                        <option value="professo">Professor</option>
                    </select>
                </div>
              </div><br><br>
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
              </div><br><br>
                <div class="form-group" style="padding-left:171px;">
                    
                    <button type="submit" class="btn btn-default">Search</button></a>
              </div><br><br>
            </form>
                <a href="ViewAllStaff.jsp?">Display All Staff</a>
             </div>
             
        </table>
        <%
                
            }         
            if(name!=null||staffID!=null||post!=null||dept!=null||stat!=null)
            {
               if(name!=""||staffID!=""||post!=""||dept!=""||stat!="")
                {
        %>
        
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
        <%
                    
                    
                    System.out.println("0");
                    if(name!=""&&staffID!=""&&post!=""&&dept!=""&&stat!="")
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
                    //
                    
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
                            
        %>
        
                <tr>
                    <td style="text-align:center;"><%=i+1%></td>
                    <td style="text-align:center;"><%=name%></td>
                    <td style="text-align:center;"><%=staffID%></td>
                    <td style="text-align:center;"><%=post%></td>
                    <td style="text-align:center;"><%=dept%></td>
                    <td style="text-align: center"><%=stat%></td>
                    <td style="text-align:center;">
                        <form action="profileEdit.jsp" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="id" value="2">
                            <input type="hidden" name="vipID" value="1">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                    
                </tr>   
        
        <%
                        }
                        

                    db.close();
                    }
                    
        %>
                
                </tbody>
        </table>
        <div><a href="viewStaff.jsp">back</a></div>
        </div>
        
            
        
        <%
                }
               
            }
            
        %>
    </body>
</html>
<%@ include file="../footer.jsp" %>
<?----display table(need data from DB) ... button "PROCEED" got prob,take note---?>
