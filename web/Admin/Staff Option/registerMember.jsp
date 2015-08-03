<%-- 
    Document   : registerStaff
    Created on : Jul 27, 2015, 10:11:41 AM
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
        <table align="center">
            <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
            <h2>New Staff Data</h2>
            <form role="form">
              <div class="form-group">
                <label for="userID" class="col-sm-3 control-label">Username:</label>
                <div class="col-sm-9">
                    <input type="" class="form-control" id="userID" placeholder="Enter Staff's Username" required>
                </div>
              </div>
              <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password:</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" id="password" placeholder="Enter Staff's Password" required>
                </div>
              </div>
              <div class="form-group">
                <label for="name" class="col-sm-3 control-label">Staff Name:</label>
                <div class="col-sm-9">
                    <input type="" class="form-control" id="name" placeholder="Enter Staff's Name" required>
                </div>
              </div>
              <div class="form-group">
                <label for="staffID" class="col-sm-3 control-label">Staff ID:</label>
                <div class="col-sm-9">
                    <input type="" class="form-control" id="staffID" placeholder="Enter Staff's ID" required>
                </div>
              </div>
              <div class="form-group">
                <label for="phone" class="col-sm-3 control-label">Phone:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="phone" placeholder="Enter Staff's Telephone Number" required>
                </div>
              </div>
              <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email:</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" id="email" placeholder="Enter Staff's Email" required>
                </div>
              </div>
                      
              <div class="form-group">
                <label for="position" class="col-sm-3 control-label">Position:</label>
                <div class="col-sm-9">
                    <select name="position" id="position" class="form-control">
                        <option>Lecturer</option>
                        <option>Senior Lecturer</option>                                
                        <option>Associate Professor</option>
                        <option>Professor</option>
                    </select>
                </div>
              </div>
              <div class="form-group">
                <label for="department" class="col-sm-3 control-label">Department:</label>
                <div class="col-sm-9">
                    <select name="department" id="department" class="form-control">
                        <option>Computer Science</option>
                        <option>Software Engineering</option>
                        <option>Information System</option>
                    </select>
                </div>
              </div>
              <div class="form-group">
                <label for="qulification" class="col-sm-3 control-label">Qualification:</label>
                <div class="col-sm-9">
                    <select name="qualification" id="qualification" class="form-control">
                        <option>None</option>
                        <option>Dr.</option>
                    </select>
                </div>
              </div>
              <div class="form-group">
                <label for="startDate" class="col-sm-3 control-label">Start Date:</label>
                <div class="col-sm-9">
                    <select name="day">
                        <option>--</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                        <option>28</option>
                        <option>29</option>
                        <option>30</option>
                        <option>31</option>
                    </select>
                    <select name="month">
                        <option>--</option>
                        <option>January</option>
                        <option>February</option>
                        <option>March</option>
                        <option>April</option>
                        <option>May</option>
                        <option>June</option>
                        <option>July</option>
                        <option>August</option>
                        <option>September</option>
                        <option>October</option>
                        <option>November</option>
                        <option>December</option>
                    </select>
                    <select name="year">
                        <option>--</option>
                        <option>2002</option>
                        <option>2003</option>
                        <option>2004</option>
                        <option>2005</option>
                        <option>2006</option>
                        <option>2007</option>
                        <option>2008</option>
                        <option>2009</option>
                        <option>2010</option>
                        <option>2011</option>
                        <option>2012</option>
                        <option>2013</option>
                        <option>2014</option>
                        <option>2015</option>
                        <option>2016</option>
                    </select>
                </div>
              </div>
              <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10" >
                    <button type="submit" class="btn btn-default">Proceed</button>
                  </div>
              </div>
            </form>
          </div>
        </table>
    </body>
</html>
