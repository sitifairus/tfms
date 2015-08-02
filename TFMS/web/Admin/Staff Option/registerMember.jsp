<%-- 
    Document   : registerStaff
    Created on : Jul 27, 2015, 10:11:41 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Member </title>
    </head>
    <body>
        <table align="center">
            <thead>
                <td>&nbsp;</td>
                <th>New Staff Data</th>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </thead>
            
            <tbody>
                    <tr>
                        <td>Name</td>
                        <td>:<input type="text" name="name" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td>:<input type="text" name="username" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>:<input type="text" name="pwd" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Staff ID</td>
                        <td>:<input type="text" name="staffid" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Telephone No.</td>
                        <td>:<input type="text" name="telNo" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>:<input type="text" name="email" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Position</td>
                        <td>:<select name="position">
                                <option>Lecturer</option>
                                <option>Senior Lecturer</option>                                
                                <option>Associate Professor</option>
                                <option>Professor</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Department</td>
                        <td>:<select name="department">
                                <option>Computer Science</option>
                                <option>Software Engineering</option>
                                <option>Information System</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Qualification</td>
                        <td>:<select name="qualification">
                                <option>Dr.</option>
                                <option>None</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Start Date</td>
                        <td>:<select name="day">
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
                </select><select name="year">
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
                            
                        </td>
                        
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Proceed" /></td>
                    </tr>
                    
                </tbody>
        </table>

    </body>
</html>
