<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>小米官网</title>
<base href="<%=basePath%>">
<link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
<link rel="stylesheet" type="text/css" href="front/css/product.css">
<link rel="stylesheet" type="text/css" href="front/css/product_pro_header.css">
<link rel="stylesheet" type="text/css" href="front/css/product_pro_buy.css">
<link rel="stylesheet" type="text/css" href="front/css/product_pro_choice.css">
<link rel="stylesheet" type="text/css" href="front/css/product_separate.css">
<link rel="stylesheet" type="text/css" href="front/css/product_evluate.css">
<link rel="stylesheet" type="text/css" href="front/css/product_float.css">
<script type="text/javascript" src="front/js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="front/js/product.js"></script>

<script>
	//window.location.href="front/MiHome.jsp";
	 function loginOut(){
			if(window.confirm('您确定要注销登录吗？')){
				$.post("usersServlet?d="+new Date(),{op:"usersOut"},function(data){
					if(parseInt($.trim(data))==1){
					alert("注销成功");
					//location.href="front/Main.jsp";
					$("#end i").html("0");
					// 这种方法也可以
						var str1='<a id="top_login" href="front/login.html" style="text-decoration: none; color:#ccc;">登录</a>';
						var str2='<a id="zhuxiao" href="front/login.html" style="text-decoration: none; color:#ccc;">注册</a>';
						$(".zc").html(str2);
						$(".dl").html(str1);
					}
				});
			}
		}
</script>
</head>


