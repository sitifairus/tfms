<%-- 
    Document   : noGroup
    Created on : Aug 2, 2015, 8:05:52 AM
    Author     : user8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <html><head>
                 <title>TFMSystem</title>
        <%@include file="../head.jsp" %>
          <style>
            .row{
		    margin-top:40px;
		    padding: 0 300px ;
		}
		 
          </style>
    </head>
<body>
     <%@ include file="adminHeader.jsp" %>
  <div class="container" align="center">
    <h1 align="center"> Staffs that no involve in taskforce/committee <small>(<i class="glyphicon glyphicon-filter"></i>)</small></h1>
    <div class="row" align="center">
			<div class="col-md-60">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Staff Details</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Search Staff" />
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr align="center">
								<th>No</th>
								<th>Staff Name</th>
								<th>Staff ID</th>
                                                                <th>Department</th>
                                                        </tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Ras</td>
								<td>a13cs0139</td>
                                                                <td>Software Engineering</td>
                                                        </tr>
							<tr>
								<td>2</td>
								<td>Surayya</td>
								<td>a13cs0158</td>
                                                                <td>Software Engineering</td>
                                                        </tr>
							<tr>
								<td>3</td>
								<td>Siti Fairus</td>
								<td>a13cs0139</td>
                                                                <td>Computer Science</td>
                                                        </tr>
                                                        <tr>
                                                                <td>4</td>
                                                                <td>Bethrise</td>
								<td>a13cs0084</td>
                                                                <td>Software Engineering</td>
                                                        </tr>
                                                        <tr>
                                                                <td>5</td>
                                                                <td>Rafael</td>
								<td>a13cs0045</td>
                                                                <td>Computer Science</td>
                                                        </tr>
                                                        <tr>
                                                                <td>6</td>
                                                                <td>Alvin</td>
								<td>a13cs0084</td>
                                                                <td>Software Engineering</td>
                                                        </tr>
						</tbody>
					</table>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>


<%@ include file="../footer.jsp" %>"../footer.jsp" %>