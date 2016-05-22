<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
  <head>
    <title>小米主页</title>
    <base href="<%=basePath%>">
    <link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg" />
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="front/js/jquery-1.11.3.js" type="text/javascript"></script>
	
	<script>
		$(function lianjie() {
			//$("img").css({left:"center",top:"center"});
			$.post("goodsServlet",{op:"getIndexGoodsInfo"},function(){
				location.href="front/Main.jsp";
			});   
		});
	</script>
	
  </head>
  <body>
  <center>
  	<img src="images/majiang.gif" style="margin-top:180px">
  </center>
    
  </body>
</html>
