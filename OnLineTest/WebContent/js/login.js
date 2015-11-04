$(function(){
	// 点击事件
	$("#myMenu").click(function(){
		$(".box_color").show();
	});
	// 当鼠标指针离开元素时，会发生事件
	$(".box_color").mouseleave(function(){
		$(this).hide();
	});
	// 点击图标时，换皮肤
	$(".box_color").find("a").click(function(){
		var to = $(this).attr("to");
		//alert("图片的名称："+to);
		$(".btn input").css("background","url('./images/login_images/"+to+"')");
	});
	// 失去焦点时
	$(".text input").blur(function(){
		$(this).prev(".tips").remove();
	});

});

// 提示层
function be_yanzheng($this){
	var tip = $this.attr("tip");
	$this.prev(".tips").remove();
	// 在每个匹配的元素之前插入内容。
	$this.before("<div class='tips'><i></i>"+tip+"</div>");
}

// 学生、教师登录用户名密码验证
function be_login() {
	var username = $("#username").val();
	var password = $("#password").val();
	var isChecked = null;
	var flag = false;
	if (username.length == 0 || username.trim() == "") {
		be_yanzheng($("#username"));
		return false;
	} else if (password.length == 0 || password.trim() == "") {
		be_yanzheng($("#password"));
		return false;
	} else {
		$(".text div input").each(function() {
			if (this.checked) {
				isChecked = this;
				flag = true;
			}
		});
		if (flag == false) {
			be_yanzheng($(".text div input").eq(0));
			return false;
		} else {
			var data = {"username":username, "password":password, "identity":isChecked.value};
			$.ajax({
				type : "POST",
				dataType : "json",
				url : "/OnLineTest/servlet/LoginServlet?type=check",
				data : data,
				success : function(data) {
					if (data.data == "uperror") {
						$("#username").before("<div class='tips'><i></i>用户名或密码错误</div>");
					} else if (data.data == "success") {
						if (isChecked.value == "student") {
							window.location = "/OnLineTest/servlet/LoginServlet?type=index";
						}
					}
				}
			});
			return true;
		}
	}	
}

//管理员登录用户名密码验证
function be_admin_login() {
	var username = $("#username").val();
	var password = $("#password").val();
	if (username.length == 0 || username.trim() == "") {
		be_yanzheng($("#username"));
		return false;
	} else if (password.length == 0 || password.trim() == "") {
		be_yanzheng($("#password"));
		return false;
	} else {
		var data = {"username":username, "password":password, "identity":"admin"};
		$.ajax({
			type : "POST",
			dataType : "json",
			url : "/OnLineTest/servlet/LoginServlet?type=check",
			data : data,
			success : function(data) {
				if (data.data == "uperror") {
					$("#username").before("<div class='tips'><i></i>用户名或密码错误</div>");
				} else if (data.data == "success") {
					window.location = "/OnLineTest/servlet/LoginServlet?type=index";
				}
			}
		});
		return true;
	}
}	
