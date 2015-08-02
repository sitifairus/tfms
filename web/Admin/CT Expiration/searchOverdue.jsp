<%-- 
    Document   : searchOverdue
    Created on : Jul 29, 2015, 12:31:47 PM
    Author     : user8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
        
    </body>
</html>
<f:view>
        <h:form><h2 align="center">Overdue expiry date for C/T members</h2>
      <h2 align="center">Search Engine</h2></h:form>
            <table align="center" border="0" cellspacing="1" cellpadding="1">
               
                <tbody>
                    <tr>
                        <td>Filter search by name</td>
                        <td>:<input type="text" name="name" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Filter search by staff ID</td>
                        <td>:<input type="text" name="username" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Filter search by position</td>
                         <td>:<select name="position">
                                <option value="">--Not Selected--</option>
                                <option value="1">Senior Lecturer</option>
                                <option value="2">Lecturer</option>
                                <option value="3">Associate Professor</option>
                                <option value="4">Professor</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Filter search by department</td>
                        <td>:<select name="department">
                                <option value="">--Not Selected--</option> 
                                <option value="1">Computer Science</option>
                                <option value="2">Software Engineering</option>
                                <option value="3">Information System</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td> 
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;"><input type="submit" value="Search" /></td>
                    </tr>
                                        
                </tbody>
            </table>
   <table><tr><td>Name</td><td>Staff ID</td><td>Position</td><td>Department</td><td>C/T</td></tr>
   
</f:view>

