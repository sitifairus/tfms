<%-- 
    Document   : view CT info
    Created on : Jul 27, 2015, 2:55:21 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="package1.DB"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
        $(document).ready(function(){
            $('#myTable').dataTable();
        });
        </script>
        <%@include file="../head.jsp" %>
        <title>All Community Task Force</title>
    </head>
    <body>
        <%@ include file="PentadbirHeader.jsp" %>
<%
    String sql=null;
    String tName=null;
    String coor=null;
    String office=null;
    String year=null;
    sql=request.getParameter("sql");
    tName=request.getParameter("taskName");
    coor=request.getParameter("coordinator");
    office=request.getParameter("office");
    year=request.getParameter("year");
    
        if((tName==null||tName=="")&&(coor==null||coor=="")&&(office==null||office=="")&&(year==null||year=="")&&(sql==null||sql==""))
        {
%>
            <h2 align="center">View Committee/Task Force</h2>
        <h3 align="center">Search Engine</h3>    
        <form action="viewCTinfo.jsp" method="get">
            <table border="0" align="center">
                <tbody>
                    <tr>

                        <td valign="top"><b>Filter search by committee/taskforce &nbsp;</b></td>
                        <td valign="top">:</td>
                        <td><input type="text" name="taskName" value="" size="40"/><br><br></td>
                    </tr>

                    <tr>
                        <td valign="top"><b>Filter by Coordinator<b></td>
                        <td valign="top">:</td>
                        <td><input type="text" name="coordinator" value="" size="40"/><br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>Filter by Office<b></td>
                        <td valign="top">:</td>
                        <td><select name="office">
                                <option value=""> Not Selected</option>
                                <option value="1">Jawatankuasa/Penyelaras di Pejabat Pembangunan</option>
                                <option value="2">Jawatankuasa di Pejabat Akademik</option>
                                <option value="3">Penyelaras Program Pra-Siswazah (Undergraduate)</option>
                                <option value="4">Penyelaras Program Pasca-Siswazah (Postgraduate)</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td valign="top"><b>Filter by Year</b></td>
                        <td valign="top">:</td>
                        <td><input type="text" name="year" value="" size="40" /><br><br></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td><td>&nbsp;</td>
                        <td colspan="2"><input type="hidden" name="sql" value=""><button type="submit" class="btn btn-default">Search</button></td>
                        <td><a href="viewCTinfo.jsp?sql=SELECT * FROM tf">View All CT</a></td>
                    </tr>

                </tbody>
            </table>
        </form>
<%
        }
    if(tName!=null||coor!=null||office!=null||year!=null||sql!=null)
    {
        if(tName!=""||coor!=""||office!=""||year!=""||sql!="")
        {
        %>
        <h2 align="center">Result</h2><br>
               <%
                
                if(sql==null||sql=="")
                {
                    if(tName!=""&&coor!=""&&office!=""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"' and coordinatorID='"+coor+"' and office='"+office+"' and StartDate='"+year+"'";
                    }
                    if(tName==""&&coor!=""&&office!=""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE coordinatorID='"+coor+"' and office='"+office+"' and StartDate='"+year+"'";
                    }
                    if(tName!=""&&coor==""&&office!=""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"' and office='"+office+"' and StartDate='"+year+"'";
                    }
                    if(tName!=""&&coor!=""&&office==""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"' and coordinatorID='"+coor+"' and StartDate='"+year+"'";
                    }
                    if(tName!=""&&coor!=""&&office!=""&&year=="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"' and coordinatorID='"+coor+"' and office='"+office+"'";
                    }//2
                    if(tName==""&&coor==""&&office!=""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE office='"+office+"' and StartDate='"+year+"'";
                    }
                    if(tName==""&&coor!=""&&office==""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE coordinatorID='"+coor+"' and StartDate='"+year+"'";
                    }
                    if(tName==""&&coor!=""&&office!=""&&year=="")
                    {
                        sql="SELECT * FROM tf WHERE coordinatorID='"+coor+"' and office='"+office+"'";
                    }
                    if(tName!=""&&coor==""&&office!=""&&year=="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"' and office='"+office+"'";
                    }
                    if(tName!=""&&coor!=""&&office==""&&year=="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"' and coordinatorID='"+coor+"'";
                    }
                    if(tName!=""&&coor==""&&office==""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"and StartDate='"+year+"'";
                    }//3
                    if(tName==""&&coor==""&&office==""&&year!="")
                    {
                        sql="SELECT * FROM tf WHERE StartDate='"+year+"'";
                    }
                    if(tName==""&&coor==""&&office!=""&&year=="")
                    {
                        sql="SELECT * FROM tf WHERE office='"+office+"'";
                    }
                    if(tName==""&&coor!=""&&office==""&&year=="")
                    {
                        sql="SELECT * FROM tf WHERE coordinatorID='"+coor+"'";
                    }
                    if(tName!=""&&coor==""&&office==""&&year=="")
                    {
                        sql="SELECT * FROM tf WHERE TFname='"+tName+"'";
                    } 
                }
                    
                DB db= new DB();
                //out.println("sql:"+sql);
                if(db.connect())
                {
                    db.query(sql);
                    int numOfRow=db.getNumberOfRows();
                    //out.println("numOfRow:"+numOfRow);
                    if((numOfRow-1)!=-1)
                    {
%>
        <div class="container">
        <table border="2"  align="center" cellspacing="2" cellpadding="2" id="myTable" class="table table-striped">
            <tbody>
                <tr>
                    <td style="text-align: center"><b>No.</b></td>
                    <td style="text-align: center"><b>Task Name</b></td>
                    <td style="text-align: center"><b>coordinator</b></td>
                    <td style="text-align: center"><b>office</b></td>
                    <td style="text-align: center"><b>year</b></td>
                    <td style="text-align: center" colspan='3'><b>Admin options</b></td>
                </tr>
                <%
                    
                    for(int i=0; i<numOfRow; i++)
                    {
                        tName=db.getDataAt( i,"TFname");
                        coor=db.getDataAt( i,"coordinatorID");
                        office=db.getDataAt( i,"office");
                        year=db.getDataAt( i,"StartDate");
                        String tfID=year=db.getDataAt( i,"idTF");

               %>
               <tr>
                    <td style="text-align:center;"><%=i+1%></td>
                    <td style="text-align:center;"><%=tName%></td>
                    <td style="text-align:center;"><%=coor%></td>
                    <td style="text-align:center;"><%=office%></td>
                    <td style="text-align:center;"><%=year%></td>
                    <td style="text-align:center;">
                        <form action="viewTaskforce_alter.jsp?idTF=<%=tfID%>" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="id" value="2">
                            <input type="hidden" name="vipID" value="1">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                    <td style="text-align:center;">
                        <form action="#'" data-toggle="modal" data-target="#confirmDeleteModal<%=i%>"> <?---where to,action & method---?>
                            <input type="hidden" name="id" value="2">
                            <input type="hidden" name="vipID" value="1">
                            <input type="button" value="Delete">
                        </form>
                    </td>
                    <td style="text-align:center;">
                        <form action="#?idTF=<%=tfID%>" method="post"> <?---where to,action & method---?>
                            <input type="hidden" name="id" value="2">
                            <input type="hidden" name="vipID" value="1">
                            <input type="submit" value="View Member">
                        </form>
                        
                    </td>

                </tr>       
                <?---Delete confirmation---?>
        <div class="modal fade" id="confirmDeleteModal<%=i%>" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true" >
            <div class="container">    
                <div id="loginbox" style="margin-top:50px; " class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >                    
                    <div class="panel panel-info" >

                        <div style="padding-top:30px" class="panel-body" >

                           <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                           <div><h4>Are you confirm to delete <%=tName%> task?</h4><br></div>
                           <div class="col-sm-12 controls" style=" left:0px;">
                               <form method="post" action="deleteCT.jsp?tfID=<%=tfID%>">
                                <button class="btn btn-success" >confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                               </form>
                           </div>
                               
                        </div>                     
                    </div>  
                </div>
            </div>
        </div>
<%
                    }
                    }
                    else
                    {
                        out.println("Not Found");
                    }
                }
                db.close();%>
            </tbody>
        </table>
            <a href="viewCTinfo.jsp">back</a>
            
        </div>
        
 <%
        }
    }
%>   
        
    </body>
</html>
<%@ include file="../footer.jsp" %>
