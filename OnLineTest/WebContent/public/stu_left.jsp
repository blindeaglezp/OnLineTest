<%@ page pageEncoding="UTF-8" %>
<ul>
	<li class="stu_left_item"><a href="<%=request.getContextPath() %>/servlet/StudentServlet?type=stu_info">个 人 信 息</a></li>
	<li class="stu_left_item"><a href="<%=request.getContextPath() %>/servlet/ChangePasswordServlet?type=stu_change_password_1">安 全 中 心</a></li>
	<li class="stu_left_item"><a href="<%=request.getContextPath() %>/servlet/StudentServlet?type=stu_exam1">在 线 考 试</a></li>
	<li class="stu_left_item"><a href="<%=request.getContextPath() %>/servlet/StudentServlet?type=stu_grade">成 绩 查 询</a></li>
	<li class="stu_left_item"><a href="<%=request.getContextPath() %>/servlet/StudentServlet?type=stu_friend">友 情 链 接</a></li>
	<li class="stu_left_item"><a href="<%=request.getContextPath() %>/servlet/StudentServlet?type=stu_connect">联 系 我 们</a></li>                
</ul>
