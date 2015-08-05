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
            <div class="container" style="width:500px; padding-bottom: 50px; padding-top: 20px;" border="2">
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
                <div class="container">
                <div class="row">
                    <div class='col-sm-3'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker1'>
                                <input type='text'name="startDate" class="form-control" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(function () {
                            $('#datetimepicker1').datetimepicker();
                        });
                    </script>
                </div>
                </div>
              </div>
                    
                    <div class="form-group">
                <label for="startDate" class="col-sm-3 control-label">End Date:</label>
                <div class="container">
                <div class="row">
                    <div class='col-sm-3'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker1'>
                                <input type='text'name="startDate" class="form-control" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(function () {
                            $('#datetimepicker1').datetimepicker();
                        });
                    </script>
                </div>
                </div>
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
<%@ include file="../footer.jsp" %>