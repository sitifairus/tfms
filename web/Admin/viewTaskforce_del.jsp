<%-- 
    Document   : viewTaskforce_del
    Created on : Jul 29, 2015, 10:42:12 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../head.jsp" %>
        
        <title>delete taskforce</title>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <table border="0" align="center">
            <thead>
                <tr>
                    <th colspan="3"><h2>Please input the committee / taskforce you want to delete</h2></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><h4>Search Engine</h4></td>
                    
                </tr>
                <tr>
                    <td valign="top"><b>Filter search by committee/taskforce</b></td>
                    <td valign="top">:</td>
                    <td><input type="text" name="name" value="" size='30'/><br><br></td>
                </tr>
                <tr>
                    <td valign="top"><b>Filter search by coordinator</b></td>
                    <td valign="top">:</td>
                    <td><input type="text" name="staffID" value="" size='30'/><br><br></td>
                </tr>
                <tr>
                    <td valign="top"><b>Office</b></td>
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
                    <td><input type="text" name="year" value="" size='30'/><br><br></td>
                        
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                     <?--by clicking on button search,the data will be display from database and allow user choose which data they want to del--?>
                    <td><input type="submit" value="Search" /><br><br></td>
                </tr>
                
                <tr>           
                    <td>&nbsp;</td>
                    <td>&nbsp;</td> 
                    <?--by clicking on button proceed,the data will be delete from database--?>
                    <td><input type="submit" value="Proceed" /></td>
                </tr> 
            </tbody>
        </table>

    </body>
</html>
