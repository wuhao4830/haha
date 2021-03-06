<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=utf-8" %>
<%
	String path = request.getContextPath();
%>
<html lang="en">
	<head>
		<title>毕业论文管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="../css/uniform.css" />
		<link rel="stylesheet" href="../css/select2.css" />
		<link rel="stylesheet" href="../css/unicorn.main.css" />
		<link rel="stylesheet" href="../css/unicorn.grey.css" class="skin-color" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>

	<div id="header">
		<h1><a href="./dashboard.html">我的桌面</a></h1>
	</div>
	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav btn-group">
			<li class="btn btn-inverse"><a title="" href="adminAction_change"><i class="icon icon-user"></i> <span class="text">密码修改</span></a></li>
			<li class="btn btn-inverse"><a title="" href="userAction_logout"><i class="icon icon-share-alt"></i> <span class="text">退出登录</span></a></li>
		</ul>
	</div>

	<div id="sidebar">
		<a href="adminAction_home" class="visible-phone"><i class="icon icon-home"></i>我的桌面</a>
		<ul>
			<li class="active"><a href="adminAction_home"><i class="icon icon-home"></i> <span>我的桌面</span></a></li>
			<li class="submenu">
				<a href="#"><i class="icon icon-th-list"></i> <span>基本配置管理</span> <span class="label">2</span></a>
				<ul>
					<li><a href="adminAction_studentPer">学生权限控制</a></li>
					<li><a href="adminAction_teacherPer">教师权限控制</a></li>
				</ul>
			</li>
			<li class="submenu">
				<a href="#"><i class="icon icon-file"></i> <span>用户管理</span> <span class="label">4</span></a>
				<ul>
					<li><a href="adminAction_stuCreate">创建学生账户</a></li>
					<li><a href="adminAction_stuUpdate">修改学生账户</a></li>
					<li><a href="adminAction_teaCreate">创建老师账户</a></li>
					<li><a href="adminAction_teaUpdate">修改老师账户</a></li>
				</ul>
			</li>
			<li>
				<a href="adminAction_check"><i class="icon icon-signal"></i> <span>论文审核</span></a>
			</li>
			<li class="submenu">
				<a href="#"><i class="icon icon-file"></i> <span>通知管理</span> <span class="label">2</span></a>
				<ul>
					<li><a href="adminAction_messageCreate">创建通知</a></li>
					<li><a href="adminAction_msgList">删除通知</a></li>
				</ul>
			</li>
		</ul>

	</div>

		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Style:</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div>
	<div id="content">
			<div id="content-header">
				<h1>修改教师用户</h1>

			</div>
			<div id="breadcrumb">
				<a href="teacherAction_home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">修改教师用户</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
							</div>
							<div class="widget-content nopadding">
								<form class="form-horizontal" method="post" action="adminAction_teaUpd" name="basic_validate" id="basic_validate" novalidate="novalidate" >
									<input type="hidden" name="teacher.teacher_id" id="teacher_id">
									<div class="control-group">
                                        <label class="control-label">工号</label>
                                        <div class="controls">
                                            <input type="text" name="teacher.teacher_no" id="teacher_no"/>
                                        </div>
                                    </div>
									<div class="control-group">
										<label class="control-label">姓名</label>
										<div class="controls">
											<input type="text" name="teacher.name" id="name"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">学院</label>
										<div class="controls">
											<select name="teacher.college_name">
												<option value="软件学院">软件学院</option>
												<option value="计算机科学与技术学院">计算机科学与技术学院</option>
												<option value="新闻传播学院">新闻传播学院</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">专业</label>
										<div class="controls">
											<select name="teacher.major_name">
												<option value="软件工程">软件工程</option>
												<option value="互联网工程">互联网工程</option>
												<option value="计算机科学与技术">计算机科学与技术</option>
											</select>
										</div>
									</div>
                                    <div class="form-actions">
                                        <input type="submit" value="创建" class="btn btn-primary" />
                                    </div>
                                </form>
							</div>
						</div>			
					</div>
				</div>

				<div class="row-fluid">
					<div id="footer" class="span12">
						2016 &copy; Graduation Thesis Management System. Brought to you by Wuhao
					</div>
				</div>
			</div>
		</div>
		
		
            
	<script src="../js/jquery.min.js"></script>
	<script src="../js/jquery.ui.custom.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.uniform.js"></script>
	<script src="../js/select2.min.js"></script>
	<script src="../js/jquery.validate.js"></script>
	<script src="../js/unicorn.js"></script>
	<script src="../js/unicorn.form_validation.js"></script>
	<script src="../js/teacherChange.js"></script>
	<script type="text/javascript">

		window.onload =onloadVal;//不要括号

	</script>
	</body>
</html>
