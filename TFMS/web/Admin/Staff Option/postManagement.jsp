<%-- 
    Document   : postManagement
    Created on : Jul 26, 2015, 3:29:37 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Management</title>
    </head>
    <body>
        <h1 align="center">POST MANAGEMENT</h1>
        <table align="center" border="1" cellspacing="1" cellpadding="1">
            <tbody>
                <tr>
                    <td style="text-align: center">Post</td>
                    <td style="text-align: center">Name</td>
                    <td style="text-align: center">Email</td>
                    <td style="text-align: center">Start Date</td>
                    <td style="text-align: center">End Date</td>
                    <td style="text-align: center" colspan='2'>Admin options</td>

                </tr>
                <tr>
                    <td style="text-align:center;">Dekan</a></td>
                    <td style="text-align:center;">Ab Razak Bin Che Hussin</td>
                    <td style="text-align:center;">abrazak@utm.my</td>
                    <td style="text-align:center;">1st January 2000</td>
                    <td style="text-align:center;">1st July 2014</td>
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

                <tr>
                    <td style="text-align:center;">Timbalan Dekan (A)</a></td>
                    <td style="text-align:center;">Abdul Hanan Bin Abdullah</td>
                    <td style="text-align:center;">hanan@fsksm.utm.my</td>
                    <td style="text-align:center;">2nd June 2014</td>
                    <td style="text-align:center;">3rd June 2014</td>
                    <td style="text-align:center;">
                        <form action="profileEdit.jsp" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="id" value="3">
                            <input type="hidden" name="vipID" value="2">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                    <td style="text-align:center;">
                        <form action="changeStaff.jsp" method="post">
                            <input type="hidden" name="memberID" value="3">
                            <input type="hidden" name="vipID" value="2">
                            <input type="submit" value="Change staff">
                        </form>
                    </td>
                </tr>

                <tr>
                    <td style="text-align:center;">Timbalan Dekan (P)</a></td>
                    <td style="text-align:center;">Abdul Samad Bin Ismail</td>
                    <td style="text-align:center;">abdulsamad.ismail@gmail.com</td>
                    <td style="text-align:center;">2nd June 2014</td>
                    <td style="text-align:center;">3rd June 2014</td>
                    <td style="text-align:center;">
                        
                        <form action="profileEdit.jsp" method="post">
                            <input type="hidden" name="id" value="4">
                            <input type="hidden" name="vipID" value="3">
                            <input type="submit" value="Edit">
                        </form>
                    
                    </td>
                    <td style="text-align:center;">               
                
                        <form action="changeStaff.jsp" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="memberID" value="4">
                            <input type="hidden" name="vipID" value="3">
                            <input type="submit" value="Change staff">
                        </form>
            </td>
           </tr>

                </tbody>
        </table>

    </body>
</html>
