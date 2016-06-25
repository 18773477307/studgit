<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="/Xiaomi/">
    <title>小米社区文章详情</title>
	<link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
	<link type="text/css" href="front/css/sq_xq.css" rel="stylesheet"/>
	<link type="text/css" href="front/css/sq_right.css" rel="stylesheet"/>
	<link type="text/css" href="front/css/sq_footer.css" rel="stylesheet"/>
	<script type="text/javascript" src="front/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="front/js/sq.js"></script>
	
	<script>
		//注销
		function loginOut(){
			if(window.confirm('您确定要注销登录吗？')){
				$.post("front/user_usersOut.action",function(data){
				console.info(data);
					if(parseInt($.trim(data.total))==1){
						var str='<li><a href="front/login.jsp">登录&nbsp;</a></li>';
						str+='<li class="login_last"><a href="front/login.jsp">注册</a></li>';
						$(".login_user ul").html(str);	
					}
				});
			}
		}
		//插入评论
	 	function publish1(){
	 		var comCont=$.trim($("#text1").val());	
			var artId=$.trim($("#artId").val());
			var usersId=$.trim($("#usersId").val());
			var str="";
			alert(usersId);
	 		$.post("front/artcomment_addArtComment.action",{comCont:comCont,artId:artId,usersId:usersId},function(data){
	 			if(data=='' || data==undefined || data==null){
	 				if(window.confirm('您尚未登录，请登录后再发表评论！')){
	 					window.location.href = 'front/login.jsp';
	 				}
				}else{
					//重写评论次数
	 				document.getElementById("count").innerHTML=data.object.commentsCount;
	 				//重写评论
	 				var artcomments=data.object.artcomments;
	 				for(var i=0;i<artcomments.length;i++){
	 					str+="<li>";
	 					str+="<div class='reply_list_img'><img src='front/images/reply_list_img1.jpg'></div>";
	 					str+="<div class='reply_list_con'><div class='user_info'><a>"+artcomments[i].usersName+"</a> <span>发布于</span><span>"+artcomments[i].comDate+"</span><span id='reply_floor'></span></div><div class='main_con'>"+artcomments[i].comCont+"</div></div>";
	 					str+="</div>";
					}
	 				$("#reply_list").html(str);
	 				$("#text1").val("");
				}
	 		});
		}
	 	//插入评论
	 	function publish2(){
	 		var comCont=$.trim($("#text2").val());	
			var artId=$.trim($("#artId").val());
			var usersId=$.trim($("#usersId").val());
			var str="";
			alert(usersId);
	 		$.post("front/artcomment_addArtComment.action",{comCont:comCont,artId:artId,usersId:usersId},function(data){
	 			if(data=='' || data==undefined || data==null){
	 				window.location.href = 'front/login.jsp';
				}else{
					//重写评论次数
					document.getElementById("count").innerHTML=data.object.commentsCount;
					//重写评论
					//重写评论
	 				var artcomments=data.object.artcomments;
	 				for(var i=0;i<artcomments.length;i++){
	 					str+="<li>";
	 					str+="<div class='reply_list_img'><img src='front/images/reply_list_img1.jpg'></div>";
	 					str+="<div class='reply_list_con'><div class='user_info'><a>"+artcomments[i].usersName+"</a> <span>发布于</span><span>"+artcomments[i].comDate+"</span><span id='reply_floor'></span></div><div class='main_con'>"+artcomments[i].comCont+"</div></div>";
	 					str+="</li>";
					}
	 				$("#reply_list").html(str);
	 				$("#text2").val("");
				}
	 		});
		}
	 	//评论分页
  		function pageInfo(op){
  			var url=document.location.href;
			var artId=url.split("=")[1];
			var str="";
			$.post("front/page_PageArtComment.action",{op:op,artId:artId},function(data){
				var artcomments=data.rows;
 				for(var i=0;i<artcomments.length;i++){
 					str+="<li>";
 					str+="<div class='reply_list_img'><img src='front/images/reply_list_img1.jpg'></div>";
 					str+="<div class='reply_list_con'><div class='user_info'><a>"+artcomments[i].usersName+"</a> <span>发布于</span><span>"+artcomments[i].comDate+"</span><span id='reply_floor'></span></div><div class='main_con'>"+artcomments[i].comCont+"</div></div>";
 					str+="</li>";
				}
 				$("#reply_list").html(str);
			},"json");
		}
	</script>
