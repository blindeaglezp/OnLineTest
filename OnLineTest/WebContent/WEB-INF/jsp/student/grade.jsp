<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta content="text/html;charset=UTF-8"/>
		<title></title>
		<link href="<%=request.getContextPath() %>/css/student/student1.css" type="text/css" rel="stylesheet"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/student/left.js"></script>
	</head>
  
	<body onload="javascript:queryscorebystudentid();">
	
		<!-- start grade -->
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
	            <div class="grade_main_right">
	            	<div class="grade_main_right_selectmenu">
	            		<div class="empty"></div>
	            		<div class="content">
		            		<select class="courseSelect" onchange="javascript:changeCourse();">
		            			<option selected="selected" disabled="disabled">--请选择课程--</option>
		            			<c:forEach items="${courses }" var="course">
		            				<option value="${course.id }"><c:out value="${course.name }"></c:out></option>
		            			</c:forEach>
		            		</select>
		            	</div>
	            	</div>
	            	<div class="grade_main_right_content">
	            		<table class="grade_table">
					        <tr>
					        	<th></th>
					            <th>试卷名</th>
					            <th>课程名</th>
					            <th>成绩</th>
					        </tr>
					    </table>
	            	</div> 
	            </div>
	        </div>
   		</div>
    	<!-- grade end -->
    	
	    <script type="text/javascript" src="<%=request.getContextPath()%>/js/student/grade.js"></script>
    	
	</body>
</html>
