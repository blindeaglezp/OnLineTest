<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线考试系统-管理员登录</title>
		<meta name="Keywords" content="关键词,关键词">
		<meta name="description" content="">
		<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css"></link>
	</head>
<body>
	
	<!-- start login -->
	<div class="login">
		<div class="top">
			<span class="admin">在线考试系统 管理员登录</span>
			<a class="menu" id="myMenu" href="javascript:void(0);"></a>
			<div class="box_color">
				<a href="javascript:;" to="blue_btn.png"><img src="./images/login_images/blue.png"/></a>
				<a href="javascript:;" to="orange_btn.png"><img src="./images/login_images/orange.png"/></a>
				<a href="javascript:;" to="green_btn.png"><img src="./images/login_images/green.png"/></a>
				<a href="javascript:;" to="red_btn.png"><img src="./images/login_images/red.png"/></a>
			</div>
		</div>
		<div class="logo">
			<a href="#"></a>
		</div>
		<div class="text_admin">
			<input type="text" name="username" id="username" tip="提示：请输入用户名,由数字字母下划线构成(4-16)" placeholder="请输入用户名"/>
			<input type="password" name="password" id="password" tip="请输入密码,由数字字母下划线构成(6-15)" placeholder="请输入密码"/>
		</div>
		<div class="btn">
			<input class="admin" onclick="javascript:be_admin_login();" type="button" value=""/>
		</div>	
	</div>
	<!-- login end -->

	<script type="text/javascript" src="./js/jQuery/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./js/login.js"></script>

</body>
</html>