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
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
            img {
                opacity: 1.0;
                filter: alpha(opacity=20); /* For IE8 and earlier */
            }       
        </style>
    </head>
    <body>
        <nav class="navbar navbar-inverse" role="navigation" style="width:1365px">
            <div class="navbar-header" >
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="../HomePageAdmin.jsp">UTM Task Force</a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
               <ul class="nav navbar-nav">
                   <li><a href="../HomePageAdmin.jsp">Home</a></li>
                  <li><a href="#">News</a></li>
                  
                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Staff Option <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="registerMember.jsp">Input new staff data</a></li>
                        <li class="divider"></li>
                        <li><a href="viewStaff.jsp">View all staff profile</a></li>
                        <li class="divider"></li>
                        <li><a href="postManagement.jsp">Post management</a></li>
                     </ul>
                  </li>  
                  
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T Option<b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="../CT option/viewCTinfo.jsp">View C/T info</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT option/createTask.jsp">Create C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT option/viewTaskforce_alter.jsp">Update C/T</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT option/viewTaskforce_del.jsp">Delete C/T</a></li>
                        <li class="divider"></li>
                        </ul>
                     </li>    
                  
                  <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T Expiration <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="../CT Expiration/searchExpired3.jsp">3 months</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT Expiration/searchExpired2.jsp">2 months</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT Expiration/searchExpired1.jsp">1 months</a></li>
                        <li class="divider"></li>
                        <li><a href="../CT Expiration/searchOverdue.jsp">Overdue</a></li>
                        <li class="divider"></li>
                     </ul>
                     </li>
                      
                      <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                         Group <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="Groups/inGroup.jsp">In taskforce</a></li>
                        <li class="divider"></li>
                        <li><a href="Groups/noGroup.jsp">Not in any taskforce</a></li>
                     </ul> 
                     </li>
                     
                      <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Log Out <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="../../Login.jsp">Log Out</a></li>
                     </ul> 
                     </li>
               </ul>
                
            </div>
        </nav>
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
            <script>//using java to display all data</script>
                <tr>
                    <td style="text-align:center;">Dekan</a></td>
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
        </div>
    </body>
</html>
