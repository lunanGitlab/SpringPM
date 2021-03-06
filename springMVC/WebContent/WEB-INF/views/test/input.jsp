<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    request.setAttribute("basePath", basePath);  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<base href=" <%=basePath%>">   
</head>
<body>
<head>
<meta charset="utf-8">
<title>Blue Moon - Responsive Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->

<link href="static/css/style.css" rel="stylesheet">
<!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js">
    </script>
    <![endif]-->
<link href="${pageContext.request.contextPath}/static/css/bootstrap-editable.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/select2.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet">
<!-- Important. For Theming change primary-color variable in main.css  -->
</head>
<body>
	<header> <a href="#" class="logo"> <img
		src="${pageContext.request.contextPath}/static/img/logo.png" alt="Logo" />
	</a> </header>
	<div class="container-fluid">
		<div class="dashboard-container">
			<div class="dashboard-wrapper">
				<div class="left-sidebar">

					<div class="row-fluid">
						<div class="span12">
							<div class="widget no-margin">
								<div class="widget-header">
									<div class="title">Edit Profile</div>
									<span class="tools"> <a class="fs1" aria-hidden="true"
										data-icon="&#xe090;"></a>
									</span>
								</div>
								<div class="widget-body">
									<div class="container-fluid">
												<form:form  class="form-horizontal"
													action="${pageContext.request.contextPath}/emp"
													modelAttribute="studentInfo" method="post" enctype="multipart/form-data">
										
										<div class="row-fluid">
											<div class="span3">
												<div class="thumbnail">
														<c:choose>
															<c:when test="${studentInfo.pic!=null}">
															PicName:${studentInfo.pic}</br>
																<img id="preview" alt="数据库中查询不到图片！" src="/pic/${studentInfo.pic}">
															</c:when>
															<c:otherwise>
																<img id="preview"  alt="数据库中查询不到图片！" src="${pageContext.request.contextPath}/static/img/profile.png">
															</c:otherwise>
														</c:choose>
												    <input type="file" name="file" id = "input_file" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" onchange="imgPreview(this)" >
												</div>
											</div>
											<div class="span9">
													<h5>User Information</h5>
													<hr>
													<c:if test="${studentInfo.id != 0}">
														<input type="hidden" name="_method"  value="PUT" /> 
															ID:${studentInfo.id}</br>
													</c:if>
													<form:hidden path="id" class="form-horizontal" />
													<form:hidden path="pic" class="form-horizontal" />

													<div class="control-group">
														<label class="control-label"> 姓  名： </label>
														<div class="controls">
															<form:input path="name"/>
															<form:errors path="name"></form:errors>
														</div>
													</div>
													<%
														Map<String,String> genders = new HashMap();
														genders.put("1","女士");
														genders.put("0","男士");
														request.setAttribute("genders", genders);
														
														Map<String,String> units = new HashMap();
														units.put("1","单位部门_A");
														units.put("2","单位部门_B");
														units.put("3","单位部门_C");
														units.put("4","单位部门_D");
														units.put("5","单位部门_E");
														units.put("6","单位部门_F");
														units.put("7","单位部门_G");
														request.setAttribute("units", units);
														
														Map<String,String> posts = new HashMap();
														posts.put("1","职务_A");
														posts.put("2","职务_B");
														posts.put("3","职务_C");
														posts.put("4","职务_D");
														posts.put("5","职务_E");
														posts.put("6","职务_F");
														posts.put("7","职务_G");
														request.setAttribute("posts", posts);
														
														Map<String,String> courses = new HashMap();
														courses.put("1","课程_A");
														courses.put("2","课程_B");
														courses.put("3","课程_C");
														courses.put("4","课程_D");
														courses.put("5","课程_E");
														courses.put("6","课程_F");
														courses.put("7","课程_G");
														request.setAttribute("courses", courses);
														
														
													
													%>
													<div class="control-group">
														<label class="control-label"> 性  别： </label>
														<div class="controls">
														<form:radiobuttons path="sex" items="${genders}"/>
														</div>
													</div>

													<div class="control-group">
														<label class="control-label"> 年  龄： </label>
														<div class="controls">
															<form:input path="age"/>
														</div>
													</div>

													<div class="control-group">
														<label class="control-label">Email 地 址： </label>
														<div class="controls">
															<form:input path="email"/>
															<form:errors path="email"></form:errors>
														</div>
													</div>
													
													<div class="control-group">
														<label class="control-label"> 所 在 部 门： </label>
														<div class="controls">
															<form:select path="unit" items="${units}"/>
														</div>
													</div>
													
													
													<div class="control-group">
														<label class="control-label"> 当 前 职 务： </label>
														<div class="controls">
															<form:select path="post" items="${posts}"/>
														</div>
													</div>
													
													<div class="control-group">
														<label class="control-label"> 联 系 电 话： </label>
														<div class="controls">
															<form:input path="contactNumber"/>
														</div>
													</div>
													
													<div class="control-group">
														<label class="control-label"> 您 的 QQ 号： </label>
														<div class="controls">
															<form:input path="qqID"/>
														</div>
													</div>
													
													<div class="control-group">
														<label class="control-label"> 您 的 微 信 号： </label>
														<div class="controls">
															<form:input path="weixinID"/>
														</div>
													</div>
																										
													<div class="control-group">
														<label class="control-label"> 设 置 登 录 密 码： </label>
														<div class="controls">
														<form:input type="password"  path="password" id="password" />
														</div>
													</div>
													
													<div class="control-group">
														<label  class="control-label"> 确 认 登 录 密 码： </label>
														<div class="controls">
														<input type="password" id="confirm_password"  name="confirm_password"/>
														</div>
													</div>
													<br/>
													<h5>Course Status：</h5>
													<hr>
													<div class="control-group">
														<label class="control-label"> 所 学 课 程： </label>
														<div class="controls">
															<form:select path="course"  items="${courses}" />
														</div>
													</div>

														<div class="control-group">
														<label class="control-label"> 您 完 成 的 课 程 时 间： </label>
														<div class="controls">
															<form:input path="classHour"/>
														</div>
													</div>
													
													<div class="control-group">
														<label class="control-label"> 您 的 学 习 时 间： </label>
														<div class="controls">
															<form:input path="trainingTime"/>
														</div>
													</div>

													<div class="control-group">
														<label class="control-label"> About </label>
														<div class="controls">
															<a data-original-title="Write about your self"
																data-placeholder="Your comments here..." data-pk="1"
																data-type="textarea" id="aboutMe" href="#"
																class="inputTextArea editable editable-click"
																style="margin-bottom: 10px;"> About me :) </a>

														</div>
													</div>
													<div class="form-actions">
														
														<button type="submit" class="btn btn-info ">提  交</button>
														
													</div>
												</form:form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>

				<div class="right-sidebar">


					<div class="wrapper">
						<button class="btn btn-block btn-info" type="button">
							Block level button</button>
					</div>
					<div class="wrapper">
						<button class="btn btn-block btn-success" type="button">
							Block level button</button>
					</div>
					<div class="wrapper">
						<button class="btn btn-block btn-warning" type="button">
							Block level button</button>
					</div>

					<hr class="hr-stylish-1">

					<div class="wrapper">
						<ul class="progress-statistics">
							<li>
								<div class="details">
									<span> Windows </span> <span class="pull-right"> 78% </span>
								</div>
								<div class="progress">
									<div class="bar" style="width: 78%;"></div>
								</div>
							</li>
							<li>
								<div class="details">
									<span> Windows 8 </span> <span class="pull-right"> 32% </span>
								</div>
								<div class="progress progress-success">
									<div class="bar" style="width: 32%;"></div>
								</div>
							</li>
							<li>
								<div class="details">
									<span> Mac </span> <span class="pull-right"> 84% </span>
								</div>
								<div class="progress progress-warning">
									<div class="bar" style="width: 84%;"></div>
								</div>
							</li>
							<li>
								<div class="details">
									<span> Linux </span> <span class="pull-right"> 44% </span>
								</div>
								<div class="progress progress-danger">
									<div class="bar" style="width: 44%;"></div>
								</div>
							</li>
							<li>
								<div class="details">
									<span> IPhone/IPad </span> <span class="pull-right"> 67%
									</span>
								</div>
								<div class="progress progress-info">
									<div class="bar" style="width: 67%;"></div>
								</div>
							</li>
						</ul>
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


				</div>
			</div>
		<!--/.fluid-container-->
		
	<script src="${pageContext.request.contextPath}/static/js/messages_zh.js"></script>	
	<script src="${pageContext.request.contextPath}/static/js/additional-methods.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/ajaxfileupload.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.scrollUp.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap-editable.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/select2.js"></script>
		

	<script type="text/javascript">
	
	function imgPreview(fileDom) {
	    //判断是否支持FileReader
	    if(window.FileReader) {
	        var reader = new FileReader();
	    } else {
	        alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
	    }
	    //获取文件
	    var file = fileDom.files[0];
	    var imageType = /^image\//;
	    //是否是图片
	    if(!imageType.test(file.type)) {
	        alert("请选择图片！");
	        return;
	    }
	    //读取完成
	    reader.onload = function(e) {
	        //获取图片dom
	        var img = document.getElementById("preview");
	        //图片路径设置为读取的图片
	        img.src = e.target.result;
	    };
	    reader.readAsDataURL(file);
	    
	}
	 
	
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

		//Xeditable form fields
		$(function() {

			//enable / disable
			$('#enable').click(function() {
				$('#user .editable').editable('toggleDisabled');
			});

			//editables 
			$('.inputText').editable({
				type : 'text',
				pk : 1,
				name : 'name',
				title : 'Enter Name'
			});

			$('.inputTextArea').editable({
				showbuttons : true
			});

			$('#tags').editable(
					{
						inputclass : 'input-large',
						select2 : {
							tags : [ 'html5', 'javascript', 'Jquery', 'css3',
									'ajax', 'Sass', 'Haml', 'Photoshop' ],
							tokenSeparators : [ ",", " " ]
						}
					});

			$('#user .editable').on('hidden', function(e, reason) {
				if (reason === 'save' || reason === 'nochange') {
					var $next = $(this).closest('tr').next().find('.editable');
					if ($('#autoopen').is(':checked')) {
						setTimeout(function() {
							$next.editable('show');
						}, 300);

					} else {
						$next.focus();
					}

				}
			});

		});
		//Xeditable form fields end
						
		jQuery.validator.setDefaults({
				  debug: true,
				  success: "valid"
				});
				$( "#myform" ).validate({
				  rules: {
				    password: "required",
				    password_again: {
				      equalTo: "#password"
				    }
				  }
				});
		
</script>

</body>
</html>