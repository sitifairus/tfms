<%-- 
    Document   : Expiration
    Created on : Aug 9, 2015, 2:02:02 PM
    Author     : user8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <html><head>
                 <title>UTM Task Force</title>
        <%@include file="../head.jsp" %>
        
          
    <script>
         (function(){
    'use strict';
	var $ = jQuery;
	$.fn.extend({
		filterTable: function(){
			return this.each(function(){
				$(this).on('keyup', function(e){
					$('.filterTable_no_results').remove();
					var $this = $(this), 
                        search = $this.val().toLowerCase(), 
                        target = $this.attr('data-filters'), 
                        $target = $(target), 
                        $rows = $target.find('tbody tr');
                        
					if(search == '') {
						$rows.show(); 
					} else {
						$rows.each(function(){
							var $this = $(this);
							$this.text().toLowerCase().indexOf(search) === -1 ? $this.hide() : $this.show();
						})
						if($target.find('tbody tr:visible').size() === 0) {
							var col_count = $target.find('tr').first().find('td').size();
							var no_results = $('<tr class="filterTable_no_results"><td colspan="'+col_count+'">No results found</td></tr>')
							$target.find('tbody').append(no_results);
						}
					}
				});
			});
		}
	});
	$('[data-action="filter"]').filterTable();
                })(jQuery);

            $(function(){
                // attach table filter plugin to inputs
                    $('[data-action="filter"]').filterTable();

                    $('.container').on('click', '.panel-heading span.filter', function(e){
                            var $this = $(this), 
                                    $panel = $this.parents('.panel');

                            $panel.find('.panel-body').slideToggle();
                            if($this.css('display') != 'none') {
                                    $panel.find('.panel-body input').focus();
                            }
                    });
                    $('[data-toggle="tooltip"]').tooltip();
            })
    </script>
          <style>
            .row{
		    margin-top:40px;
		    padding: 0 280px ;
		}
		.clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 15px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}
                    
          </style>
    </head>
<body>
     <%@ include file="adminHeader.jsp" %>
  <div class="container" align="center">
    <h1 align="center"> Task Expiration <small>(<i class="glyphicon glyphicon-filter"></i>)</small></h1>
    	<div class="row" align="center">
			<div class="col-md-30">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Task Force Members</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Task Member" />
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr align="center">
								<th>No</th>
								<th>Staff Name</th>
								<th>Staff ID</th>
								<th>Position</th>
                                                                <th>Department</th>
                                                                <th>Expired in : </th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Ras</td>
								<td>a13cs0139</td>
								<td>Professor</td>
                                                                <td>Software Engineering</td>
                                                                <td>Overdue</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Surayya</td>
								<td>a13cs0158</td>
								<td>Professor</td>
                                                                <td>Software Engineering</td>
                                                                <td>3 month</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Siti Fairus</td>
								<td>a13cs0139</td>
								<td>Associate Professor</td>
                                                                <td>Computer Science</td>
                                                                <td>2 month</td>
							</tr>
                                                        <tr>
                                                                <td>4</td>
                                                                <td>Bethrise</td>
								<td>a13cs0084</td>
								<td>Senior Lecturer</td>
                                                                <td>Software Engineering</td>
                                                                <td>1 month</td>
						</tbody>
					</table>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>


<%@ include file="../footer.jsp" %>