<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>正在考试</title>
    <meta name="Keywords" content="关键字,关键字">
    <meta name="description" content="">
    <link href="<%=request.getContextPath() %>/css/student/student2.css" type="text/css" rel="stylesheet"/>
    <style type="text/css">
        *{margin:0px;padding:0px;}
        body{font-size:14px;font-family:"微软雅黑";color:#666;background:url(/OnLineTest/images/student/exam3_bg.jpg) repeat;}
        #exam3_container{width:998px;height:706px;margin:0 auto;background:#FFF;}
    </style>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery/jquery-ui.min.js"></script>
</head>
<body onload="javascript:getQuestionCount();">
	<!-- start exam3 -->
    <div id="exam3_container">
        <div id="stu_info">
            <p>考试时间：${testpaper.testTime }分钟</p>
            <p>准考证号：${user.id }</p>
            <p>姓名：${user.name }</p>
            <p>总分：${testpaper.score }分</p>
        </div>
        
        <div id="exam_content">
		    <div class="testpaper_title"><h2>试卷名称</h2></div>
		    <input class="sessionvalue" type="hidden" value="${questionCount }"/>
		    <input type="hidden" class="questionType" value="${questionType }"/>
		    <div class="content_choice_question" style="display:block;">
		        <p index="1"><span>第1题：</span>${choiceQuestion.description }</p>
		        <input type="hidden" class="choiceQuestionId" value="${choiceQuestion.id }"/>
		        <div class="answer_options">
		            <p>A. ${choice.a }</p>
		            <p>B. ${choice.b }</p>
		            <p>C. ${choice.c }</p>
		            <p>D. ${choice.d }</p>
		        </div>
		    </div>
		    <div class="answer_choice_question" style="display:block;">
		        <p>选择答案：</p>
		        <div class="content">
		            <div>A<input type="radio" class="choice_answer" name="choice_answer" value="1"/></div>
		            <div>B<input type="radio" class="choice_answer" name="choice_answer" value="2"/></div>
		            <div>C<input type="radio" class="choice_answer" name="choice_answer" value="3"/></div>
		            <div>D<input type="radio" class="choice_answer" name="choice_answer" value="4"/></div>
		        </div>
		    </div>
		    
		    <div class="content_judge_question" style="display:none;">
		        <p index="1"><span>第1题：</span></p>
		        <input type="hidden" class="judgeQuestionId" value="${judgeQuestion.id }"/>
		        <div class="answer_description">
		        	<p>${judgeQuestion.description }</p>
		        </div>
		    </div>
		    <div class="answer_judge_question" style="display:none;">
		        <p>选择答案：</p>
		        <div class="content">
		            <div><input type="radio" class="answer" name="answer" value="1"/>对</div>
		            <div><input type="radio" class="answer" name="answer" value="2"/>错</div>
		        </div>
		    </div>
		    
		    <div class="content_fillblanks_question" style="display:none;">
	            <p index="1"><span>第1题：</span></p>
	            <input type="hidden" class="fillBlanksQuestionId" value="${choiceQuestion.id }"/>
	            <input type="hidden" class="fillBlanksCount" value="${fillblankscount }"/>
	            <div class="answer_description">
	                <p>${fillBlanksQuestion.description }</p>
	            </div>
	        </div>
	        <div class="answer_fillblanks_question" style="display:none;">
	            <p>填写答案：</p>
	            <div class="content">
	            	
	            </div>
        	</div>
		</div>
        
        <div id="exam_btn">
		    <a href="javascript:void(0);" class="pre" onclick="javascript:preQuestion();">上一题</a>
		    <a href="javascript:void(0);" class="next" onclick="javascript:nextQuestion();">下一题</a>
		    <a href="javascript:void(0);" class="first" onclick="javascript:firstQuestion();">第一题</a>
		    <a href="javascript:void(0);" class="last" onclick="javascript:lastQuestion();">最后一题</a>
		</div>
		<div id="answer_sheet">
		    <div class="title">答题卡</div>
		    <div class="content">
		        <ul>
		            
		        </ul>
		    </div>
			<div class="btn">
				<a href="#">检查试卷</a>
				<a href="javascript:void(0);" onclick="javascript:submitTestPaper();">提交试卷</a>
		    </div>
		</div>
   	</div> 
   	<!-- exam3 end -->
    
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/student/exam.js"></script>
    
</body>
</html>