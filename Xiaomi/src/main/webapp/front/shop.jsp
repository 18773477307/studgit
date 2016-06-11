<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>小米商城</title>
	<link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
	<link rel="stylesheet" type="text/css" href="front/css/sc.index.css">
	<link type="text/css" href="front/css/main.css" rel="stylesheet"/>
	<script type="text/javascript" src="front/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="front/js/Shop.js"></script>
	<script src="front/js/jquery.fly.min.js"></script>
	<script>
		$(function(){
			$(".more").click(function(){
				$(".lydia_close").slideToggle(200);
			});
			$(".more2").click(function(){
				$(".lydia_close2").slideToggle(200);
			});
			$(".more3").click(function(){
				$(".lydia_close3").slideToggle(200);
			});
		});
		
	</script>
    <script>
		//window.location.href="front/MiHome.jsp";
		 function loginOut(){
				if(window.confirm('您确定要注销登录吗？')){
					$.post("front/user_usersOut.action",function(data){
						if(parseInt($.trim(data.total))==1){
						alert("注销成功");
						$("#end i").html("0");
						// 这种方法也可以
							var str1='<a id="top_login" href="front/login.jsp" style="text-decoration: none; color:#ccc;">登录</a>';
							var str2='<a id="zhuxiao" href="front/login.jsp" style="text-decoration: none; color:#ccc;">注册</a>';
							$(".zc").html(str2);
							$(".dl").html(str1);
						}
					});
				}
			}
		 
		 function goShopCar(){
			var car_count=$("#end i").html();
			var usersId = $("#Id_hidden").val();
			$.post("front/shopCar_shopCarShow.action",{usersId:usersId},function(data){
				location.href="front/shopcar.jsp";
			});	
		 }
	</script>
    <script>
	$(function(){
		$(window).on('scroll',function(){
			var st = $(document).scrollTop();
			if( st>400 ){
				if( $('#main-container').length != 0  ){
					var w = $(window).width(),mw = $('#main-container').width();
					if( (w-mw)/2 > 70 )
						$('#go-top').css({'left':(w-mw)/2+mw+20});
					else{
						$('#go-top').css({'left':'auto'});
					}
				}
				$('#go-top').fadeIn(function(){
					$(this).removeClass('dn');
				});
			}else{
				$('#go-top').fadeOut(function(){
					$(this).addClass('dn');
				});
			}	
		});
		$('#go-top .go').on('click',function(){
			$('html,body').animate({'scrollTop':0},500);
		});
	
		$('#go-top .uc-2vm').hover(function(){
			$('#go-top .uc-2vm-pop').removeClass('dn');
		},function(){
			$('#go-top .uc-2vm-pop').addClass('dn');
		});
	});
	
	function img_finds() {
		var goodsName = $('#search').val();
		
		$.post("goodsServlet",{op:"getTypeGoodsInfo",goodsName:goodsName},function(){
			location.href="front/shop.jsp";
		});
		
	}
	
	
	 function mouseOver() {
		 
         document.getElementById("img_find").src="front/images/search1.png";            
     }
     function mouseOut() {
    	 
         document.getElementById('img_find').src ="front/images/search.png"
     }
	
	</script>

  </head>
  
  <body>
    <div class="site_top">
       
        	<div id="header">
		    	<div class="mainpage"><a>小米网</a></div><div class="line"></div>
		        <div class="miui"><a>MIUI</a></div><div class="line"></div>
		        <div class="ml"><a>米聊</a></div><div class="line"></div>
		        <div class="game"><a>游戏</a></div><div class="line"></div>
		        <div class="read"><a>多看阅读</a></div><div class="line"></div>
		        <div class="yfw"><a>云服务</a></div><div class="line"></div>
		        <div class="question"><a>问题反馈</a></div>
		        <div class="dl">
		        	<c:if test="${not empty loginUsers }">
		        		<input type="hidden" name="usersId" id="Id_hidden" value="${loginUsers.usersId }"/>
		        		<a id="top_login" style="text-decoration: none; color:#ccc;">当前登录:${loginUsers.usersName }</a>
		        	</c:if>
		        	<c:if test="${empty loginUsers }">
		   				<a id="top_login" href="front/login.jsp" style="text-decoration: none; color:#ccc;">登录</a>
		   			</c:if>
		        </div><div class="line"></div>
		        <div class="zc">
		        	<c:if test="${not empty loginUsers }">
		        		<a id="zhuxiao" href="javascript:loginOut()" style="text-decoration: none; color:#ccc;">退出</a>
		        	</c:if>
		        	<c:if test="${empty loginUsers }">
		   				<a id="zhuxiao" href="front/login.jsp" style="text-decoration: none; color:#ccc;">注册</a>
		   			</c:if>
		        </div>
		        <div class="shop_car"><a href="javascript:goShopCar()"><img src="front/images/shop_car.png"/><span id="end">购物车(<i>${sums }</i>)</span></a></div>
		</div>
    
    <div class="site_header">
    	<div class="container2">
            <div class="header_logo">
            	<img src="front/images/xiaomi_logo.png" onclick="window.location.href='front/MiHome.jsp'" style="cursor: pointer;">
            </div>
            
            <div class="header_nav">
            	<ul class="nav_list">
                	<li class="link nav_category">
                    	<a><span class="text">全部商品分类</span></a> 
                    </li>
                    <li class="link nav-item xmsj">
					<a><span class="text">小米手机</span></a>
                    <div class="xmphone-show cssyc">
                        <ul class="children_list">
                            <li class="first">
                                <div class="figure_photo">
                                    <img width="160" height="110" alt="小米手机4c" src="front/images/mi4c!160x110.jpg"/>
                                </div>
                                <div class="title">
                                	<a>小米手机4c</a>
                                </div>
                                <p><span class="price">1299元起</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                 <a><img width="160" height="110" alt="小米手机4" src="front/images/mi4!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米手机4</a>
                                </div>
                                <p><span class="price">1299元起</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                 <a><img width="160" height="110" alt="小米Note 标准版" src="front/images/minote!160x110.jpg"></a>
                                </div>
                                <div class="title">
                                    <a>小米Note 标准版</a>
                                </div>
                                <p><span class="price">1799元起</span></p>
                            </li>
                        </ul>
                    </div> 
                    </li>               
                    <li class="link nav-item hmsj">
                    <a><span class="text">红米</span> </a>
                    <!--红米隐藏的层-->
                    <div class="hongmi-show cssyc">
                        <ul class="children_list">
                            <li class="first">
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="红米手机2" src="front/images/hongmi2!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>红米手机2</a></p>
                                </div>
                                <p><span class="price">599元起</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="红米手机2A 增强版" src="front/images/hongmi2a!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>红米手机2A 增强版</a></p>
                                </div>
                                <p><span class="price">特价499元</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="红米Note 电信版" src="front/images/note!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>红米Note 电信版</a></p>
                                </div>
                                <p><span class="price">699元起</span></p>
                            </li>
                        </ul>
                    </div>
                    </li>
                    <li class="link nav-item pb">
                    	<a><span class="text">平板</span></a>
                    <!--平板隐藏的层-->
                    <div class="pingban-show cssyc">
                    	<ul class="children_list">
                            <li class="first">
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="小米平板 16GB" src="front/images/mipad16!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米平板 16GB</a></p>
                                </div>
                                <p><span class="price">999元</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="小米平板 64GB" src="front/images/mipad64!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米平板 64GB</a></p>
                                </div>
                                <p><span class="price">1299元</span></p>
                            </li>
                        </ul>
                    </div>
                    </li>
                    <li class="link nav-item tv">
                    	<a><span class="text">电视 · 盒子</span></a>
                    <!--电视盒子隐藏的层-->
                    <div class="tv-show cssyc">
                    	<ul class="children_list">
                            <li class="first">
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="小米电视2 40英寸" src="front/images/mitv40!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米电视2 40英寸</a></p>
                                </div>
                                <p><span class="price">1999元</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="小米电视2/2S 48/49英寸" src="front/images/mitv48!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米电视2/2S 48/49英寸</a></p>
                                </div>
                                <p><span class="price">2999元</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="小米电视3 55英寸" src="front/images/mitv3-55!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米电视3 55英寸</a></p>
                                </div>
                                <p><span class="price">3999元</span></p>
                            </li>
                        </ul>
                    </div>
                    </li>
                    <li class="link nav-item lyq">
                    	<a><span class="text">路由器</span></a>
                    <!--路由器隐藏的层-->
                    <div class="luyouqi-show cssyc">
                    	<ul class="children_list">
                            <li class="first">
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="全新小米路由器" src="front/images/miwifi!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>全新小米路由器</a></p>
                                </div>
                                <p><span class="price">699元起</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="小米路由器 青春版" src="front/images/miwifilite!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米路由器 青春版</a></p>
                                </div>
                                <p><span class="price">79元</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="小米路由器 mini" src="front/images/miwifimini!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>小米路由器 mini</a></p>
                                </div>
                                <p><span class="price">129元</span></p>
                            </li>
                        </ul>
                    </div>
                    </li>
                    <li class="link nav-item yj">
                    <a><span class="text">智能硬件</span></a>
                    <!--智能硬件隐藏的层-->
                    <div class="yingjian-show cssyc">
                    	<ul class="children_list">
                            <li class="first">
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="九号平衡车" src="front/images/scooter!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>九号平衡车</a></p>
                                </div>
                                <p><span class="price">1999</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="摄像机" src="front/images/xiaoyi!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>摄像机</a></p>
                                </div>
                                <p><span class="price">149元</span></p>
                            </li>
                            <li>
                                <div class="figure_photo">
                                    <a><img width="160" height="110" alt="运动相机" src="front/images/yicamera!160x110.jpg"/></a>
                                </div>
                                <div class="title">
                                    <a>运动相机</a></p>
                                </div>
                                <p><span class="price">399元起</span></p>
                            </li>
                        </ul>
                    </div>
                    </li>
                    <li class="link nav-item">
                    	<a href="front/shop.jsp"><span class="text">商城</span></a>
                    </li>
                    <li class="link nav-item">
                    	<a><span class="text">社区</span></a>
                    </li>
                </ul>
            </div>

			<div class="header_search">
                <form>
                    <input class="search_text" id="search" type="text"  placeholder="要搜索的对象" value="${searchText }"/>
                    <img src="front/images/search.png" class="search_img" onclick="img_finds()" onmouseover="mouseOver()" onmouseout="mouseOut()" id="img_find" style="cursor:pointer"/>
                </form>
			</div>
		</div>
    </div>
    <%--
    <%@include file="top1.jsp" %>--%>
    
    <div class="breadcrumbs">
    	<div class="container3">
            <a class="title_link">首页</a>
            <span class="title_link">&nbsp;>&nbsp;</span>
            <a class="title_link">服务支持</a>
        </div>
    </div>
    
    
    
    <div class="container4">
    	<div class="filter_box">
            <div class="filter_list">
             	 <span>分类：</span>
             	 <ul>
                    <li class="active">全部</li>
                    <li><a>贴膜 / 个性配件</a></li>
                    <li><a>保护套 / 后盖</a> </li>
                    <li><a>移动电源 / 插线板</a></li>
                    <li><a >电池 / 存储卡</a></li>
                    <li><a>耳机 / 音箱</a> </li>                      
                </ul>
                <a class="more" id="more">
                    更多
                    <img src="front/iconfont-photo/iconfont-zhankai.svg">
                </a>
                <ul class="lydia_close">
                	 <li><a>小米生活方式</a></li>
                    <li><a>米兔/服装</a></li>
                    <li><a>路由器/智能硬件</a></li>
                    <li><a>配件优惠套餐</a></li>
                    <li><a>小米电</a>视</li>
                    <li><a>小米盒子</a></li>
                    <li><a>电视配</a>件</li>
                    <li><a>小米平板</a></li>
                    <li><a>低音炮</a></li>
                    <li><a>小米电视主机</a></li> 
                </ul>
             </div>
             <div class="filter_list">
             	<span>机型：</span>
                <ul>
                    <li class="active">全部</li>
                    <c:forEach items="${goName }" var="itemm" begin="0" end="3" step="1">
                		<li><a>${itemm.goodsName }</a></li>
			                    <%--<li><a>红米Note3</a></li>
			                    <li><a>小米平板2</a></li>
			                    <li><a>小米Note</a></li>
			                    <li><a>小米手机4c</a></li>
			                    <li><a>红米Note 2</a></li>--%>
			        </c:forEach>
                </ul>
                <a class="more2" id="more">
                    更多
                    <img src="front/iconfont-photo/iconfont-zhankai.svg">
                </a>
                <ul class="lydia_close2">
                	<c:forEach items="${goName }" var="itemm" begin="5" step="1">
                		<li><a>${itemm.goodsName }</a></li>
			                    <%--<li><a>红米Note/增强版</a></li>
			                	<li><a>红米2A</a></li> 
			                    <li><a>小米手机3</a></li> 
			                    <li><a>红米手机2</a></li> 
			                    <li><a>小米电视2</a></li> 
			                    <li><a>小米盒子</a></li> 
			                    <li><a>红米手机</a></li> 
			                    <li><a>小米手机2A</a></li> 
			                    <li><a>小米手机2/2S</a></li> 
			                    <li><a>小米电</a></li> 
			                    <li><a>小米手机1/1S</a></li> 
			                    <li><a>小米平板</a></li> 
			                    <li><a>小米盒子增强版</a></li> 
			                    <li><a>小小米盒子</a></li>--%>
                    </c:forEach>
                </ul>
            </div>
            <div class="filter_list">
                <span>品牌：</span>
                <ul>
                    <li class="active">全部</li>
                    <li><a>小米</a></li>
                    <li><a>EMIE</a></li>
                    <li><a>IVS</a></li>
                    <li><a>fotopro</a></li>
                    <li><a>铁三角</a></li>                                                                                
                </ul>
                <a class="more3" id="more">
                    更多
                    <img src="front/iconfont-photo/iconfont-zhankai.svg">
                </a>
                <ul class="lydia_close3">
                	<li><a>第三方品牌</a></li> 
                    <li><a>QCY</a></li> 
                    <li><a>Sandisk</a></li> 
                    <li><a>东芝</a></li> 
                    <li><a>Jam</a></li> 
                    <li><a>ZIM</a></li> 
                    <li><a>小蚁</a></li> 
                    <li><a>捷波朗</a></li> 
                    <li><a>90分</a></li> 
                    <li><a>Jambone</a></li> 
                </ul>
            </div> 
         </div>
    </div>
    
    
    
    <div class="content">
    	<div class="container5">
        	<div class="order_list_box ">
                <ul class="order_list">
                    <li><a class="active">推荐</a></li>
                    <li><a>新品</a></li>
                    <li class="up"><a>价格</a></li>
                </ul>
                <ul class="type_list">
                    <li><a><span class="checkbox checkbox-checked"></span>查看评价</a></li>
                    <li><a><span class="checkbox checkbox-checked"></span>仅显示特惠商品</a></li>
                    <li><a><span class="checkbox"></span>仅显示有货商品</a></li>
                </ul>
            </div>
            
            <div class="goods_list_box">
            	<div class="goods_list">
            	<c:forEach items="${allPhone }" var="itemm">
                	<div class="goods_item" id="${itemm.goodsId }">
                        <div class="figure_img">
                       		<a><img id="sdsd" width="200" height="200" src="../uploadpic/${fn:substring(itemm.goodsmaxPic,0,fn:indexOf(itemm.goodsmaxPic, ','))}"></a>
                        </div>
                        <p class="desc"></p>
                        <h2 class="title"><a>${itemm.goodsName }</a></h2>
                        <p class="price">
                            ${itemm.goodsminPrice }元
                        </p>
                        
                        <div class="thumbs">
                            <ul class="thumb-list clearfix">
                                <li>
                                    <img width="34" height="34" src="../uploadpic/${fn:substring(itemm.goodsminPic,0,fn:indexOf(itemm.goodsminPic, ','))}">
                                </li>
                            </ul>
                        </div>
                        <div class="actions clearfix">
                            <a class="btn_like">
                                <img src="front/iconfont-photo/iconfont-tubiao.svg" class="">
                                <span>喜欢</span>
                            </a>
                            <a class="btn_buy addcar" >
                                <span>加入购物车</span>
                                <img src="front/iconfont-photo/iconfont-gouwuche.svg">
                            </a>
                        </div>
                       <div style="color:#fff;width:275px;height:40px;background-color: #78BA43; position: relative; top:-415px; line-height: 40px; display: none;" class="msg">
                        	成功加入购物车</div>
                    </div>
               </c:forEach>
                    
                     <script>
					$(function() {
						var offset = $("#end").offset();
						$(".addcar").click(function(data){ //function hh(event)
						 	var count=$("#end i").html();
							var addcar = $(this);
							var img = addcar.parent().parent().find('ul li img').attr('src');
							var flyer = $('<img class="u-flyer" src="'+img+'">');
							flyer.fly({
								start: {
									left: data.pageX,
									top: data.pageY
								},
								end: {
									left: offset.left+10,
									top: offset.top+10,
									width: 0,
									height: 0
								},
								onEnd: function(){
								//	alert("加入购物车成功...");
									//addcar.parent().parent().find($(".msg")).css("display","block").animate({width: '275px'}, 1000).fadeOut(1000);
									//addcar.css("cursor","default").removeClass('orange').unbind('click');
									
									this.destory();
								}
							});
							var goodsId=$(this).parent().parent().attr('id');
							console.info(goodsId);
							$.post("front/shopCar_toCarFind.action",{goodsId:goodsId},function(data){
								if(parseInt($.trim(data.total))!=1){
									$.post("front/shopCar_toCarAdd.action",function(data){
										if(parseInt($.trim(data.total))==1){
											addcar.parent().parent().find($(".msg")).css("display","block").animate({width: '275px'}, 1000).fadeOut(1000);
											count++;
											$("#end i").html(count);
										}else{
											alert("失败");
										}
									});
								}else{
									$.post("front/shopCar_toCarUpdate.action",function(data){
										if(parseInt($.trim(data.total))==1){
											addcar.parent().parent().find($(".msg")).css("display","block").animate({width: '275px'}, 1000).fadeOut(1000);
											count++;
											$("#end i").html(count);
										}else{
											alert("失败");
										}
									});
								}
							});
						});
						
						$(".btn_like").click(function(){
							var src=$(this).children().attr('src');
							if(src=="front/iconfont-photo/iconfont-tubiao.svg"){
								$(this).children().attr('src','front/iconfont-photo/iconfont-xihuan.svg');
							}else if(src=="front/iconfont-photo/iconfont-xihuan.svg"){
								$(this).children().attr('src','front/iconfont-photo/iconfont-tubiao.svg');
							}
						});
					});
					</script>
                  
                </div>
                
                <div class="goods_page">
                	<a class="numbers_first"><</a>
					<a class="numbers_current">1</a>
                    <a class="numbers">2</a>
                    <a class="numbers">3</a>
                    <a class="numbers">4</a>
                    <a class="numbers">5</a>
                    <a class="numbers">6</a>
                    <a class="numbers">7</a>
                    <a class="numbers">8</a>
                    <a class="numbers_last">></a>
                </div>
            </div>
        </div>
    </div>
    
    	
    <div class="footer">
    	<div class="container8">
            <div class="footer_1">
                <ul>
                    <li><img src="front/images/repair.png">一小时快修服务</li>
                    <li><img src="front/images/7days.png"><span>七天无理由退货</span></li>
                    <li><img src="front/images/15days1.png"><span>15天免费换货</span></li>
                    <li><img src="front/images/baoyou.png"><span>满150元包邮</span></li>
                    <li style="border:none;"><img src="front/images/xiaoshou.png"><span>520余家售后网点</span></li>
                </ul>
            </div>
        </div>
        <div class="container9">
            <div class="footer_2">
                <div class="service_1">
                    <p class="service_title">帮助中心</p>
                    <p><a>购物指南</a></p>
                    <p><a>支付方式</a></p>
                    <p><a>配送方式</a></p>
                </div>
                <div class="service_2">
                    <p class="service_title">服务支持</p>
                    <p><a>售后政策</a></p>
                    <p><a>资助服务</a></p>
                    <p><a>相关下载</a></p>
                </div>
                <div class="service_3">
                    <p class="service_title">小米之家</p>
                    <p><a>小米之家</a></p>
                    <p><a>服务网点</a></p>
                    <p><a>预约亲临到店服务</a></p>
                </div>
                <div class="service_4">
                    <p class="service_title">关于小米</p>
                    <p><a>了解小米</a></p>
                    <p><a>加入小米</a></p>
                    <p><a>联系我们</a></p>
                </div>
                <div class="service_5">
                    <p class="service_title">关注我们</p>
                    <p><a>新浪微博</a></p>
                    <p><a>小米部落</a></p>
                    <p><a>官方微信</a></p>
                </div>
                <div class="service_online">
                    <span>400-100-5678</span>
                    <p>周一至周日 8:00-18:00</p>
                    <p>(仅收市话费)</p>
                    <p class="online"><a></a></p>
                </div>
            </div>
        </div>
        <div class="container10">
            <div class="footer_3">
                <div class="footer_3_main">
                    <div class="footer_log"><img src="front/images/log1.png"/></div>
                    <div class="footer_3_a">
                        <ul>
                            <li><a>小米网</a></li>
                            <li class="footer_line">|</li>
                            <li><a>MIUI</a></li>
                            <li class="footer_line">|</li>
                            <li><a>米聊</a></li>
                            <li class="footer_line">|</li>
                            <li><a>多看书城</a></li>
                            <li class="footer_line">|</li>
                            <li><a>小米路由器</a></li>
                            <li class="footer_line">|</li>
                            <li><a>小米后院</a></li>
                            <li class="footer_line">|</li>
                            <li><a>小米天猫店</a></li>
                            <li class="footer_line">|</li>
                            <li><a>小米淘宝直营店</a></li>
                            <li class="footer_line">|</li>
                            <li><a>小米网盟</a></li>
                            <li class="footer_line">|</li>
                            <li><a>问题反馈</a></li>
                        </ul>
                        <div class="footer_3_b">
                            <p>&copy;mi.com 京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号 京网文[2014]0059-0009号</p>
                        </div>
                    </div>
                    
                    <div class="footer_3_c">
                        <div class="footer_cc">
                            <img src="front/images/foot1.png"/>
                            诚信网页示范企业
                        </div>
                        <div class="footer_cc">
                            <img src="front/images/foot2.png"/>
                            可信网站信用评价
                        </div>
                        <div class="footer_cc">
                            <img src="front/images/foot3.png"/>
                            网上交易保障中心
                        </div>
                    </div>	
                </div>
        	</div>
        </div>
    </div>
    <!-- 代码 开始 -->
    <div class="go-top dn" id="go-top">
    <a href="javascript:;" class="uc-2vm"></a>
	<div class="uc-2vm-pop dn">
		<h2 class="title-2wm">用微信扫一扫</h2>
		<div class="logo-2wm-box">
			<img src="front/images/weixin.png" alt="小米公众号" width="240" height="240">
		</div>
	</div>
    <a href="javascript:;" class="go"></a>
	</div>
  </body>
</html>
