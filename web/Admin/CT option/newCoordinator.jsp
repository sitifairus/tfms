<%-- 
    Document   : newCoordinator
    Created on : Jul 27, 2015, 3:51:14 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Coordinator</title>
    </head>
    <body>
        <form method="POST">
             <table border="0" align="center">
            <thead>
                <tr>
                    <td>&nbsp;</td>
                    <th colspan="2"><h2>Choose a new coordinator for the newly assigned committee/taskforce</h2></th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><h3>Search engine</h3></td>
                 
                </tr>
                <tr>
                    <td>Filter search by name</td>
                    <td>:</td>
                    <td><input type="text" name="name" value="" size='30'/></td>
                </tr>
                <tr>
                    <td>Filter search by staff ID</td>
                    <td>:</td>
                    <td><input type="text" name="staffID" value="" size='30'/></td>
                </tr>
                <tr>
                    <td>Filter search by position</td>
                    <td>:</td>
                    <td><select name="position">
                                <option>Lecturer</option>
                                <option>Senior Lecturer</option>                                
                                <option>Associate Professor</option>
                                <option>Professor</option>
                            </select></td>
                </tr>
                <tr>
                    <td>Filter search by department</td>
                    <td>:</td>
                    <td><select name="department">
                                <option>Computer Science</option>
                                <option>Software Engineering</option>
                                <option>Information System</option>
                            </select></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input type="submit" value="search" /></td>
                </tr>
            </tbody>
        </table>

        </form>
        
        
        <form method="POST" action="newTaskConfirm.jsp">
        
       
        <table align="center" border="0">
            <tr> 
                <?--table from DB,display list of staff--?>
                <td>&nbsp;</td>
                <td><input type="submit" value="proceed"/></td>
            </tr>            
        </table>
        
       </form>
        
    </body>
</html>
