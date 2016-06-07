<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>小米账号-登录</title>
<link rel="stylesheet" href="css/zhuce.css" />
<link rel="stylesheet" href="css/denglu.css" />
<link rel="shortcut icon"
	href="front/iconfont-photo/iconfont-iconmi01.svg" />
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/dengluzhuce.js"></script>

<script>
	function changeMyCaliCode(obj){
		obj.src="valiCodeImg.jsp?d="+new Date();
	}
	
	
</script>
</head>
<body>

	<div id="newAll" style="display: none">
		<div id="tou">
			<div id="logo">
				<a id="fl-l" href=""><img src="images/zhuc-logo2.png" /></a>
			</div>
		</div>
		<div id="xiamian">
			<div id="content">
				<div id="wenzi">
					<center>
						<h3>注册小米账号</h3>
					</center>
				</div>
				<div id="zhuce_big">
					<form>
						<div id="regbox">
							<div id="telbg">
								<input type="text" id="usersName" name="usersName"
									placeholder="用户名" />
								<p id="name_tishi"></p>
							</div>
							<div id="telbg" style="margin-top: 20px;">
								<input type="text" id="tel" name="usersTel" placeholder="手机号" />
								<span id="tel_tishi"></span>
							</div>

							<div id="telbg"
								style="margin-top: 20px; line-height: 45px; color: #ccc; font-size: 14px;">
								&nbsp;&nbsp;性别： <input type="radio" name="usersSex" value="0"
									class="sex"> 男 <input type="radio" name="usersSex"
									value="1" class="sex"> 女
							</div>
							<div id="telbg" style="margin-top: 20px;">
								<input type="text" id="idCard" name="usersIDCard"
									placeholder="身份证号码" />
								<p id="id_tishi"></p>
							</div>

							<div id="telbg" style="margin-top: 20px;">
								<input type="text" id="email" name="usersEmail" placeholder="邮箱" />
								<p id="youxiang_tishi"></p>
							</div>

							<div id="telbg" style="margin-top: 20px;">
								<input type="password" id="pwd" name="usersPwd" placeholder="密码" />
								<p id="pwd_tishi"></p>
							</div>

							<div id="telbg" style="margin-top: 20px;">
								<input type="password" id="pwd_again" placeholder="确认密码" />
								<p id="pwd_again_tishi"></p>
							</div>

							<div id="yanzheng">
								<div id="yanzhengma">
									<input type="text" id="code" name="picCode" placeholder="图片验证码" />
								</div>
								<a><img src="valiCodeImg.jsp"
									onclick="changeMyCaliCode(this)" id="tuyanzheng"
									style="cursor: pointer;" /></a>
							</div>
							<div id="zhuce">
								<input type="button" id="sub_zhuce" style="cursor: pointer;"
									value="注册" onclick="zhuce()" />
							</div>
							<div id="login">
								<input type="button" id="bt_login" value="已有账号立即登录"
									style="cursor: pointer" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div id="newsAll">
		<center>
			<div id="all">
				<div id="logo">
					<a href="javascript:void(0)"><img src="images/denglu_index.png"
						style="width: 60px; height: 60px" /></a>
				</div>
				<div id="yizhanghao">
					<span id="one_user">一个帐号，玩转所有小米服务！</span>
				</div>
				<div id="xiaolianjie">
					<p>
						<a id="xiaomishouji" href="">小米手机</a>，<a id="xiaomiwang" href="">小米网</a>，<a
							id="MIUI" href="">MIUI米柚</a>，<a id="duokan" href="">多看阅读</a>，<a
							id="miliao" href="">米聊</a>
					</p>
				</div>
				<form id="denglu_form">
					<div id="dlzc">
						<div class="user_name">
							<input type="text" id="txuser_name" name="userNameOrTel"
								placeholder="手机号/用户名" />
						</div>
						<div class="pwd">
							<input type="password" id="txpwd" name="usersPwd"
								placeholder="密码" />
						</div>
					</div>
					<div id="denglu">
						<a onclick="userslogin()"><input type="button" id="bt_degnlu"
							value="立即登陆" style="cursor: pointer" /></a>
					</div>
					<div id="genggai">

						<span id="otherfang"> <a href="">用其他方式登陆</a>
						</span> <span id="otherfang" style="color: #8d8d8d"> | </span> <span
							id="wangji"> <a href="">忘记密码?</a>
						</span>

					</div>
					<input type="button" id="zhuces" value="注册小米帐号"
						style="cursor: pointer; font-size: 16px">



				</form>

			</div>
		</center>
	</div>



	<center>
		<footer>
			<p>
				<span id="wei">小米公司版权所有-京ICP备10046444-京公网安备1101080212535-京ICP证110507号</span>
			</p>
		</footer>
	</center>

