<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<title>管理员首页</title>
		<meta name="Keywords" content="关键字,关键字">
		<meta name="description" content="">
		<style type="text/css">
			*{margin:0px;padding:0px;}
			body{font-size:14px;font-family:"微软雅黑";color:#666;}
		</style>
	</head>
	<body>
		<button onclick="javascript:getScore();">判卷</button>
		<script type="text/javascript">
			function getScore() {
				window.location = "/OnLineTest/servlet/AdminServlet?type=get_score";
			}
		</script>
	</body>
</html>