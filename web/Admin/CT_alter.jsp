<%-- 
    Document   : CT_alter
    Created on : Aug 12, 2015, 12:08:35 PM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../head.jsp" %>
        <title>Community Task Force</title>
    </head>
    <body>
        <%@ include file="adminHeader.jsp" %>
        <%
            String taskID=request.getParameter("taskID");
            DB db= new DB();
            if(db.connect())
            {
                db.query("SELECT tf.TFname, tf.StartDate, tf.EndDate, office.officeName, office.idoffice FROM tf INNER JOIN office ON tf.officeID=office.idoffice WHERE idTF='"+taskID+"'");
                
                    String taskName=db.getDataAt(0, "TFname");
                    String StartDate=db.getDataAt(0, "StartDate");
                    String EndDate=db.getDataAt(0, "EndDate");
                    String officeName=db.getDataAt(0, "officeName");
                    String officeID=db.getDataAt(0, "idoffice");
                    
                    
                
        %>
        
        <table align="center">
            <div class="container" style="width:600px; padding-bottom: 50px; padding-top: 20px;" border="2">
                <h2 align="center">New Committee/Taskforce data</h2><br>
                <form role="form" method="post" action="../CT_alter">
                    <div class="form-group">
                      <label for="TaskName" class="col-sm-3 control-label">C/T Name:</label>
                      <div class="col-sm-9">
                          <input type="" class="form-control" name="taskName" value="<%=taskName%>" required>
                          <input type="hidden" name="taskID" value="<%=taskID%>">
                      </div><br><br>
                    </div>
                    <div class="form-group">
                    <label for="office" class="col-sm-3 control-label">Office:</label>
                    <div class="col-sm-9">
                        <select name="officeID" class="form-control">
                            <option value="<%=officeID%>"><%=officeName%></option>
                            <%
                                
                                
                                    db.query("SELECT * FROM office");
                                    int numOfRow=db.getNumberOfRows();
                                    //out.println("numOfRow:"+numOfRow);
                                    for(int i=0;i<numOfRow;i++)
                                    {
                                        officeName=db.getDataAt(i,"officeName");
                                        officeID=db.getDataAt(i, "idoffice");
                                    
                            %>          
                            <option value="<%=officeID%>"><%=officeName%></option>
                            <%
                                    }
                                    
                            %>
                        </select>
                    </div><br><br>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-3 control-label">Start Date:</label>
                        <div class="col-sm-9">
                          <input type="date" class="form-control" name="StartDate" value="<%=StartDate%>">
                        </div><br><br>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-3 control-label">End Date:</label>
                        <div class="col-sm-9">
                          <input type="date" class="form-control" name="EndDate" value="<%=EndDate%>">
                        </div><br>
                    </div>
                   .
                    <div class="form-group" style="padding-left:160px;">
                        <button class="btn btn-default">Proceed</button>
                    </div>
                    
                </form>
            </div>
        </table>
        <%
                db.close();
            }
        %>
        
    </body>
</html>