</head>

<body>
<div id="total">
	<div class="xmcomm_header_wrap">
        <div class="xmcomm_header">
            <div class="logo">
                <img src="front/images/sq_log.png">
            </div>
            <div class="sq_title">小米社区</div>
            <div class="title">
                <ul>
                   <li><a href="front/community.jsp">资讯</a></li>
                   <li><a>论坛</a></li>
                   <li><a>酷玩帮</a></li>
                   <li><a>随手拍</a></li>
                   <li><a>应用</a></li>
                   <li><a>爆米花</a></li>
                   <li><a>同城会</a></li>
                   <li><a href="front/Main.jsp">官网</a></li>
                </ul>
            </div>
            <div class="login_user"> 
	           	<ul>
	               	<c:if test="${not empty loginUsers }">
		        		<li><a id="zhuxiao" href="javascript:loginOut()" >退出</a></li>
		        		<li><a id="top_login" href="#">当前登录：${loginUsers.usersName }</a></li>
		        	</c:if>
		        	<c:if test="${empty loginUsers }">
		        		<li class="login_last"><a href="front/login.jsp">注册</a></li>
		   				<li><a href="front/login.jsp">&nbsp;登录</a></li>
		   			</c:if>
		   		</ul>
           </div>
        </div>
	</div> <!--导航栏部分结束-->
    
    
    <div id="main_contain">  
    	<div  class="contain_left">
        	<div class="contain_left_topic">
                <div id="topic_top">
                    <h2>
                    	<c:if test="${not empty article }">
                    		<img src="front/images/topic_typle_fx.png">
							<span id="title">${article.artTitle}</span>
						</c:if>
                   </h2>
                </div>
                
                <div class="reply fixed absolute" >
                    <input type="text" id="text1" class="txt"  placeholder="发表你的看法" >
                	<span id="publish1" class="btn btnlineLight" onclick="publish1()">发表</span>
                </div>
                
                
                <div id=counts>
                	<input type="hidden" id="artId" value="${article.artId }"/>
                	<c:if test="${not empty loginUsers }">
		        		<input type="hidden" name="usersId" id="Id_hidden usersId" value="${loginUsers.usersId }"/>
		        	</c:if>
	                <p class="text"><span></span>
	                	<img src="front/images/see.png">${article.artViews }
	                	<img src="front/images/msg.png"><a id="count">${article.commentsCount }</a>
	                </p>
                </div>
                
                <div id="topic_body">
                    <c:if test="${not empty article }">
						${article.artCont }
					</c:if>
                    
                
                    <div class="faster_reply">
                        <a target="_blank" class="headportrait">
                            <img src="front/images/reply_user.gif">
                        </a>
                         <input type="text" id="text2" class="txt" placeholder="发表你的看法" >
                        <span id="publish2" class="btn" onclick="publish2()">发表</span>
                    </div>
                </div>
            </div>    
            
            <div id="left_topic_comment">
            	<div id="comment_top" class="comment"> <!-- 评论的内容 -->
            		<div id="comment_top" class="comment"> <!-- 评论的内容 -->
            		<div class="reply_con">    <!-- 评论的主要块 -->
				        <div class="reply_title">
				            <span class="reply_nav"><a>最新评论　</a><span>|</span><a class="orderby">　正序排列</a></span>
				        </div>
				              
			           <ul class="reply_list" id="reply_list">
				     	   <c:if test="${not empty article.artcomments }">
				      	      <c:forEach items="${article.artcomments }" var="itemms">
				      		    <li>
				                   	<div class="reply_list_img">
				                       <img src="front/images/reply_list_img1.jpg">
				                    </div>
				                    <div class="reply_list_con">
				                    	<div class="user_info">
				                        	<a>${itemms.usersName }</a> <span>发布于　</span><span>${itemms.comDate }</span><span id="reply_floor"></span>
				                        </div>
				                        <div class="main_con">
				                        	${itemms.comCont }
				                        </div>                           	
				                     </div>
				                 </li>
				               </c:forEach>
				     		</c:if>
			           </ul>
					</div>
                </div>
                
                
                <div class="comment_page" >  <!-- 评论的分页信息 -->
                	<div class="page_info">
                    	<ul>
                            <li class="first"><a href="javascript:pageInfo(1)">首页</a></li>
                            <li class="shang"><a href="javascript:pageInfo(2)">上一页</a></li>
                            <li class="next"><a href="javascript:pageInfo(3)">下一页</a></li>
                            <li class="last"><a href="javascript:pageInfo(4)">末页</a></li>
                            <span id="pageInfo"></span>
                        </ul>
                    </div>
                </div>
             </div>
           </div>
        </div> <!--左边部分结束-->
        
        <div class="contain_right">
            <div class="topic-auth">
            	<p class="topic_title">主题主人信息</p>
            	<div class="person_msg">
                	<a><img class="user_pic" src="front/images/auth1.png"></a>
                    <div class="user_name">
                       <p> 小米社区</p>
                    </div>
                </div>
            </div>
            
            <div class="hot_box">
            	<div class="tab_SwapTab">
                    <ul>
                        <strong class="tab">
                        <span class="fb1">版块推荐</span>
                        <span class="fb2">百宝箱</span>
                        </strong>
                    </ul>
                </div>
                <div class="tab_content">
                    <ul class="pakuai" style="display: block;">
						<li><a"><span style="color:#ff0000;">小米手机4c</span></a></li>
						<li><a>红米Note2</a> </li>
                        <li><a>小米Note</a></li>
                        <li><a>小米电视</a></li>
                        <li><a>小米平板</a></li>
                        <li><a>小米盒子</a></li>
                        <li><a>小米手机3</a></li>
                        <li><a>小米路由</a></li>
                        <li><a>红米手机</a></li>
                        <li><a>小米手环</a></li>
                        <li><a>小蚁运动相机</a></li>
                        <li><a>小米空气净化器</a></li>
                        <li><a>小米体重秤</a> </li>
                        <li><a>小米插线板</a></li>
                        <li><a>小米活塞耳机</a></li>
                        <li><a>积分商城</a></li>
                        <li><a>VIP认证</a> </li>
                        <li><a>申请特殊用户组</a></li>
                        <li class="more"><a>查看论坛所有版块>></a> </li>
                    </ul>
                    <ul class="babao" style="display: none;">
                        <li><a>我的消息</a></li>
                        <li><a>ROM下载</a></li>
                        <li><a>应用中心</a></li>
                        <li><a>小米百科</a></li>
                        <li><a>专题汇总</a></li>
                        <li><a>小米酷玩帮</a></li>
                        <li><a>小米爆米花</a></li>
                        <li><a>办事大厅</a></li>
                        <li><a>热门软件</a></li>
                        <li><a>热门游戏</a></li>
                        <li><a>网站导航</a></li>
                        <li><a>小米大事记</a></li>
                        <li><a>小米网</a></li>
                        <li><a>天猫旗舰店</a></li>
                        <li class="more"><a>小米社区首页>></a></li>
                    </ul>
                </div>
           </div>
                <div class="rom_box">
                    <h4>
                        <strong>小米手机ROM</strong>
                    </h4>
                    <div class="download">
                        <strong>
                            85.15
                            <span>%</span>
                        </strong>
                        <h2>本周推荐度</h2>
                        <em>MIUI 5.11.13</em>
                        <a>升级公告</a>
                    </div>
                    <div class="info">
                        <a>关于MIUI开发版和稳定版的说明</a>
                        <br>
                        <a>刷机教程</a>
                        |
                        <a>小米助手</a>
                        |
                        <a>线刷工具</a>
                        |
                        <a>ROM下载</a>
                    </div>
                </div>
   
        </div><!--右边部分结束-->
        
        <span class="return" style="display: none;">返回</span>
    	
    </div> <!--正文body部分结束-->
    
    <div id="footer">
    	<p></p>
    	<p><a>bbs.xiaomi.cn</a></p>
        <p><span>京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号</span></p>
    </div>
    
</div>
</body>
</html>