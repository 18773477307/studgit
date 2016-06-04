// JavaScript Document
$(function(){
	$("#zhuces").click(function(){
		$("#newAll").show("slow");
		$("#newsAll").fadeOut("slow");
		$("title").html("小米账号-注册");
	});
	

	//验证注册用户名
	$("#usersName").blur(function(){
		var usersName = $("#usersName").val();
		var reg = /^([a-zA-Z0-9\u4E00-\u9FA5_-]{2,12})/;
		  if (usersName.match(reg)) {
		      $.post("front/user_unameCheck.action",{usersName:usersName},function(data){
		          if (parseInt(data.total) > 0) {
		          	 $("#name_tishi").html("用户名已经存在...").css("color", "#F00");
		          	$("#usersName").val("");
		          	 return false;
		          } else {
		              $("#name_tishi").html("该名称可以使用...").css("color", "#0F0");
		              return true;
		          }
		      });
		  } else {
		      $("#usersName").val("");
		      $("#name_tishi").html("用户名格式不正确...").css("color", "#F00");
		      return false;
		  }
	});

	
	//手机号码验证
	$("#tel").blur(function(){
		var usersTel=$("#tel").val();
		 var reg = /^1[3-8]\d{9}$/;
		 if (usersTel.match(reg)) {
		      $.post("front/user_telCheck.action",{usersTel:usersTel},function(data){
		          if (parseInt(data.total) > 0) {
		          	 $("#tel_tishi").html("手机号已经被注册,请直接登录...").css("color", "#F00");
		          	$("#tel").val("");
		          	 return false;
		          } else {
		              $("#tel_tishi").html("该手机号码可以使用...").css("color", "#0F0");
		              return true;
		          }
		      });
		  } else {
		      $("#tel").val("");
		      $("#tel_tishi").html("手机号码格式不正确...").css("color", "#F00");
		      return false;
		  }
	});
	
	//身份证号码验证
	$("#idCard").blur(function(){
		var usersIDCard=$(this).val();
		 var reg = /^[1-9]\d{17}$/;
		 if (usersIDCard.match(reg)) {
		      $.post("front/user_idCardCheck.action",{usersIDCard:usersIDCard},function(data){
		          if (parseInt(data.total) > 0) {
		          	 $("#id_tishi").html("身份证号被占用,请确认是否有账号...").css("color", "#F00");
		          	$("#idCard").val("");
		          	 return false;
		          } else {
		              $("#id_tishi").html("该身份证号码可以使用...").css("color", "#0F0");
		              return true;
		          }
		      });
		  } else {
		      $("#idCard").val("");
		      $("#id_tishi").html("身份证号码格式不正确...").css("color", "#F00");
		      return false;
		  }
	});
	
	//邮箱验证
	$("#email").blur(function(){
		var reg=/^\w+@\w+\.(com)|(cn)$/;
		var usersEmail=document.getElementById('email').value;
		if(usersEmail.match(reg)){
			$.post("front/user_emailCheck.action",{usersEmail:usersEmail},function(data){
		          if (parseInt(data.total) > 0) {
		          	 $("#youxiang_tishi").html("该邮箱已经存在,请确认是否已有账号...").css("color", "#F00");
		          	$("#email").val("");
		          	 return false;
		          } else {
		              $("#youxiang_tishi").html("该邮箱可以使用...").css("color", "#0F0");
		              return true;
		          }
		     });
		}else{
			$("#youxiang_tishi").html('邮箱格式不正确,请重新输入').css("color","#F00");
			$("#email").val("");
			return false;
		}
	});
	
	//密码验证
	$("#pwd").blur(function(){
		var pwd=$(this).val();
		var reg =/^([a-zA-Z0-9_-]{6,18})/;
		 if(!reg.test(pwd)){
			$("#pwd").val("");
			$("#pwd_tishi").html("密码错误,(6-18数字或字母),请重新输入").css("color","#F00");
			
		 } else {
			$("#pwd_tishi").html("密码格式合适,请继续").css("color","#0F0");
		 }
		
	});
	//确认密码
	$("#pwd_again").blur(function(){
		var pwd_again=$(this).val();
		var pwd=$("#pwd").val();
		if(pwd!=null && ""!=pwd && pwd_again!=null &&""!=pwd_again){
			 if(pwd!=pwd_again){
				$("#pwd_again").val("");
				$("#pwd_again_tishi").html("密码输入不一致,请重新输入").css("color","#F00");
				
			 } else if(pwd!=null || ""!=pwd) {
				$("#pwd_again_tishi").html("密码确认正确,请继续").css("color","#0F0");
			 }
		}else{
			$("#pwd_again").html("");
			$("#pwd_again_tishi").html("");
		}
	});
	

	//直接登录 跳转
	$("#login").click(function(){
		$("#tel,#pwd,#pwd_again").val("");
		$("#tel_tishi,#pwd_tishi,#pwd_again_tishi").html("");
		$("#newsAll").show("slow");
		$("#newAll").fadeOut("slow");
		$("title").html("小米账号-登录");
	});
	
});