<body>
	<div class="pro_header">
    	<img src="front/images/pro_logo.png" class="pro_logo"/>
    	<div class="dl">
        	<c:if test="${not empty loginUsers }">
        		<a id="top_login" style="text-decoration: none; color:#ccc;">当前登录：${loginUsers.usersName }</a>
        		
        	</c:if>
        	<c:if test="${empty loginUsers }">
   				<a id="top_login" href="front/login.html" style="text-decoration: none; color:#ccc;">登录</a>
   			</c:if>
        </div>
        <div class="line"></div>
        <div class="zc">
        	<c:if test="${not empty loginUsers }">
        		<a id="zhuxiao" href="javascript:loginOut()" style="text-decoration: none; color:#ccc;">退出</a>
        	</c:if>
        	<c:if test="${empty loginUsers }">
   				<a id="zhuxiao" href="front/login.html" style="text-decoration: none; color:#ccc;">注册</a>
   			</c:if>
        </div>
    </div>
    
	<div class="pro_buy">
    	<div class="pro_menu">
        	<a><div class="pro_1">
            	<span>小米 5</span>
            </div></a>
            <a><div class="pro">
            	<span>小米4c</span>
            </div></a>
            <a><div class="pro">
            	<span>小米4s</span>
            </div></a>
            <a><div class="pro">
            	<span>小米 Note</span>
            </div></a>
            <a><div class="pro">
            	<span>小米3</span>
            </div></a>
            <a><div class="pro">
            	<span>小米2</span>
            </div></a>
            <a><div class="pro">
            	<span>小米 Note</span>
            </div></a>
            <a><div class="pro">
            	<span>红米 Note</span>
            </div></a>
        </div>
        <div class="pro_imgs" >
	        <c:forEach items="${goodsPic }" var="item"  end="0">
	        	<img src="${item.goodsdescr }" class="pro_img" id="phone_picture" />
	        </c:forEach>
        </div>
        <div class="pro_choice">
        	<span class="big_title">购买</span>
            <span class="big_title1">${goodsName }</span>
            <div class="line1"></div>
            <div class="pro_choice1">
            	<span class="choice_1">1.选择型号</span>
                <span class="type_info" style="display:none" id="type_info_1">高通骁龙801处理器，3GB内存</span>
                <span class="type_info" style="display:none" id="type_info_2"> 高通骁龙801处理器，3GB内存 16GB容量 移动、联通双网通</span>
                <span class="type_info" style="display:none" id="type_info_3"> 高通骁龙810处理器，4GB内存 64GB 容量</span>
                <ul class="models" id="models">
	                <c:forEach items="${goodsFormat }" var="item">
	                	<li class="model0" title="${item.dirName }">${item.dirName }</li>
	                </c:forEach>

                </ul>
                <div id="no_choose" class="no_choose" style="display:block">
               		<%@include file="xuanze.jsp"%>
                </div>
                <span class="choice_3">您选择了以下商品：</span>
                <p class="pro_choice_info"></p>
                <a id="soonbuy" onclick="buysth()"><img src="front/images/pro_choice_buy.png" class="buy_img"/></a>
            </div>
            
            <script>
	          //点击立即购买
	        	function buysth(){
	        		var phoneInfo = $(".pro_choice_info").html();
	        		//alert(phoneInfo);
	        		$.post("goodsServlet",{op:"getCountInfor",phoneInfo:phoneInfo},function(data){
	        			location.href="front/gocount.jsp";
	        		});
	        	}
            </script>
            
        </div>
    </div>
    
    <!--分成两个不同的div进行切换-->
    <div class="separate">
    	<ul class="div_choose">
        	<li class="li_choose" id="product">商品详情描述</li>
            <li class="line2"></li>
            <li class="li_choose" id="evluate">评价晒单<span>（3.7万）</span></li>
            <li class="line2"></li>
        </ul>
    </div>
    
    <!--悬浮层-->
    <div class="float float_play" style="display:none">
    	<ul class="div_choose">
        	<li class="li_choose" id="product1">商品详情描述</li>
            <li class="line2"></li>
            <li class="li_choose" id="evluate1">评价晒单<span>（3.7万）</span></li>
            <li class="line2"></li>
            <li id="buy_pro_btn" class="pro_add_btn"><a class="btn btn_primary add_pro_btn"><img src="front/images/buy_btn.png">加入购物车</a></li>
        </ul>
    </div>
    
    <!-- 商品详情div -->
    <div class="pro_intro" style="display:block">
    	<div class="pro_info">
        	<img src="front/images/pro_Note_info_1.jpg" class="pro_info_img"/>
        </div>
        <div class="pro_info">
        	<img src="front/images/pro_video.jpg" class="pro_video_img" />
        </div>
        <div class="pro_info1">
        	<a class="Left_Div" onClick="left_div()">&lt;</a>
            <a class="Right_Div" onClick="right_div()">&gt;</a>
        	<img src="front/images/pro_gundong.png" style="display:block" class="pro_gundong_imgs" id="imgs1"/>
            <img src="front/images/pro_gundong_1.png" style="display:none" class="pro_gundong_imgs" id="imgs2"/>
            <img src="front/images/pro_gundong_2.png" style="display:none" class="pro_gundong_imgs" id="imgs3"/>
            <img src="front/images/pro_gundong_3.png" style="display:none" class="pro_gundong_imgs" id="imgs4"/>
        </div>
        <script>
			var index=1;
			//显示上一张图片
			function left_div(){		
				var img_size=document.getElementsByClassName('pro_gundong_imgs').length;
				index--;
				if(index<=0){
					index=4;
				}
				$(".pro_info1 img").css("display","none");
				document.getElementById('imgs'+index).style.display='block';//将第index个图片显示
			}
			//显示下一张图片
			function right_div(){	
				var img_size=document.getElementsByClassName('pro_gundong_imgs').length;
				index++;
				if(index>img_size){
					index=1;
				}
				$(".pro_info1 img").css("display","none");
				
				document.getElementById('imgs'+index).style.display='block';//将第index个图片显示
			}
		
        </script>

        
        <div class="pro_info">
        	<img src="front/images/pro_Note_info_4.jpg" />
        </div>
        <div class="pro_info">
        	<div class="pro_info_title">
            	<span>了解小米Note参数</span>
                <i class="down" id="a"></i>
           	</div>
            
            <div class="down_div" style="display:none">
            	<div class="para_1">
                	<span class="para_title">处理器</span>
                    <span class="para_info">联想 L1860C 四核1.5GHz 处理器</span>
                    <span class="para_info1">Mali T682双核图形处理器</span>
                </div>
                <div class="para_1">
                	<span class="para_title">内存/存储</span>
                    <span class="para_info">联想 L1860C 四核1.5GHz 处理器</span>
                    <span class="para_info1">Mali T682双核图形处理器</span>
                </div>
                <div class="para_1">
                	<span class="para_title">电池</span>
                    <span class="para_info">2200mAh 大容量电池</span>
                </div>
            </div>
        </div>
        <div class="pro_info_1">
        	<img src="front/images/pro_Note_info_6.jpg" />
        </div>
    </div>
    
    <!--评价div-->
    <div class="separate_child" style="display:none">
    	<div class="evluate">
            <span>最新评价</span>
            <ul class="evluate_show">
                <li class="evluate_part1">
                	<div class="user_evluate">
                        <div class="head_img"><img src="front/images/head_4.png"/></div>
                        <div class="write">这个嘛，我想你不舍得把兔兔压在头下面吧？ 反正我是舍不得。</div>
                        <div class="line3"></div>
                    </div>
                    <div class="xiaomi_reply">
                    	<div class="head_img"><img src="front/images/logo.png"></div>
                        <div class="reply_content">此喜欢是什么意思呢……朋友很喜欢米兔or你很喜欢米兔or你很喜欢别人的女朋友…我想什么呢..感谢您对小米的支持。</div>
                        
                    </div>
                    <div class="under">
                    	<span class="user_name">小米甜甜柚</span>
                    	<span class="date">2015年12月29日</span>
                    </div>
                    <div class="xiaomi">官方回复</div>
                    <div class="line-dot"></div>
                </li>
                <li class="evluate_part1">
                	<div class="user_evluate">
                        <div class="head_img"><img src="front/images/head_4.png"/></div>
                        <div class="write">这个嘛，我想你不舍得把兔兔压在头下面吧？ 反正我是舍不得。</div>
                        <div class="line3"></div>
                    </div>
                    <div class="xiaomi_reply">
                    	<div class="head_img"><img src="front/images/logo.png"></div>
                        <div class="reply_content">此喜欢是什么意思呢……朋友很喜欢米兔or你很喜欢米兔or你很喜欢别人的女朋友…我想什么呢..感谢您对小米的支持。</div>
                        
                    </div>
                    <div class="under">
                    	<span class="user_name">小米甜甜柚</span>
                    	<span class="date">2015年12月29日</span>
                    </div>
                    <div class="xiaomi">官方回复</div>
                    <div class="line-dot"></div>
                </li>
                <li class="evluate_part1">
                	<div class="user_evluate">
                        <div class="head_img"><img src="front/images/head_4.png"/></div>
                        <div class="write">这个嘛，我想你不舍得把兔兔压在头下面吧？ 反正我是舍不得。</div>
                        <div class="line3"></div>
                    </div>
                    <div class="xiaomi_reply">
                    	<div class="head_img"><img src="front/images/logo.png"></div>
                        <div class="reply_content">此喜欢是什么意思呢……朋友很喜欢米兔or你很喜欢米兔or你很喜欢别人的女朋友…我想什么呢..感谢您对小米的支持。</div>
                        
                    </div>
                    <div class="under">
                    	<span class="user_name">小米甜甜柚</span>
                    	<span class="date">2015年12月29日</span>
                    </div>
                    <div class="xiaomi">官方回复</div>
                    <div class="line-dot"></div>
                </li>
                <li class="evluate_part1">
                	<div class="user_evluate">
                        <div class="head_img"><img src="front/images/head_4.png"/></div>
                        <div class="write">这个嘛，我想你不舍得把兔兔压在头下面吧？ 反正我是舍不得。</div>
                        <div class="line3"></div>
                    </div>
                    <div class="xiaomi_reply">
                    	<div class="head_img"><img src="front/images/logo.png"></div>
                        <div class="reply_content">此喜欢是什么意思呢……朋友很喜欢米兔or你很喜欢米兔or你很喜欢别人的女朋友…我想什么呢..感谢您对小米的支持。</div>
                        
                    </div>
                    <div class="under">
                    	<span class="user_name">小米甜甜柚</span>
                    	<span class="date">2015年12月29日</span>
                    </div>
                    <div class="xiaomi">官方回复</div>
                    <div class="line-dot"></div>
                </li>
                <li class="evluate_part1">
                	<div class="user_evluate">
                        <div class="head_img"><img src="front/images/head_4.png"/></div>
                        <div class="write">这个嘛，我想你不舍得把兔兔压在头下面吧？ 反正我是舍不得。</div>
                        <div class="line3"></div>
                    </div>
                    <div class="xiaomi_reply">
                    	<div class="head_img"><img src="front/images/logo.png"></div>
                        <div class="reply_content">此喜欢是什么意思呢……朋友很喜欢米兔or你很喜欢米兔or你很喜欢别人的女朋友…我想什么呢..感谢您对小米的支持。</div>
                        
                    </div>
                    <div class="under">
                    	<span class="user_name">小米甜甜柚</span>
                    	<span class="date">2015年12月29日</span>
                    </div>
                    <div class="xiaomi">官方回复</div>
                    <div class="line-dot"></div>
                </li>
            </ul>
        </div>
        
        <!--加载更多-->
        <div class="more1">
        	加载更多 &nbsp;<strong class="icon">﹀</stong>
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
</body>
</html>
