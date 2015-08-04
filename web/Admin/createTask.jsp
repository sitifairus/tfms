<%-- 
    Document   : createTask
    Created on : Jul 27, 2015, 3:49:04 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Create Task</title>
        <%@include file="../head.jsp" %>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <table align="center">
            <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;">
                <h2 align="center">New Committee/Taskforce data</h2><br>
                <form role="form">
                    <div class="form-group">
                      <label for="TaskName" class="col-sm-3 control-label">C/T Name:</label>
                      <div class="col-sm-9">
                          <input type="" class="form-control" id="TaskName" placeholder="Enter Task Name">
                      </div><br><br>
                    </div>
                    <div class="form-group">
                    <label for="office" class="col-sm-3 control-label">Office:</label>
                    <div class="col-sm-9">
                        <select name="office" class="form-control">
                            <option value=""> Not Selected</option>>
                            <option value="1">Jawatankuasa/Penyelaras di Pejabat Pembangunan</option>
                            <option value="2">Jawatankuasa di Pejabat Akademik</option>
                            <option value="3">Penyelaras Program Pra-Siswazah (Undergraduate)</option>
                            <option value="4">Penyelaras Program Pasca-Siswazah (Postgraduate)</option>
                        </select>
                    </div><br><br>
                    </div>
                    <div class="form-group">
                    <label for="startDate" class="col-sm-3 control-label">Start Date:</label>
                    <div class="col-sm-9">
                        <select name="stday" >
                            <option>-- Day --</option>
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
                        <select name="stmonth" >
                             <option>-- Month --</option>
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
                        <select name="styear">
                            <option>-- Year --</option>
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
                    </div><br><br>
                    </div>
                    
                    <div class="form-group">
                    <label for="EndDate" class="col-sm-3 control-label">Date End:</label>
                    <div class="col-sm-9">
                        <select name="endday" >
                            <option>-- Day --</option>
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
                        <select name="endmonth" >
                             <option>-- Month --</option>
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
                        <select name="endyear" >
                            <option>-- Year --</option>
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
                    </div><br><br>
                    </div>
                   .
                    <div class="form-group" style="padding-left:171px;">
                        <a href="newCoordinator.jsp"><input type="button" value="Proceed"></a>
                    </div>
                    
                </form>
            </div>
        </table>
    </body>
</html>
