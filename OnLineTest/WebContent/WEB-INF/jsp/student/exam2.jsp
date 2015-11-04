<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>选择试题</title>
    <link href="<%=request.getContextPath() %>/css/student/student2.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery/jquery-2.1.4.min.js"></script>
</head>
<body>

	<!-- start exam2 -->
    <div id="exam2_container">
        <div class="empty3"></div>
        <div class="exam2_content">
            <div class="exam2_stu_info">
                <ul>
                    <li>年级：${user.gradeId }</li>
                    <li>班级：${user.classId }</li>
                    <li>学号：${user.id }</li>
                    <li>姓名：${user.name }</li>
                </ul>
            </div>
            <div class="exam2_testpaper_select">
                <ul>
                    <li>科目：
                    	<select class="course" onchange="javascript:changeCourse();">
                    		<option selected="selected" disabled="disabled">请选择科目</option>
	                    	<c:forEach items="${courses }" var="course">
	                    		<option value="${course.id }"><c:out value="${course.name }" /></option>
	                    	</c:forEach>
                    	</select>
                    </li>
                    <li>试卷号：
                    	<select class="testpaper" onchange="javascript:changeTestPaper();">
                    		<option selected="selected" disabled="disabled">请选择试卷号</option>
                    	</select>
                    </li>
						
                </ul>
            </div>
            <div class="exam2_confirm_testpaper">
                <a href="javascript:void(0);">确认试卷信息</a>
            </div>
            <div class="exam2_testpaper_info">
                <ul>
                    <li>试卷名称：</li>
                    <li>试卷分数：</li>
                    <li>考试时间：</li>
                </ul>
            </div>
            <div class="exam2_start_test">
                <a href="<%=request.getContextPath()%>/servlet/StudentServlet?type=stu_exam3">开始考试</a>
            </div>
        </div>
    </div>
    <!-- exam2 end -->
    
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/student/exam.js"></script>
    
</body>
</html>