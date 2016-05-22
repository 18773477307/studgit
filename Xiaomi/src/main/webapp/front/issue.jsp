<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>问题反馈</title>
<link rel="stylesheet" type="text/css" href="css/issue.css">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
</head>

<body>
	<div class="header">
    	<div class="main"><a>小米网</a></div><div class="line"></div>
        <div class="miui"><a>MIUI</a></div><div class="line"></div>
        <div class="ml"><a>米聊</a></div><div class="line"></div>
        <div class="game"><a>游戏</a></div><div class="line"></div>
        <div class="read"><a>多看阅读</a></div><div class="line"></div>
        <div class="yfw"><a>云服务</a></div><div class="line"></div>
        <div class="question"><a>问题反馈</a></div>
        <div class="dl"><a>登录</a></div><div class="line"></div>
        <div class="zc"><a>注册</a></div>
        <div class="shop_car"><img src="images/buy.png" class="img"/><span class="span">购物车（0）</span></div>
    </div>
	<div class="menu">
    	<div class="logo"><img src="images/logo.png"/></div>
        <div class="top1_2">
        	<ul>
            	<li class="all"><a>全部商品分类</a></li>
            	<li class="xmsj"><a>小米手机</a></li>
                <li class="hongmi"><a>红米</a></li>
                <li class="pingban"><a>平板</a></li>
                <li class="tv"><a>电视·盒子<a></li>
                <li class="luyouqi"><a>路由器</a></li>
                <li class="yingjian"><a>智能硬件</a></li>
                <li class="fuwu"><a>服务</a></li>
                <li class="shequ"><a>社区</a></li>
            </ul>
        </div>
        <div id="top1_3">
        	<form>
            	<input class="search-text" id="search" type="text" value="要搜索的对象" />
            	<img src="images/search.png" class="search_img"/>
            </form>
        </div>
		
    </div>
    <form class="issue">
    	<ul class="ul">
            <li class="title1">问题反馈</li>
            <li class="line1"></li>
            <li class="title2">对您给予的帮助和支持，深表感谢！</li>
            <li>
            	<div class="selected">
                    <select name="select" class="select">
                        <option>问题类型</option>
                        <option>有错别字</option>
                        <option>链接失效</option>
                        <option>发货太慢</option>
                        <option>文字太小</option>
                        <option>支付失败</option>
                        <option>无法下单</option>
                        <option>搜不到商品</option>
                        <option>页面打开慢</option>
                        <option>免邮门槛高</option>
                        <option>其他问题</option>
                    </select>
                </div>
            </li>
            <script>
            	$(".selected").mouseover(function(){
					$(this).css("border-color","#B0B0B0");
				});
					
				$(".selected").mouseout(function(){
					$(this).css("border-color","#E0E0E0");
				});
            </script>
            <li>
            	<div class="text1">
                	<label class="label" for="describeIssue">在这里描述您遇到的问题</label>
            		<textarea class="textarea" name="describeIssue" id="describeIssue"></textarea>
                </div>
            </li>
            
            <script>
            	$(".textarea").click(function(){
					$(this).css("border-color","#FF6700");
					$(".label").css({"color":"#FF6700","font-size":"13px","margin-top":"-18px","background":"none repeat scroll 0 0 #fff"});

					$(".textarea").mouseenter(function(){
						$(".textarea").css("border-color","#FF6700");
					});
					
					$(".textarea").mouseleave(function(){
						$(".textarea").css("border-color","#FF6700");
					});
				});
				
				$(".textarea").mouseover(function(){
					$(this).css("border-color","#B0B0B0");
				});
					
				$(".textarea").mouseout(function(){
					$(this).css("border-color","#E0E0E0");
				});
				
				$(".textarea").blur(function(){
					$(this).css("border-color","#B7B7B7");
					$(".label").css({"color":"#B0B0B0","font-size":"14px","margin-top":"0px","background":"none repeat scroll 0 0 transparent"});
					
					$(".textarea").mouseenter(function(){
						$(".textarea").css("border-color","#B0B0B0");
					});
					
					$(".textarea").mouseleave(function(){
						$(".textarea").css("border-color","#E0E0E0");
					});
				});
            </script>
            
            <li>
            	<label class="label_1" for="pageLink">页面链接(选填)</label>
            	<input type="text" class="text2" name="pageLink" id="pageLink"/>
            </li>
            <script>
            	$(".text2").click(function(){
					$(this).css("border-color","#FF6700");
					$(".label_1").css({"color":"#FF6700","font-size":"13px","margin-top":"-18px","background":"none repeat scroll 0 0 #fff"});

					$(".text2").mouseenter(function(){
						$(".text2").css("border-color","#FF6700");
					});
					
					$(".text2").mouseleave(function(){
						$(".text2").css("border-color","#FF6700");
					});
				});
				
				$(".text2").mouseover(function(){
					$(this).css("border-color","#B0B0B0");
				});
					
				$(".text2").mouseout(function(){
					$(this).css("border-color","#E0E0E0");
				});
				
				$(".text2").blur(function(){
					$(this).css("border-color","#B7B7B7");
					$(".label_1").css({"color":"#B0B0B0","font-size":"14px","margin-top":"0px","background":"none repeat scroll 0 0 transparent"});
					
					$(".text2").mouseenter(function(){
						$(".text2").css("border-color","#B0B0B0");
					});
					
					$(".text2").mouseleave(function(){
						$(".text2").css("border-color","#E0E0E0");
					});
				});
            </script>
            <li>
            	<label class="label_2" for="ver_code">验证码</label>
            	<input type="text" class="text3" name="ver_code" id="ver_code" />
            	<img src="images/auth_code.png" class="code_img" style="display:block"/>
                <img src="images/refresh.png" class="refresh_img" style="display:block"/>
            </li>
            <script>
            	$(".text3").click(function(){
					$(this).css("border-color","#FF6700");
					$(".label_2").css({"color":"#FF6700","font-size":"13px","margin-top":"-18px","background":"none repeat scroll 0 0 #fff"});

					$(".text3").mouseenter(function(){
						$(".text3").css("border-color","#FF6700");
					});
					
					$(".text3").mouseleave(function(){
						$(".text3").css("border-color","#FF6700");
					});
				});
				
				$(".text3").mouseover(function(){
					$(this).css("border-color","#B0B0B0");
				});
					
				$(".text3").mouseout(function(){
					$(this).css("border-color","#E0E0E0");
				});
				
				$(".text3").blur(function(){
					$(this).css("border-color","#B7B7B7");
					$(".label_2").css({"color":"#B0B0B0","font-size":"14px","margin-top":"0px","background":"none repeat scroll 0 0 transparent"});
					
					$(".text3").mouseenter(function(){
						$(".text3").css("border-color","#B0B0B0");
					});
					
					$(".text3").mouseleave(function(){
						$(".text3").css("border-color","#E0E0E0");
					});
				});
            </script>
            <li><a><img src="images/submit.png" class="submit_img"></a></li>
        </ul>
        
    </form>
    <div class="cjwt">
    	<p class="common_question">常见问题</p>
        <p class="title3">满多少免运费？</p>
        <p class="content">购买手机，配件等商品在150元以下，需按照10元/单标准支付邮费，“单笔订单满150元免邮费”需以实际支付金额超过150元为准。小米电视、空气净化器、净水器、体重秤因等商品特殊性不参与满150元包邮活动。如遇活动，资费标准以活动公告为准。</p>
        <p class="title3">我购买的东西什么时候发货？</p>
        <p class="content">小米网将参照支付顺序在7个工作日左右发货。实际发货时间可能因用户所在地、物流第三方、支付延迟等多种因素而调整。我们将尽量保证发货时间与发货顺序，但实际中可能无法严格按支付顺序发货，请您谅解。（发货时间以具体活动为准）快递公司是由系统根据地址随机分配，不能个人选择合适的快递公司！</p>
        <p class="title3">如何查询我物流进度？</p>
        <p class="content">小米网登录后，进入我的订单，如果您的订单状态为“已发货”，可以查看到最新的物流信息。</p>
    </div>
    
    <div class="footer">

        <div class="footer_1">
        <ul>
            <li><img src="images/repair.png">一小时快修服务</li>
            <li><img src="images/7days.png"><span>七天无理由退货</span></li>
            <li><img src="images/15days1.png"><span>15天免费换货</span></li>
            <li><img src="images/baoyou.png"><span>满150元包邮</span></li>
            <li style="border:none;"><img src="images/shouhou.png"><span>520余家售后网点</span></li>
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
                <div class="footer_log"><img src="images/log1.png"/></div>
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
                    <div class="footer_b">
                        <p>&copy;mi.com 京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号 京网文[2014]0059-0009号</p>
                    </div>
                </div>
                
           
                <div class="footer_c">
                    <div class="footer_cc">
                        <img src="images/foot1.png"/>
                        诚信网页示范企业
                    </div>
                    <div class="footer_cc">
                        <img src="images/foot2.png"/>
                        可信网站信用评价
                    </div>
                    <div class="footer_cc">
                        <img src="images/foot3.png"/>
                        网上交易保障中心
                    </div>
                </div>	
            </div>
        </div>
    
    </div>

</body>
</html>
