<%-- 
    Document   : viewTaskforce_del
    Created on : Jul 29, 2015, 10:42:12 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete taskforce</title>
    </head>
    <body>
        <table border="0" align="center">
            <thead>
                <tr>
                    <th colspan="3"><h2>Please input the commitee/taskforce you want to delete</h2></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><h3>Search Engine</h3></td>
                    
                </tr>
                <tr>
                    <td>Filter search by committee/taskforce</td>
                    <td>:</td>
                    <td><input type="text" name="name" value="" size='30'/></td>
                </tr>
                <tr>
                    <td>Filter search by coordinator</td>
                    <td>:</td>
                    <td><input type="text" name="staffID" value="" size='30'/></td>
                </tr>
                <tr>
                    <td>Office</td>
                    <td>:</td>
                    <td><select name="office">
                            <option value="1">Jawatankuasa/Penyelaras di Pejabat Pembangunan</option>
                            <option value="2">Jawatankuasa di Pejabat Akademik</option>
                            <option value="3">Penyelaras Program Pra-Siswazah (Undergraduate)</option>
                            <option value="4">Penyelaras Program Pasca-Siswazah (Postgraduate)</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Filter search by year</td>
                    <td>:</td>
                    <td><input type="text" name="year" value="" size='30'/></td>
                        
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                     <?--by clicking on button search,the data will be display from database and allow user choose which data they want to del--?>
                    <td><input type="submit" value="search" /></td>
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
