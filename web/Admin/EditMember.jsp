<%-- 
    Document   : EditMember
    Created on : Aug 12, 2015, 5:02:54 PM
    Author     : on
--%>

<%@page import="package1.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit CT member Detail</title>
        <%@include file="../head.jsp" %>
    </head>
    <body >
        <%@ include file="adminHeader.jsp" %>
        <%
            String memberID=request.getParameter("memberID");
            String taskID=request.getParameter("taskID");
            out.print(memberID);
            DB db =new DB();
            if(db.connect())
            {
                db.query("SELECT tf.TFname, user.name, user.qualification, tf_member.position, tf_member.startDate, tf_member.endDate FROM tf INNER JOIN tf_member ON tf.idTF=tf_member.tfID INNER JOIN user ON tf_member.userID=user.userID WHERE tf_member.idtf_member='"+memberID+"'");
                String taskName=db.getDataAt(0,"TFname");
                String name=db.getDataAt(0, "name");
                String post=db.getDataAt(0, "position");
                String Sdate=db.getDataAt(0, "startDate");
                String Edate=db.getDataAt(0, "endDate");
                String q=db.getDataAt(0, "qualification");
                
                
                
        
        %>
        <table align="center">
            <div class="container" style="width:500px; padding-bottom: 10px; padding-top: 20px;" border="2">
                <h2 align="center">Edit Committee/Taskforce Member data</h2><br>
                <form role="form" method="post" action="../EditMember">
                    <div class="form-group">
                    <label for="office" class="col-sm-4 control-label">Task Name:</label>
                    <div class="col-sm-8">
                        <%=taskName%>
                    </div><br>
                    </div>
                    <div class="form-group">
                    <label for="office" class="col-sm-4 control-label">Editing member :</label>
                    <div class="col-sm-8">
                        <%
                            if(q!=null||q!="")
                            {
                                out.println(q);
                            }
                        %><%=name%>
                    </div><br>
                    </div>
                    <div class="form-group">
                    <label for="office" class="col-sm-4 control-label">Position :</label>
                    <div class="col-sm-8">
                        <select name="post" class="form-control">       
                            <option value="<%=post%>"><%=post%></option>
                            <option value="Leader">Leader</option>
                            <option value="Member">Member</option>
                            <option value="Secretary">Secretary</option>
                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-4 control-label">Start Date:</label>
                        <div class="col-sm-8">
                          <input type="date" class="form-control" name="startDate" value="<%=Sdate%>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="startDate" class="col-sm-4 control-label">End Date:</label>
                        <div class="col-sm-8">
                          <input type="date" class="form-control" name="endDate" value="<%=Edate%>">
                        </div><br>
                    </div>
                   .
                    <div class="form-group" style="padding-left:207px;">
                        <input type="hidden" name="memberID" value="<%=memberID%>">
                        <input type="hidden" name="taskID" value="<%=taskID%>">
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
<%@ include file="../footer.jsp" %>