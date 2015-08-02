<%-- 
    Document   : selectedTask
    Created on : Jul 29, 2015, 10:12:54 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selected Task</title>
    </head>
    <body>
        <table border="0" align="center">
            <thead>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <th rowspan="3">Editing taskforce</th> 
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td><input size="30" type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>Date start</td>
                    <td>:</td>
                    <td><select name="day">
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
                            </select></td>
                </tr>
                <tr>
                    <td>Date end</td>
                    <td>:</td>
                    <td><select name="day">
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
                            </select></td>
                </tr>
                <tr>
                    <td>Office</td>
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
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><input type="submit" value="proceed" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <form action="viewTaskforce_alter.jsp" method="POST">                    
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>                    
                    <td><input type="submit" value="back" /></td>
                </tr> 
            </form>
            </tbody>
        </table>
        
            
        
        
                

    </body>
</html>
