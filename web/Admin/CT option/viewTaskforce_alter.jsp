<%-- 
    Document   : viewTaskforce_alter
    Created on : Jul 29, 2015, 9:56:19 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Task Alter</title>
    </head>
    <body>
        <form method="POST" action="viewTaskforce_alter.jsp">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <th colspan="3">Please input the committee/taskforce you want to alter</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="3"> Search engine</td>
                        
                    </tr>
                    <tr>
                        <td>Filter search by committee/taskforce</td>
                        <td>:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /></td>
                    </tr>
                    <tr>
                        <td>Filter search by coordinator</td>
                        <td>:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /></td>
                    </tr>
                    <tr>
                        <td>Filter search by office</td>
                        <td>:</td>
                        <td><select name="office">
                            <option value="">Not Selected</option>
                            <option value="1">Jawatankuasa/Penyelaras di Pejabat Pembangunan</option>
                            <option value="2">Jawatankuasa di Pejabat Akademik</option>
                            <option value="3">Penyelaras Program Pra-Siswazah (Undergraduate)</option>
                            <option value="4">Penyelaras Program Pasca-Siswazah (Postgraduate)</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td>Filter search by year</td>
                        <td>:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="search" /></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
        
        <form action="selectedTask.jsp" method="post">
            <?--display table--?>
            <table align="center" border="0">
                <tr><td><input align=center type="submit" value="Proceed" /></td></tr>
            </table>
            
        </form>
    </body>
</html>
