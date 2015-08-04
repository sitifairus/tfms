<%-- 
    Document   : viewTaskforce_alter
    Created on : Jul 29, 2015, 9:56:19 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../head.jsp" %>
        <title>View Task Alter</title>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <form method="POST" action="viewTaskforce_alter.jsp">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <th colspan="3" ><h2 align="center">Please input the committee/taskforce <br>you want to alter</h2></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="3" align="center"><h3>Search engine </h3></td>
                        
                    </tr>
                    <tr>
                        <td valign="top"><b>Filter search by committee/taskforce</b></td>
                        <td valign="top">:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /><br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>Filter search by coordinator</b></td>
                        <td valign="top">:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /><br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>Filter search by office</b></td>
                        <td valign="top">:</td>
                        <td><select name="office">
                             <option value=""> Not Selected </option>
                            <option value="1">Jawatankuasa/Penyelaras di Pejabat Pembangunan</option>
                            <option value="2">Jawatankuasa di Pejabat Akademik</option>
                            <option value="3">Penyelaras Program Pra-Siswazah (Undergraduate)</option>
                            <option value="4">Penyelaras Program Pasca-Siswazah (Postgraduate)</option>
                        </select><br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>Filter search by year</b></td>
                        <td valign="top">:</td>
                        <td><input size="30" type="text" name="taskforce" value="" /><br><br></td>
                   <br><br> </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="search" /></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
        
    </body>
</html>
