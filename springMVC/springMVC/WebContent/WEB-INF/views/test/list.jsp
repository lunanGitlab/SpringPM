<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="static/css/style.css" rel="stylesheet">
<link href="static/css/main.css" rel="stylesheet">
<!-- Important. For Theming change primary-color variable in main.css  -->
</head>
<body>
	<header>
		<a href="#" class="logo"> <img src="static/img/logo.png"
			alt="Logo" />
		</a>
	</header>
	<div class="container-fluid">
		<div class="dashboard-container">
			
			<div class="sub-nav">
				<ul>
					<li><a href="#dynamicTable"> Dynamic Table </a></li>
					<li><a href="#deletableTableRow"> Deletable Table Row </a></li>
					<li><a href="#tableColored"> Table Colored </a></li>
				</ul>
				<div class="btn-group pull-right">
					<button class="btn btn-primary">Main Menu</button>
					<button data-toggle="dropdown"
						class="btn btn-primary dropdown-toggle">
						<span class="caret"> </span>
					</button>
					<ul class="dropdown-menu pull-right">
						<li><a href="index.html" data-original-title="">
								Dashboard </a></li>
						<li><a href="forms.html" data-original-title=""> Forms </a></li>
						<li><a href="graphs.html" data-original-title=""> Graphs
						</a></li>
						<li><a href="ui-elements.html" data-original-title=""> UI
								Elements </a></li>
						<li><a href="icons.html" data-original-title=""> Icons </a></li>
						<li><a href="tables.html" data-original-title=""> Tables
						</a></li>
						<li><a href="media.html" data-original-title=""> Media </a></li>
						<li><a href="calendar.html" data-original-title="">
								Calendar </a></li>
						<li><a href="typography.html" data-original-title="">
								Typography </a></li>
						<li><a href="edit-profile.html" data-original-title="">
								Edit Profile </a></li>
						<li><a href="invoice.html" data-original-title="">
								Invoice </a></li>
						<li><a href="login.html" data-original-title=""> Login </a></li>
						<li><a href="404.html" data-original-title=""> 404 Page </a>
						</li>
						<li><a href="500.html" data-original-title=""> 500 Page </a>
						</li>
						<li><a href="help.html" data-original-title=""> Help </a></li>
					</ul>
				</div>
			</div>
			<div class="dashboard-wrapper">
				<div class="left-sidebar">
					<div class="row-fluid">
						<div class="span12">
							<div class="widget">
								<div class="widget-header">
									<div class="title">
										Dynamic Table<a id="dynamicTable">e</a>
									</div>
									<span class="tools"> <a class="fs1" aria-hidden="true"
										data-icon="&#xe090;"></a>
									</span>
								</div>
								<div class="widget-body">
									<div id="dt_example" class="example_alt_pagination">
										
										<a class="btn btn-info" href="${pageContext.request.contextPath}/emp">新 增</a>&nbsp;&nbsp;&nbsp;&nbsp;</p>
										
										<form action="" method="post">
											<input type="hidden" name="_method" value="DELETE"/>
										</form>
										<table
											class="table table-condensed table-striped table-hover table-bordered pull-left"
											id="data-table">
											<thead>


												<c:if test="${empty requestScope.studentDao }">
										 没有任何信息。
										</c:if>
					
										<c:if test="${!empty requestScope.studentDao }">	</c:if>
									
												<tr>
													<th style="width: 8%">ID</th>
													<th style="width: 20%">用戶名</th>
													<th style="width: 16%">性別</th>
													<th style="width: 16%" class="hidden-phone">年齡</th>
													<th style="width: 16%" class="hidden-phone">Email</th>
													<th style="width: 16%" class="hidden-phone">密码</th>
													<th style="width: 16%" class="hidden-phone">操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="studentDao" items="${requestScope.studentDao}"> 
							
							
												<tr style="background-color:#ECF6EE;">
												<td>${studentDao.id }</td>
												<td>${studentDao.name }</td>
												<td>${studentDao.sex == 0 ? '女士' : '男士' }</td>
												<td>${studentDao.age }</td>
												<td>${studentDao.email }</td>
												<td>${studentDao.password }</td>
												<td>
													<a href="${pageContext.request.contextPath}/emp/${studentDao.id}">修改</a>&nbsp;&nbsp;&nbsp;
													<a class="delete" href="emp/${studentDao.id}">删除</a>
												</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>

					</div>

					<div class="row-fluid">
						<div class="span5">
							<div class="widget">
								<div class="widget-header">
									<div class="title">
										Deletable Table Ro<a id="deletableTableRow">w</a>
									</div>
									<span class="tools"> <a class="fs1" aria-hidden="true"
										data-icon="&#xe090;"></a>
									</span>
								</div>
								<div class="widget-body">
									<table class="table table-striped table-bordered no-margin">
										<thead>
											<tr>

												<th style="width: 20%">No.</th>
												<th style="width: 40%">Name</th>
												<th style="width: 20%" class="hidden-phone">Status</th>
												<th style="width: 20%" class="hidden-phone">Actions</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Srinu</td>
												<td class="hidden-phone">Active</td>
												<td class="hidden-phone"><a class="delete-row"
													data-original-title="Delete" href="#"> <i
														class="icon-trash"> </i>
												</a></td>
											</tr>
											<tr>
												<td>2</td>
												<td>Baswa</td>
												<td class="hidden-phone">Active</td>
												<td class="hidden-phone"><a class="delete-row"
													data-original-title="Delete" href="#"> <i
														class="icon-trash"> </i>
												</a></td>
											</tr>
											<tr>
												<td>3</td>
												<td>Prem</td>
												<td class="hidden-phone">Inactive</td>
												<td class="hidden-phone"><a class="delete-row"
													data-original-title="Delete" href="#"> <i
														class="icon-trash"> </i>
												</a></td>
											</tr>
											<tr>
												<td>4</td>
												<td>Arjun</td>
												<td class="hidden-phone">Active</td>
												<td class="hidden-phone"><a class="delete-row"
													data-original-title="Delete" href="#"> <i
														class="icon-trash"> </i>
												</a></td>
											</tr>
											<tr>
												<td>5</td>
												<td>Gajju</td>
												<td class="hidden-phone">Inactive</td>
												<td class="hidden-phone"><a class="delete-row"
													data-original-title="Delete" href="#"> <i
														class="icon-trash"> </i>
												</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>


						<div class="span7">
							<div class="widget no-margin">
								<div class="widget-header">
									<div class="title">
										Table Colore<a id="tableColored">d</a>
									</div>
									<span class="tools"> <a class="fs1" aria-hidden="true"
										data-icon="&#xe090;"></a>
									</span>
								</div>
								<div class="widget-body">
									<table class="table table-bordered no-margin">
										<thead>
											<tr>
												<th>2012</th>
												<th>Explorer</th>
												<th class="hidden-phone">Firefox</th>
												<th class="hidden-phone">Chrome</th>
												<th class="hidden-phone">Safari</th>
												<th class="hidden-phone">Opera</th>
											</tr>
										</thead>
										<tbody>
											<tr class="success">
												<td>Dec</td>
												<td>15.4%</td>
												<td class="hidden-phone">34.4%</td>
												<td class="hidden-phone">41.7%</td>
												<td class="hidden-phone">4.1%</td>
												<td class="hidden-phone">2.0%</td>
											</tr>
											<tr class="error">
												<td>Nov</td>
												<td>16.7%</td>
												<td class="hidden-phone">34.4%</td>
												<td class="hidden-phone">42.7%</td>
												<td class="hidden-phone">4.1%</td>
												<td class="hidden-phone">2.2%</td>
											</tr>
											<tr class="info">
												<td>Oct</td>
												<td>18.9%</td>
												<td class="hidden-phone">35.2%</td>
												<td class="hidden-phone">36.3%</td>
												<td class="hidden-phone">4.3%</td>
												<td class="hidden-phone">2.2%</td>
											</tr>
											<tr class="warning">
												<td>Sep</td>
												<td>18.7%</td>
												<td class="hidden-phone">36.8%</td>
												<td class="hidden-phone">38.3%</td>
												<td class="hidden-phone">4.5%</td>
												<td class="hidden-phone">2.3%</td>
											</tr>
											<tr class="success">
												<td>Aug</td>
												<td>16.2%</td>
												<td class="hidden-phone">32.8%</td>
												<td class="hidden-phone">43.7%</td>
												<td class="hidden-phone">4.0%</td>
												<td class="hidden-phone">2.3%</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>


				</div>

				<div class="right-sidebar">


					<div class="wrapper">
						<table
							class="table table-condensed table-striped table-bordered table-hover no-margin">
							<thead>
								<tr>
									<th style="width: 10%"><input type="checkbox"
										class="no-margin" /></th>
									<th style="width: 70%">Name</th>
									<th style="width: 20%">Status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Mahendra Singh Dhoni </span></td>
									<td><span class="label label label-info"> New </span></td>
								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Michel Clark </span></td>
									<td><span class="label label label-success"> New </span></td>
								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Rahul Dravid </span></td>
									<td><span class="label label label-important"> New
									</span></td>
								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Anthony Michell </span></td>
									<td><span class="label label label-info"> New </span></td>

								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Srinu Baswa </span></td>
									<td><span class="label label label-success"> New </span></td>

								</tr>
							</tbody>
						</table>
					</div>

					<hr class="hr-stylish-1">

					<div class="wrapper">
						<div class="btn-toolbar no-margin">
							<div class="btn-group">
								<a href="#" class="btn btn-success"> <i
									class="icon-white icon-headphones"> </i>
								</a> <a href="#" class="btn btn-warning"> <i
									class="icon-white icon-thumbs-down"> </i>
								</a> <a href="#" class="btn btn-warning2"> <i
									class="icon-white icon-signal"> </i>
								</a> <a href="#" class="btn btn-info"> <i
									class="icon-white icon-share-alt"> </i>
								</a>
							</div>
							<div class="btn-group">
								<a href="#" class="btn btn-inverse"> <i
									class="icon-white icon-trash"> </i>
								</a>
							</div>
						</div>
					</div>

					<hr class="hr-stylish-1">

					<div class="wrapper">
						<table
							class="table table-condensed table-striped table-bordered table-hover no-margin">
							<thead>
								<tr>
									<th style="width: 10%"><input type="checkbox"
										class="no-margin" /></th>
									<th style="width: 70%">Name</th>
									<th style="width: 20%">Status</th>
								</tr>
							</thead>
							<tbody>
								<tr class="success">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Mahendra Singh Dhoni </span></td>
									<td><span class="label label label-info"> New </span></td>
								</tr>
								<tr class="error">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Michel Clark </span></td>
									<td><span class="label label label-success"> New </span></td>
								</tr>
								<tr class="success">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Rahul Dravid </span></td>
									<td><span class="label label label-important"> New
									</span></td>
								</tr>
								<tr class="warning">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Anthony Michell </span></td>
									<td><span class="label label label-info"> New </span></td>

								</tr>
								<tr class="info">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Srinu Baswa </span></td>
									<td><span class="label label label-success"> New </span></td>

								</tr>
							</tbody>
						</table>
					</div>


				</div>
			</div>
		</div>
		<!--/.fluid-container-->
	</div>
	<script src="static/js/jquery.min.js">
		
	</script>
	<script src="static/js/bootstrap.js">
		
	</script>
	<script src="static/js/jquery.scrollUp.js">
		
	</script>
	<script src="static/js/jquery.dataTables.js">
		
	</script>
	<script type="text/javascript">
		$(function() {
			$(".delete").click(function() {
				var href=$(this).attr("href");
				$("form").attr("action",href).submit();
				return false;
			})
		})
	</script>
	<script type="text/javascript">
		//ScrollUp
		$(function() {
			$.scrollUp({
				scrollName : 'scrollUp', // Element ID
				topDistance : '300', // Distance from top before showing element (px)
				topSpeed : 300, // Speed back to top (ms)
				animation : 'fade', // Fade, slide, none
				animationInSpeed : 400, // Animation in speed (ms)
				animationOutSpeed : 400, // Animation out speed (ms)
				scrollText : 'Scroll to top', // Text for element
				activeOverlay : false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
			});
		});

		//Tooltip
		$('a').tooltip('hide');

		//Data Tables
		$(document).ready(function() {
			$('#data-table').dataTable({
				"sPaginationType" : "full_numbers"
			});
		});

		jQuery('.delete-row').click(function() {
			var conf = confirm('Continue delete?');
			if (conf)
				jQuery(this).parents('tr').fadeOut(function() {
					jQuery(this).remove();
				});
			return false;
		});
	</script>

</body>
</html>