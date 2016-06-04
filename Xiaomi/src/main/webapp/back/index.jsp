<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<base href="/Xiaomi/">
	<meta charset="utf-8">
	<title>小米科技</title>
	<link rel="stylesheet" type="text/css" href="easyui/css/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="easyui/css/icon.css"/>
	<link rel="stylesheet" type="text/css" href="easyui/css/demo.css"/>
	<link rel="stylesheet" type="text/css" href="css/index.css"/>
	<link rel="shortcut icon" href="images/logo.svg" type="image/x-icon"/>
	
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="easyui/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="easyui/js/index.js"></script>
	
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="js/showpic.js"></script>
	<script type="text/javascript" src="js/Region.js"></script>
	
	<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
	<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" src="ueditor/lang/zh-cn/zh-cn.js"></script>
	
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" id="newslogo">
		<div id="time" class="time"><label class="mytext" id="mytext"></label></div>
		<div id="zxanddl" class="zxanddl">
			<a href="javascript:loginOut()"><img src="images/zhuxiao.svg"/><strong> &nbsp;&nbsp;注销</strong></a>
		</div>
	</div>
	
	
	<script type="text/javascript">
		function loginOut() {
			$.post("../usersAddrServlet",{op:"outManager"},function(data){
				if (parseInt(data) > 0) {
					alert("注销成功....");
					location.href="index.jsp";
				}				
			});
		}
	</script>
	
	
	<div id="aa" class="easyui-accordion" data-options="region:'west',split:true,title:'导航'" style="width:200px;height:450px;">
		<div title="人员管理">  
        	<ul class="easyui-tree" id="menu-tree">
				<li id="admin_manager">管理员信息管理</li>
				<li id="users_usersInfo">会员信息管理</li>
				<li id="users_address">会员收货地址管理</li>
			</ul>  
    	</div>  
    	<div title="商品类型管理">  
        	<ul class="easyui-tree" id="menu-tree1">
				<li id="admin_typegoods">商品类型管理</li>
			</ul>  
    	</div>  
	    <div title="数据字典">  
	        <ul class="easyui-tree" id="menu-tree2">
				<li id="admin_datadict">查看字典</li>
			</ul>   
	    </div>  
	    <div title="商品信息管理">  
	        <ul class="easyui-tree" id="menu-tree3">
	        	<li id="admin_goodsinfo">商品信息管理</li>
	        	<li id="admin_goodsDetailinfo">详细信息管理</li>
	        	 <!--<li id="admin_goodsinfo_research">商品信息查询</li> -->
			</ul> 
	    </div>
	    <div title="评论管理">  
        	<ul class="easyui-tree" id="menu-tree4">
        		<li id="admin_goodsappr">商品评价</li>
				<li id="admin_artcomment">文章评论</li>
				<li id="admin_reply">官方回复</li>
			</ul>   
    	</div>  
	    <div title="视屏管理">  
	        <ul class="easyui-tree" id="menu-tree5">
				<li id="admin_video_goods">视屏查看</li>
				<li id="admin_video_add">视屏维护</li>
			</ul>   
	    </div>  
	    <div title="订单管理">  
	        <ul class="easyui-tree" id="menu-tree6">
	        	<li id="shop_detail">购物车管理</li>
	        	<li id="order_manager">订单管理</li>
			</ul>   
	    </div>
	      
	    <div title="文章管理">  
	        <ul class="easyui-tree" id="menu-tree7">
	        	<li id="admin_add_article">添加文章</li>
				<li id="admin_show_article">文章浏览</li>
			</ul>    
	    </div>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'帮助'" style="width:190px;">
		<div class="easyui-calendar"></div>
	</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#82BFEE;margin:0px;padding:0px" id="copyright">
		<p><a href="http://www.xiaomi.com">小米科技有限公司</a>&copy;版权所有 2016</p>
	</div>
	<div data-options="region:'center',title:'内容'">

		<div id="index_content" class="easyui-tabs" data-options="fit:true">
			
		</div>

	</div>
	
</body>
</html>