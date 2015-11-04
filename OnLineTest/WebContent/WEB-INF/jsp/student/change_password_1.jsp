<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta content="text/html;charset=UTF-8"/>
		<title>安全中心</title>
		<link href="<%=request.getContextPath() %>/css/student/student1.css" type="text/css" rel="stylesheet"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/student/left.js"></script>
	</head>
  
	<body onload="javascript:setItemBg(2);">
		
		<!-- start change_password_1 -->
    	<div class="container">
	    	<div class="stu_top">
				<jsp:include page="/public/stu_head.jsp"></jsp:include>
			</div>
	        <div class="stu_info">
	        	<jsp:include page="/public/stu_info.jsp"></jsp:include>
	        </div>
	        <div class="stu_main">
	            <div class="stu_main_left">
					<jsp:include page="/public/stu_left.jsp"></jsp:include>
				</div>  
				
				<!-- start change_password_1_main_right -->
		        <div class="change_password_1_main_right">
			
					<!-- start change_password_1_main_right_content -->
		            <div class="change_password_1_main_right_content">
		                <form action="<%=request.getContextPath() %>/servlet/ChangePasswordServlet?type=stu_change_password_2" method="post">
		                    <table>
		                        <tr>
		                            <td class="change_password_1_td_title">原密码：</td>
		                            <td class="change_password_1_td_content"><input type="password" name="old_password"></td>
		                        </tr>
		                        <tr>
		                            <td class="change_password_1_td_title">新密码：</td>
		                            <td class="change_password_1_td_content"><input type="password" name="new_password"></td>
		                        </tr>
		                        <tr>
		                            <td class="change_password_1_td_title">重复密码：</td>
		                            <td class="change_password_1_td_content"><input type="password" name="re_new_password"></td>
		                        </tr>
		                        <tr>
		                            <td colspan="2" class="change_password_1_td_button">
		                                <button type="submit">提 交</button>
		                                <button type="reset">重 置</button>
		                            </td>
		                        </tr>
		                    </table>
		                </form>
		            </div>
		            <!-- change_password_1_main_right_content end -->
		            
		        </div>
		        <!-- change_password_1_main_right end -->
		        
			</div>
    	</div>
    	<!-- change_password_1 end -->
    	
	</body>
</html>
