<%-- 
    Document   : postManagement
    Created on : Jul 26, 2015, 3:29:37 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UTM Task Force</title>
        
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <h1 align="center">Post Management</h1>
        <div class="container">
        <table align="center" border="1" cellspacing="1" cellpadding="1" class="table table-bordered">
            <tbody>
                <tr>
                    <td style="text-align: center"><b>Post</b></td>
                    <td style="text-align: center"><b>Name</b></td>
                    <td style="text-align: center"><b>Email</b></td>
                    <td style="text-align: center"><b>Start Date</b></td>
                    <td style="text-align: center"><b>End Date</b></td>
                    <td style="text-align: center" colspan='2'><b>Admin options</b></td>

                </tr>
            
                <tr>
                    <td style="text-align:center;">Dekan</td>
                    <td style="text-align:center;">Ab Razak Bin Che Hussin</td>
                    <td style="text-align:center;">abrazak@utm.my</td>
                    <td style="text-align:center;">1st January 2000</td>
                    <td style="text-align:center;">1st July 2014</td>
                    <td style="text-align:center;">
                        <form action="../viewProfile/profileEdit.jsp" method="post"> <?---where to,action & method---?>
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
                    <td style="text-align:center;">Timbalan Dekan (A)</td>
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
                    <td style="text-align:center;">Timbalan Dekan (P)</td>
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
        </div>
    </body>
</html>