</body>
</html>

<script>
	//验证码校验
	function checkvcode(){
		
		var code =$("#code").val();
		 $.post("../usersServlet?d="+new Date(),{op:"checkvcode",code:code},function(data){
			 if (parseInt(data) > 0) {
	            return true;
	         } else {
	        	 alert("验证码错误...,请重新输入");
	        	 $("#code").val("");
	       		return false;
	         }
		 });
		
	}
	
	//点击注册 跳转到登录
	function zhuce(){
		var usersName = $("#usersName").val();
		//var usersSex=$(".sex").val();
		
		var usersSex="";
		var radio=$(".sex");
		for(var i=0;i<radio.length;i++){
			if(radio[i].checked==true){
				usersSex=radio[i].value;
				break;
			}
		}
		var usersTel=$("#tel").val();
		var usersPwd=$("#pwd").val();
		var usersIDCard=$("#idCard").val();
		var usersEmail=document.getElementById('email').value;
		var picCode =$("#code").val();
		//console.info(usersName+usersSex+usersTel+usersPwd+usersIDCard+usersEmail);
		//console.info(usersSex);
		if(code!=null && code!=""){
			$.post("user_addUsersInfo.action",{usersName:usersName,usersSex:usersSex,usersTel:usersTel,usersPwd:usersPwd,usersIDCard:usersIDCard,usersEmail:usersEmail},function(data){
				if(parseInt(data.total) > 0){
					alert("会员注册成功,请登录...");
					$("#tel,#pwd,#pwd_again,#email,#idCard,#usersName").val("");
					$("#tel_tishi,#pwd_tishi,#pwd_again_tishi,#id_tishi,#youxiang_tishi").html("");
					$("#newsAll").show("slow");
					$("#newAll").fadeOut("slow");
					$("title").html("小米账号-登录");
				}else{
					alert("会员注册失败，请重新注册...");
				}
			});
		}else{
			alert("验证码不能为空");
		}
	}
	
	
		//会员登录

function userslogin(){
	//var arg = location.href.split("?")[1];
	var usersEmail=$.trim($("#txuser_name").val());
	var usersTel=$.trim($("#txuser_name").val());
	var usersPwd=$.trim($("#txpwd").val());
	var usersName=$.trim($("#txuser_name").val());
	$.post("front/user_findUserByUsersInfo.action",{usersEmail:usersEmail,usersTel:usersTel,usersPwd:usersPwd,usersName:usersName},function(data){
	//console.info("发送了登录请求");
		/* if(parseInt($.trim(data))){
			alert("用户名或密码错误");
		}else if ("community" == data) {
			location.href="community.jsp";
		} else if ("shop" == data) {
			location.href="shop.jsp";
		} else{
			//console.info(data);
			str1='<a href="#" style="text-decoration: none; color:#ccc;"> '+data+'</a>&nbsp;&nbsp;';
			str2='<a href="javascript:loginOut()"><font color="#ccc" size="2"> 注销</font></a>';
			$("#top_login").html(str1);
			$("#zhuxiao").html(str2);
			location.href="MiHome.jsp";
		} */
		
		if (data.object != null && data.object.usersName != null) {
			//alert(data.object.usersName)
			//console.info(data);
			str1='<a href="#" style="text-decoration: none; color:#ccc;"> '+data.object.usersName+'</a>&nbsp;&nbsp;';
			str2='<a href="javascript:loginOut()"><font color="#ccc" size="2"> 注销</font></a>';
			$("#top_login").html(str1);
			$("#zhuxiao").html(str2);
			location.href="MiHome.jsp";
		} else {
			alert("用户名或密码错误...");
		}
		//console.info(data.object.usersName);		
	});
}

	
</script>
