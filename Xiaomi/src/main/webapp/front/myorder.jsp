<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML">
<html>
  <head>
    <base href="<%=basePath%>">
   	<title>订单</title>
   	<link type="text/css" href="front/css/myOrder.css" rel="stylesheet"/>
   	<link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
    <script src="front/js/jquery-1.11.3.js" type="text/javascript"></script>
	<script src="front/js/myOrder.js" type="text/javascript"></script>
	
		
		<style type="text/css">
		 	a{
		 		text-decoration: none;
		 	}
		 	#end{
		 		color: #eee;
		 	}
		 	#bigDiv{
		 		height: auto;
		 	}
		</style>
		
		<script type="text/javascript">
			//返回购物车
			function goshopcar(){
				var usersId = $("#Id_hidden").val();
				$.post("front/shopCar_shopCarShow.action",{usersId:usersId},function(data){
					location.href="front/shopcar.jsp";
				});	
			}
								
			//订单分页
	  		function pageInfo(op){
				var usersId = $("#Id_hidden").val();
				$.post("front/orderpage_getOrderInfo.action",{op:op,usersId:usersId},function(data){
					//alert(data.rows);
					var myorders=data.rows;
					var str="";
					for(var i=0;i<myorders.length;i++){
						var ordStas=myorders[i].ordSta;
						alert
						// 0 取消订单1 未支付2已支付等待发货 3待收货  4已签收
						if(ordStas==0){
							var zhuatai="订单取消";
						}else if(ordStas==1){
							var zhuatai="未支付";
						}else if(ordStas==2){
							var zhuatai="已支付等待发货";
						}else if(ordStas==3){
							var zhuatai="待收货";
						}else if(ordStas==4){
							var zhuatai="已签收";
						}
						str+="<div id='orderdiv'>";
						
						str+="<div class='orderInfo'>";
						str+="<p class='orderSta'>"+zhuatai+"（订单状态）</p>";
						str+="<div><span class='date'>日期："+myorders[i].ordDate+"　</span><span>|</span>";
						str+="<span class='shrName>"+myorders[i].recipient+"</span><span>|</span>";
						str+="<span>订单号:</span><span class='orderId'>　"+myorders[i].ordId+"（订单号）　| </span>　";
						str+="<span>订单金额：</span><span class='orderPay'>"+myorders[i].ordTatol+"</span><span>元</span>";
						str+="</div></div>";
						for(var j=0;j<myorders[i].orderdetails.length;j++){
							str+="<div class='prodInfo'>";
							str+="<div class='imgDiv'><img src=../uploadpic/"+myorders[i].orderdetails[j].goodsminPic+" class='prodPic'/></div>";
							str+="<div class='prodList'><p><span class='prodName'>"+myorders[i].orderdetails[j].goodsName+"</span></p>";
							str+="<p><span class='prodPrice'>"+myorders[i].orderdetails[j].detaPrice+"</span><span>元　×　</span><span class='prodCount'>"+myorders[i].orderdetails[j].detaNum+"件</span></p></div></div>";
						}
						str+="</div>";
					}
					$("#bigDiv").html($(str)); 
				},"json");
				
			}
			$(function(){
				pageInfo(1);
			});
			
			function findInfoBySta(ordSta){
				var usersId = $("#Id_hidden").val();
				var op="1";
				$.post("front/orderpage_getOrderInfo.action",{op:op,ordSta:ordSta,usersId:usersId},function(data){
					var myorders=data.rows;
					var str="";
					for(var i=0;i<myorders.length;i++){
						var ordStas=myorders[i].ordSta;
						// 0 取消订单1 未支付2已支付等待发货 3待收货  4已签收
						if(ordStas==0){
							var zhuatai="订单取消";
						}else if(ordStas==1){
							var zhuatai="未支付";
						}else if(ordStas==2){
							var zhuatai="已支付等待发货";
						}else if(ordStas==3){
							var zhuatai="待收货";
						}else if(ordStas==4){
							var zhuatai="已签收";
						}
						str+="<div id='orderdiv'>";
						
						str+="<div class='orderInfo'>";
						str+="<p class='orderSta'>"+zhuatai+"（订单状态）</p>";
						str+="<div><span class='date'>日期："+myorders[i].ordDate+"　</span><span>|</span>";
						str+="<span class='shrName>"+myorders[i].recipient+"</span><span>|</span>";
						str+="<span>订单号:</span><span class='orderId'>　"+myorders[i].ordId+"（订单号）　| </span>　";
						str+="<span>订单金额：</span><span class='orderPay'>"+myorders[i].ordTatol+"</span><span>元</span>";
						str+="</div></div>";
						for(var j=0;j<myorders[i].orderdetails.length;j++){
							str+="<div class='prodInfo'>";
							str+="<div class='imgDiv'><img src=../uploadpic/"+myorders[i].orderdetails[j].goodsminPic+" class='prodPic'/></div>";
							str+="<div class='prodList'><p><span class='prodName'>"+myorders[i].orderdetails[j].goodsName+"</span></p>";
							str+="<p><span class='prodPrice'>"+myorders[i].orderdetails[j].detaPrice+"</span><span>元　×　</span><span class='prodCount'>"+myorders[i].orderdetails[j].detaNum+"件</span></p></div></div>";
						}
						str+="</div>";
					}
					$("#bigDiv").html($(str)); 
				},"json");
			}
		</script>
		
  </head>
  
  <body>
    	<div id="bb">
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
        				<a id="top_login" style="text-decoration: none; color:#ccc;">当前登录：${loginUsers.usersName }</a>
		        	</c:if>
		        </div><div class="line"></div>
		        <div class="wddd">
		   			<a id="zhuxiao" href="" style="text-decoration: none; color:#ccc; line-height: 40px; margin: 0px 10px;">我的订单</a>
		        </div>
		        <div class="shop_car"><a href="javascript:goshopcar()"><img src="front/images/shop_car.png"/><span id="end" style="color:#ccc;">购物车(<i>${sums }</i>)</span></a></div>
			</div>
			<!--header结束-->
			<!--top1开始-->
			<div id="top1">
			    <div class="top1_1">
			    	<img src="front/images/Log.png"/>
			    </div>
			    <div class="top1_2">
			    	<ul>
			    		<li class="log_side"><a href=""></a></li>
			            <li class="xmsj"><a>小米手机</a></li>
			            <li class="hongmi"><a>红米</a></li>
			            <li class="pingban"><a>平板</a></li>
			            <li class="tv"><a>电视&middot;盒子</a></li>
			            <li class="luyouqi"><a>路由器</a></li>
			            <li class="yingjian"><a>智能硬件</a></li>
			            <li class="fuwu"><a target="_blank" href="front/shop.jsp">商城</a></li>
            			<li class="shequ"><a target="_blank" href="front/article_getIndexArticleInfo.action">社区</a></li>
			        </ul>
			    </div>
			</div>
			<!--小米手机隐藏的层-->
            <div class="xmsj-show">
            	<div class="xmsj-show1">
                	<div class="xmsj-show-img"><a><img src="front/images/mi4c!160x110.jpg"/></a></div>
                	<p><a target="_blank" href="" class="top1-title">小米手机4c</a></p>
                    <p><span class="top1-price">1299元起</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="xmsj-show2">
                	<div  class="xmsj-show-img"><a><img src="front/images/mi4!160x110.jpg"/></a></div>
                	<p><a target="_blank" href="" class="top1-title">小米手机4</a></p>
                    <p><span class="top1-price">1299元起</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="xmsj-show3">
                	<div  class="xmsj-show-img"><a><img src="front/images/minote!160x110.jpg"/></a></div>
                	<p><a target="_blank" href="" class="top1-title">小米Note标准版</a></p>
                    <p><span class="top1-price">1799元起</span></p>
                </div>
            </div>
            <!--红米隐藏的层-->
            <div class="hongmi-show">
            	<div class="hongmi-show1">
                	<div class="hongmi-show-img"><a><img src="front/images/hongmi2!160x110.jpg"/></a></div>
                	<p><a target="_blank" href="" class="top1-title">红米手机2</a></p>
                    <p><span class="top1-price">599元起</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="hongmi-show2">
                	<div  class="hongmi-show-img"><a><img src="front/images/hongmi2a!160x110.jpg"/></a></div>
                	<p><a target="_blank" href="" class="top1-title">红米手机2A 增强版</a></p>
                    <p><span class="top1-price">特价499元</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="hongmi-show3">
                	<div  class="hongmi-show-img"><a><img src="front/images/note!160x110.jpg"/></a></div>
                	<p><a target="_blank" href="" class="top1-title">红米Note 电信版</a></p>
                    <p><span class="top1-price">699元起</span></p>
                </div>
            </div>
            <!--红米隐藏的层-->
            <div class="pingban-show">
                <div class="pingban-show1">
                    <div class="pingban-show-img"><a><img src="front/images/mipad16!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">红米手机2</a></p>
                    <p><span class="top1-price">599元起</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="pingban-show2">
                    <div  class="pingban-show-img"><a><img src="front/images/mipad64!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">红米手机2A 增强版</a></p>
                    <p><span class="top1-price">特价499元</span></p>
                </div>
            </div>
			<!--电视盒子隐藏的层-->
            <div class="tv-show">
                <div class="tv-show1">
                    <div class="tv-show-img"><a><img src="front/images/mitv40!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">小米电视2 40英寸</a></p>
                    <p><span class="top1-price">1999元</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="tv-show2">
                    <div  class="tv-show-img"><a><img src="front/images/mitv48!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">小米电视2/2S 48/49英寸</a></p>
                    <p><span class="top1-price">2999元起</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="tv-show3">
                    <div  class="tv-show-img"><a><img src="front/images/mitv3-55!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">小米电视3 55英寸</a></p>
                    <p><span class="top1-price">3999元起</span></p>
                </div>
            </div>                
			<!--路由器隐藏的层-->
            <div class="luyouqi-show">
                <div class="luyouqi-show1">
                    <div class="luyouqi-show-img"><a><img src="front/images/miwifi!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">全新小米路由器</a></p>
                    <p><span class="top1-price">699元起</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="luyouqi-show2">
                    <div  class="luyouqi-show-img"><a><img src="front/images/miwifilite!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">小米路由器 青春版</a></p>
                    <p><span class="top1-price">79元</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="luyouqi-show3">
                    <div  class="luyouqi-show-img"><a><img src="front/images/miwifimini!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">小米路由器 mini</a></p>
                    <p><span class="top1-price">129元</span></p>
                </div>
            </div>
			<!--智能硬件隐藏的层-->
            <div class="yingjian-show">
                <div class="yingjian-show1">
                    <div class="yingjian-show-img"><a href="" target="_blank"><img src="front/images/scooter!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">九号平衡车</a></p>
                    <p><span class="top1-price">1999元</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="yingjian-show2">
                    <div  class="yingjian-show-img"><a href="" target="_blank"><img src="front/images/xiaoyi!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">摄像机</a></p>
                    <p><span class="top1-price">149元</span></p>
                </div>
                <div class="top1-line"></div>
                <div class="yingjian-show3">
                    <div  class="yingjian-show-img"><a href="" target="_blank"><img src="front/images/yicamera!160x110.jpg"/></a></div>
                    <p><a target="_blank" href="" class="top1-title">运动相机</a></p>
                    <p><span class="top1-price">399元起</span></p>
                </div>
            </div>
	        <!--top1结束-->
		</div>	
			
			<div id="body">
				<p id="bigTitle">交易订单</p>
				<div id="main">
					<div id="left">
						<ul>
							<li class="leftTitle">订单中心</li>
							<li>我的订单</li>
						</ul>
						<ul>
							<li class="leftTitle">个人中心</li>
							<li>我的个人中心</li>
							<li>收货地址</li>
						</ul>
						<ul>
							<li class="leftTitle">账户管理</li>
							<li>个人信息</li>
							<li>修改密码</li>
						</ul>
					</div>
					
					<!--右边开始  0 取消订单1 未支付2 已支付等待发货  3已发货待收货  4已签收-->
					<div id="right">
						<div id="rightBody">
							<div class="rightTop">
								<p class="rightTitle">我的订单</p>
								<ul>
									<li>全部有效订单　|</li>
									<li><a href="javascript:findInfoBySta(2)">待发货</a>　|</li>
									<li><a href="javascript:findInfoBySta(3)">待收货　|</a></li>
									<li>已关闭 </li>
								</ul>
							</div>
							<div id="bigDiv">
								
							</div>
							
							
							<div class="comment_page" >  <!-- 订单的分页信息 -->
			                	<div class="page_info">
			                    	<ul>
			                            <li class="first"><a href="javascript:pageInfo(1)">首页</a></li>
			                            <li class="shang"><a href="javascript:pageInfo(2)">上一页</a></li>
			                            <li class="next"><a href="javascript:pageInfo(3)">下一页</a></li>
			                            <li class="last"><a href="javascript:pageInfo(4)">末页</a></li>
			                        </ul>
			                    </div>
			                </div>
								
						</div>	
					</div>	
			</div>
			
			
			<div class="footer">
				<div class="footer_1">
				    <ul>
				    	<li><img src="front/images/repair.png">一小时快修服务</li>
				        <li><img src="front/images/7days.png"><span>七天无理由退货</span></li>
				        <li><img src="front/images/15days1.png"><span>15天免费换货</span></li>
				        <li><img src="front/images/baoyou.png"><span>满150元包邮</span></li>
				        <li style="border:none;"><img src="front/images/shouhou.png"><span>520余家售后网点</span></li>
				    </ul>
			    </div>
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
			    
			    <div class="footer_3">
			    	<div class="footer_3_main">
			        	<div class="footer_log">
			        		<img src="front/images/log1.png"/>
			        	</div>
			            <div class="footer_3_a">
			            	<ul>
			                	<li><a>小米网</a></li><li class="footer_line">|</li>
			                    <li><a>MIUI</a></li><li class="footer_line">|</li>
			                    <li><a>米聊</a></li><li class="footer_line">|</li>
			                    <li><a>多看书城</a></li><li class="footer_line">|</li>
			                    <li><a>小米路由器</a></li><li class="footer_line">|</li>
			                    <li><a>小米后院</a></li><li class="footer_line">|</li>
			                    <li><a>小米天猫店</a></li><li class="footer_line">|</li>
			                    <li><a>小米淘宝直营店</a></li><li class="footer_line">|</li>
			                  	<li><a>小米网盟</a></li><li class="footer_line">|</li>
			                    <li><a>问题反馈</a></li>
			                </ul>
			                <div class="footer_b">
			            		<p>&copy;mi.com 京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号 京网文[2014]0059-0009号</p>
			            	</div>
			            </div>
			            
			            <div class="footer_c">
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
 	</body>
</html>
  