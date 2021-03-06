// 根据学号查询所有成绩
function queryscorebystudentid() {
	setItemBg(4);
    $.ajax({
        type : "POST",
        dataType : "json",
        url : "/OnLineTest/servlet/StudentServlet?type=query_score_by_studentid",
        data : null,
        success : function(data) {
        	var i = 1;
        	$(data).each(function() {
                $(".grade_main_right_content .grade_table").append("<tr class='tr_grade'><td>" + i + "</td><td>" + this[0] + "</td><td>" + this[1] + "</td><td>"+this[2]+"</td></tr>");
                i++;
            });
        }
    });
}

// 课程修改之后，查询相应试卷和相应成绩
function changeCourse() {
	$(".stu_main .grade_main_right .grade_main_right_selectmenu .content .courseSelect option").each(function() {
		if (this.selected) {
			var data = this.value;
			// 查询试卷信息
			$.ajax({
				type : "POST",
				dataType : "json",
				url : "/OnLineTest/servlet/StudentServlet?type=query_testpaper_by_courseid",
				data : {"courseid" : data},
				success : function(data) {
					$(data).each(function() {
						$(".stu_main .grade_main_right .grade_main_right_selectmenu .content .testPaperSelect").append("<option value="+ this.id+ ">"+ this.name+ "</option>");
					});
				}
			});
			// 查询成绩信息
			$.ajax({
				type : "POST",
				dataType : "json",
				url : "/OnLineTest/servlet/StudentServlet?type=query_scores_by_studentid_and_courseid",
				data : {"courseid" : data},
				success : function(data) {
					var table_grade = $(".stu_main .grade_main_right .grade_main_right_content .grade_table");
					table_grade.find(".tr_grade").remove();
					var i = 1;
					$(data).each(function() {
						table_grade.append("<tr class='tr_grade'><td>" + i + "</td><td>" + this[0] + "</td><td>" + this[1] + "</td><td>"+this[2]+"</td></tr>");
					});
				}
			});
		}
	});
}
