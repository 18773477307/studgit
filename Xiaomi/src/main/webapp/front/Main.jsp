<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>小米主页</title>
<base href="<%=basePath%>">
<link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
<link type="text/css" href="front/css/main.css" rel="stylesheet"/>
<style type="text/css">
 	a{
 		text-decoration: none;
 	}
</style>

<script src="front/js/jquery-1.11.3.js" type="text/javascript"></script>
<script src="front/js/main.js" type="text/javascript"></script>
<script src="front/js/jquery.js"></script>
<script type="text/javascript" src="front/js/jwplayer.js"></script>
<script type="text/javascript" src="front/js/jquery.fancybox.js"></script>

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
		function goshopcar(){
			var car_count=$("#end i").html();
			if(car_count==0 || car_count==null){
				if(window.confirm('您的购物车中没有商品，去商城购物吧！')){
				location.href="front/shop.jsp";
				}

			}else{
							location.href="front/shopcar.jsp";
			}
		}
	
</script>

</head>

<body >
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
        		<a id="top_login" style="text-decoration: none; color:#ccc;">当前登录：${loginUsers.usersName }</a>
        		
        	</c:if>
        	<c:if test="${empty loginUsers }">
   				<a id="top_login" href="front/login.html" style="text-decoration: none; color:#ccc;">登录</a>
   			</c:if>
        </div><div class="line"></div>
        <div class="zc">
        	<c:if test="${not empty loginUsers }">
        		<a id="zhuxiao" href="javascript:loginOut()" style="text-decoration: none; color:#ccc;">退出</a>
        	</c:if>
        	<c:if test="${empty loginUsers }">
   				<a id="zhuxiao" href="front/login.html" style="text-decoration: none; color:#ccc;">注册</a>
   			</c:if>
        </div>
        <div class="shop_car"><a href="javascript:goshopcar()"><img src="front/images/shop_car.png"/><span id="end" style="color:#ccc;">购物车(<i>${sums }</i>)</span></a></div>
</div>

<%@include file="top1.jsp" %>
<div id="home">
	<div class="home_top">
        <div class="left_pro_list">
            <ul>	
                <li style="margin-top:20px;" class="item1"><a>手机 平板 电话卡<span>></span></a></li>
                	<div class="list-show-hidden1">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/minote.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米Note</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/mi4.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米手机4</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/mi4c.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米手机4c</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/note2.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>红米Note2</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/note.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>红米Note 电信版</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/hongmi2.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>红米手机2</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                        </div>
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/hongmi2a.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>红米手机2A</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/mipad.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米平板</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/telcom.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>电信版</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/heyue.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>合约机</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/zhongxin.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>中信特权</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/compare.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>对比手机</span></a>
                                </div>
                                <div class="xuangou">&nbsp;&nbsp;选购</div>
                            </div>
                        </div>
                    </div>
                	
                    
                    
                <li class="item2"><a>电视 盒子<span>></span></a></li>
                	<div class="list-show-hidden2">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tv40.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米电视 40英寸</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tv48.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米电视 48英寸</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tv49.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米电视 49英寸</span></a>
                                </div>                              
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tv3-55.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米电视 55英寸</span></a>
                                </div>     
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tv60.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米电视 60英寸</span></a>
                                </div>                               
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/hezis.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米盒子3</span></a>
                                </div>
                            </div>
                        </div>
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/hezimini.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米盒子mini</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tvzj.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米电视主机</span></a>
                                </div>                               
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/diyinpao.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米低音炮</span></a>
                                </div>                             
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/shb.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>蓝牙手柄</span></a>
                                </div>                              
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/dianshipeijian.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>电视盒子配件</span></a>
                                </div> 
                            </div>                            
                        </div>
                    </div>
                
                
                <li class="item3"><a>路由器 智能硬件<span>></span></a></li>
                	<div class="list-show-hidden3">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/miwifi.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>路由器</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/scooter.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>九号平衡车</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/shouhuan.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>手环及配件</span></a>
                                </div>                              
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/scale.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>体重秤</span></a>
                                </div>     
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/ihealthbluetooth.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>血压计</span></a>
                                </div>                               
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/zhinengtaozhuang.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>智能家庭套装</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <li class="item4"><a>移动电源 插线板<span>></span></a></li>
                	<div class="list-show-hidden4">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/dianyuan.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米移动电源</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/yidongdianyuan.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>品牌移动电源</span></a>
                                </div>                               
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/powerscript.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米插线板</span></a>
                                </div>                             
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/dianyuanfujian.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>移动电源附件</span></a>
                                </div>                              
                            </div>                        
                        </div>
                    </div>
                <li class="item5"><a>耳机 音箱<span>></span></a></li>
                	<div class="list-show-hidden5">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/headphone.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米头戴式耳机</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/quantie.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米铁圈耳机</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/huosai.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米活塞耳机 标准版</span></a>
                                </div>                              
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/xuancai.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米活塞耳机 炫彩版</span></a>
                                </div>     
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/bluetoothheadset.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米蓝牙耳机</span></a>
                                </div>                               
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/erji.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>品牌耳机</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <li class="item6"><a>电池 存储卡<span>></span></a></li>
                	<div class="list-show-hidden6">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/rainbow80.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>彩虹5号电池</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/chongdian.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>充电器</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/xiancai.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>线材</span></a>
                                </div>                              
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/cunchu.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>存储卡</span></a>
                                </div>     
                            </div>
                        </div>
                    </div>
                <li class="item7"><a>保护套 后盖<span>></span></a></li>
                	<div class="list-show-hidden7">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/hougai.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>后盖</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/baohu.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>保护套/保护壳</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <li class="item8"><a>贴膜 其他配件<span>></span></a></li>
                	<div class="list-show-hidden8">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/zhijia.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>手机支架</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/zipaigan.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>自拍杆</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tiemo.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>贴膜</span></a>
                                </div>                              
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/tizhi.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>贴纸</span></a>
                                </div>     
                            </div>
                        </div>
                    </div>
                <li class="item9"><a>米兔 服装<span>></span></a></li>
                	<div class="list-show-hidden9">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/mitu.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>米兔</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/fuzhuang.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>服装</span></a>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                <li class="item10"><a>箱包 其他周边<span>></span></a></li>
                	<div class="list-show-hidden10">
                    	<div class="children-list">
                        	<div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/wan.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>酷玩产品</span></a>
                                </div>
                            </div>
                            <div class="lists">
                            	<div class="imgAndtitle">
                                	<a class="imgAndtitle-img"><img src="front/images/shubiaodian.jpg"/></a>
                                    <a class="imgAndtitle-title"><span>小米鼠标垫</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
            </ul>	
        </div>
        
        <div class="pro_bigimg">
            <ul>
                <li ><img style="display:block;" id="bigimg1" class="1" src="front/images/show1.jpg"/></li>
                <li ><img style="display:none;"  id="bigimg2" class="2" src="front/images/show2.jpg"/></li>
                <li ><img style="display:none;"  id="bigimg3" class="3" src="front/images/show3.jpg"/></li>
                <li ><img style="display:none;"  id="bigimg4" class="4" src="front/images/show4.jpg"/></li>
                <li ><img style="display:none;"  id="bigimg5" class="5" src="front/images/show5.jpg"/></li>
            </ul>
       </div>
        
       <div class="ui-controls-direction">
		   <a onClick="prevImg()" class="ui-prev"><</a><!--上一张-->
		   <a onClick="nextImg()" class="ui-next">></a><!--下一张-->
		</div>
    
        <div class="ui-pager">
          	<div class="ui-pager-span"><a><span id="1" class="span" style="background:#FFF;">1</span></a></div> 	             
            <div class="ui-pager-span"><a><span id="2" class="span">2</span></a></div>
            <div class="ui-pager-span"><a><span id="3" class="span">3</span></a></div>              
            <div class="ui-pager-span"><a><span id="4" class="span">4</span></a></div>             
            <div class="ui-pager-span"><a><span id="5" class="span">5</span></a></div>            
		</div>   
    </div>
        

       
    <div class="home_middle">
        <div class="method">
        <img src="front/images/ddd.png"/>	
        </div>
        <div class="pro1">
        <img src="front/images/p1.jpg"/>
        </div>
        <div class="pro2">
        <img src="front/images/p2.jpg"/>	
        </div>
        <div class="pro3">
        <img src="front/images/p3.jpg"/>
        </div>
    </div>
    
    <div class="home_floor">
        <p class="title_dp">小米明星单品</p>
        <div class="dp_changepage"><span class="prev_page"><</span><span class="next_page"> > </span></div>
        <div class="xmdp">
           <ul>
                <li class="dp1">
                    <img src="front/images/dp1.jpg"/>
                    <p class="name"><span>小米平板</span></p>
                    <p class="feature"><span>搭载NVIDIA Tegra K1平板</span></p>
                    <p class="price"><span>999元起</span></p>
                </li>
                <li class="dp2">
                    <img src="front/images/dp2.jpg"/>
                    <p class="name"><span>小米电视2S 48英寸影院版</span></p>
                    <p class="feature"><span>4K无损画质 薄至9.9mm</span></p>
                    <p class="price"><span>3999元</span></p>
                </li>
                <li class="dp3">
                    <img src="front/images/dp3.jpg" />
                    <p class="name"><span>小米盒子mini版(礼品装)</span></p>
                    <p class="feature"><span>10亿美金影视库 内容新增83%</span></p>
                    <p class="price"><span>199元</span></p>
                </li>
                <li class="dp4">
                    <img src="front/images/dp4.jpg"/>
                    <p class="name"><span>小米Note 女神版</span></p>
                    <p class="feature"><span>科技与时尚的理想结合</span></p>
                    <p class="price"><span>1799元起</span></p>
                </li>
                <li class="dp5">
                    <img src="front/images/dp5.jpg"/>
                    <p class="name"><span>小米蓝牙耳机</span></p>
                    <p class="feature"><span>2015德国IF大奖，高清通话音质</span></p>
                    <p class="price"><span>79元</span></p>
                </li>
                
                <li class="dp6">
                    <img src="front/images/dp6.jpg"/>
                    <p class="name"><span>全新小米路由器</span></p>
                    <p class="feature"><span>高配版路由器，企业级性能</span></p>
                    <p class="price"><span>699元起</span></p>
                </li>
                <li class="dp7">
                    <img src="front/images/dp7.jpg"/>
                    <p class="name"><span>小米净水器</span></p>
                    <p class="feature"><span>400加仑大流量</span></p>
                    <p class="price"><span>1299元</span></p>
                </li>
    
                <li class="dp8">
                    <img src="front/images/dp8.jpg"/>
                    <p class="name"><span>小米手环</span></p>
                    <p class="feature"><span>美国ADI传感器，30天超长续航</span></p>
                    <p class="price"><span>69元</span></p>
                </li>
                <li class="dp9">
                    <img src="front/images/dp9.jpg"/>
                    <p class="name"><span>小米路由器 mini</span></p>
                    <p class="feature"><span>主流双频AC智能路由器</span></p>
                    <p class="price"><span>129元</span></p>
                </li>
                <li class="dp10">
                    <img src="front/images/dp10.jpg"/>
                    <p class="name"><span>小米移动电源10000mAh</span></p>
                    <p class="feature"><span>高密度进口电芯，仅名片大小</span></p>
                    <p class="price"><span>69元起</span></p>
                </li>
           	</ul>
        </div>
     </div>
</div>

<script type="text/javascript">


</script>
<div class="main">
	<div class="main_znyj">
        <div class="titleznyj">
        <p><span class="video_title">智能硬件</span></p>
        <!--
        	作者：offline
        	时间：2016-01-12
        	描述：
        <div class="lookall"><a class="video_lookall">查看全部&nbsp;</a><a class="znyj-icon">></a></div>-->
        </div>
        
        <div class="znyj_show">
            <div class="znyj_main">
            <img src="front/images/znyj.jpg"/>
            </div>
            <div class="znyj1">
            <img src="front/images/znyj1.jpg"/>
            <p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
           
            
            </div>
            <div class="znyj2">
            <img src="front/images/znyj2.jpg"/>
           <p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
            </div>
            <div class="znyj3">
            <img src="front/images/znyj3.jpg"/>
            <p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
            </div>
            <div class="znyj4">
            <img src="front/images/znyj4.jpg"/>
            <p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
            </div>
            <div class="znyj5">
            <img src="front/images/znyj5.jpg"/>
           	<p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
            </div>
            <div class="znyj6">
            <img src="front/images/znyj6.jpg"/>
            <p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
            </div>
            <div class="znyj7">
            <img src="front/images/znyj7.jpg"/>
            <p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
            </div>
            <div class="znyj8">
            <img src="front/images/znyj8.jpg"/>
            <p class="znyj_name"><span>小米移动电源10000mAh</span></p>
            <p class="znyj_feature"><span>高密度进口电芯，仅名片大小</span></p>
            <p class="znyj_price"><span>69元起</span></p>
            </div>
        </div>
	</div>
    
    <div class="main_dap">
    	<div class="title_dap">
        	<div class="title_dap_1">搭配</div>
            <div class="title_dap_2"><span>热门</span></div>
            <div class="title_dap_3"><span>耳机音箱</span></div>
            <div class="title_dap_4"><span>电源</span></div>
            <div class="title_dap_5"><span>电池存储卡</span></div>
        </div>
        <!--热门默认开始显示-->
        <div class="dap_show_hot">
            <div class="dap_main1">
            	<img src="front/images/dap.jpg"/>
            </div>
            
            <div class="dap1">
                <a><img src="front/images/dap1-csdc.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>彩色五号电池(10个装)</span></p>
                <p class="dap_price"><span>69元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap1-hidden">
                	<a><p class="dap-mark">日立麦克赛尔监制电池核心，电量持久，无汞无镉，安全环保。当你见到彩虹电池的第一眼,立刻就会爱上它！ </p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
 
            <div class="dap2">
                <a><img src="front/images/dap2-xmlyyx.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米蓝牙音箱</span></p>
                <p class="dap_price"><span>89元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap2-hidden">
                	<a><p class="dap-mark">全金属外壳，12小时播放，支持蓝牙免提通话，适用于，通用全部...</p>
                   <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap3">
                <a><img src="front/images/dap3-xgplyyx.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小钢炮蓝牙音箱</span></p>
                <p class="dap_price"><span>199元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap4">
                <a><img src="front/images/dap4.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米方盒音箱</span></p>
                <p class="dap_price"><span>89元起</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap_main2">
            <img src="front/images/tc.jpg"/>
            </div>
            
            <div class="dap5">
                <a><img src="front/images/tc1.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米移动电源10000mAh</span></p>
                <p class="dap_price"><span>99元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap6">
                <a><img src="front/images/tc2.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米蓝牙耳机 紫色</span></p>
                <p class="dap_price"><span>99元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                 <div class="dap6-hidden">
                	<a><p class="dap-mark">10000mAh小米移动电源引进新型电池科技，采用来自松下/LG 等供应商原装定制高密度电芯。可为3090mAh的小米Note顶配版提供约2.1次充电。</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap7">
                <a><img src="front/images/tc3.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米头戴式耳机</span></p>
                <p class="dap_price"><span>99元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap7-hidden">
                	<a><p class="dap-mark">50mm大尺寸金属振膜，手机直推高保真音质，荣获2015中国好设计奖金奖！</p>
                   <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap8">
            	<a><img src="front/images/tc4.jpg"/></a>
                <p class="name" style="margin-top:40px;">SanDisk 8GB存储卡</p>
                <p class="price">17.9元</p>
            </div>
            
            <div class="dap9">
 				<a><img src="front/images/seemore.png"/></a>      
            </div>
        </div>
        
       <!--耳机音箱隐藏显示的层-->  
        <div class="dap_show_ejyx" style="display:none;">
            <div class="dap_main1">
            	<img src="front/images/dap.jpg"/>
            </div>
            
            <div class="dap1">
                <a><img src="front/images/ejyx1.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>先锋CL31系列入耳式耳机</span></p>
                <p class="dap_price"><span>99元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap1-hidden">
                	<a><p class="dap-mark">三角型设计 ，mm驱动单元，低频稳定，杰出解析力，适用于小米平板1, 所有小米手机</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
 
            <div class="dap2">
                <a><img src="front/images/ejyx2.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米活塞耳机标准版</span></p>
                <p class="dap_price"><span>69元 </span><del> 99元</del></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap2-hidden">
                	<a><p class="dap-mark">工业设计荣获德国2015红点奖，音质优化专利，金属复合振膜技术，礼品级包装</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap3">
                <a><img src="front/images/ejyx3.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米蓝牙耳机</span></p>
                <p class="dap_price"><span>79元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap4">
                <a><img src="front/images/ejyx4.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米活塞耳机 炫彩版</span></p>
                <p class="dap_price"><span>29元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap_main2">
            <img src="front/images/tc.jpg"/>
            </div>
            
            <div class="dap5">
                <a><img src="front/images/ejyx5.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>QCY 杰克JO2蓝牙耳机</span></p>
                <p class="dap_price"><span>69.9元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap6">
                <a><img src="front/images/ejyx6.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小钢炮蓝牙音箱</span></p>
                <p class="dap_price"><span>99元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                 <div class="dap6-hidden">
                	<a><p class="dap-mark">全金属外壳，12小时播放，支持蓝牙免提通话，适用于所以小米手机，通用全部</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap7">
                <a><img src="front/images/ejyx7.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米方盒子蓝牙音箱</span></p>
                <p class="dap_price"><span>99元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap7-hidden">
                	<a><p class="dap-mark">小米方盒子蓝牙音箱，新增星空黑款，个性更添，惊艳不变。</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap8">
            	<a><img src="front/images/ejyx8.jpg"/></a>
                <p class="name" style="margin-top:40px;">铁三角耳机 </p>
                <p class="price">118元</p>
            </div>
            
            <div class="dap9">
 				<a><img src="front/images/seemore_ejyx.png"/></a>      
            </div>
        </div>
        
        
        
        <!--电源隐藏显示的层-->  
        <div class="dap_show_dy" style="display:none;">
            <div class="dap_main1">
            	<img src="front/images/dap.jpg"/>
            </div>
            
            <div class="dap1">
                <a><img src="front/images/dy1.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米移动电源10000mAh</span></p>
                <p class="dap_price"><span>69元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap1-hidden">
                	<a><p class="dap-mark">松下/LG高密度进口电芯10000mAh 大电量，仅名片大小</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
 
            <div class="dap2">
                <a><img src="front/images/dy2.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米移动电源16000mAh</span></p>
                <p class="dap_price"><span>129元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap2-hidden">
                	<a><p class="dap-mark">16000mAh 超大电量为你的手机、平板、数码相机提供超乎想象的续航时间。可为小米手机 4（3080mAh）提供约 3.5 次充电。</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap3">
                <a><img src="front/images/dy3.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米移动电源5000mAh</span></p>
                <p class="dap_price"><span>49元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap4">
                <a><img src="front/images/dy4.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>ZMI移动电源10000mAh</span></p>
                <p class="dap_price"><span>99元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap_main2">
            <img src="front/images/tc.jpg"/>
            </div>
            
            <div class="dap5">
                <a><img src="front/images/dy5.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>ZMI随身路由器</span></p>
                <p class="dap_price"><span>299元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap6">
                <a><img src="front/images/dy6.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米插线板</span></p>
                <p class="dap_price"><span>49元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                 <div class="dap6-hidden">
                	<a><p class="dap-mark">插线板中的艺术品3个USB充电口，支持2A快充，3重安全保护 </p>
                   <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap7">
                <a><img src="front/images/dy7.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米插线板 5孔位</span></p>
                <p class="dap_price"><span>39元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap7-hidden">
                	<a><p class="dap-mark">插线板中的的艺术品 安全可靠，过载断电保护，独立安全门，750℃高温阻燃</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap8">
            	<a><img src="front/images/dy8.jpg"/></a>
                <p class="name" style="margin-top:40px;">电源适配器</p>
                <p class="price">19.9元</p>
            </div>
            
            <div class="dap9">
 				<a><img src="front/images/seemore_dy.png"/></a>      
            </div>
        </div>
        
        <!--电池存储卡隐藏显示的层-->  
        <div class="dap_show_dccck" style="display:none;">
            <div class="dap_main1">
            	<img src="front/images/dap.jpg"/>
            </div>
            
            <div class="dap1">
                <a><img src="front/images/dccck1.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>CR2032纽扣电池</span></p>
                <p class="dap_price"><span>9元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap1-hidden">
                	<a><p class="dap-mark">小米遥控器配件，工业级产品，性能更稳当</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
 
            <div class="dap2">
                <a><img src="front/images/dccck2.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米插线板 5孔位</span></p>
                <p class="dap_price"><span>39元</span></p>
               <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap2-hidden">
                	<a><p class="dap-mark">插线板中的的艺术品 安全可靠，过载断电保护，独立安全门，750℃高温阻燃</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap3">
                <a><img src="front/images/dccck3.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>彩色五号电池(10个装)</span></p>
                <p class="dap_price"><span>9.9元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap4">
                <a><img src="front/images/dccck4.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>32GB高速存储卡(TF Class10)</span></p>
                <p class="dap_price"><span>69元 </span><del> 99元</del></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap_main2">
            <img src="front/images/tc.jpg"/>
            </div>
            
            <div class="dap5">
                <a><img src="front/images/dccck5.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>小米随声WIFI U盘版</span></p>
                <p class="dap_price"><span>49.9元</span></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
            </div>
            
            <div class="dap6">
                <a><img src="front/images/dccck6.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>SanDisk 8GB存储卡</span></p>
                <p class="dap_price"><span>17.9元 </span><del> 24.9元</del></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                 <div class="dap6-hidden">
                	<a><p class="dap-mark">小米官网质量保证，适用于红米手机2/2A，小米平板1，红米1S/红米，红米Note2,，红Note/增强版</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap7">
                <a><img src="front/images/dccck7.jpg" width="150px" height="150px"/></a>
                <p class="dap_name"><span>东芝存储卡Class10 16GB</span></p>
                <p class="dap_price"><span>39.9元</span><del> 44.9元</del></p>
                <!--<p class="dap_rank"><span>100人评价</span></p>-->
                <div class="dap7-hidden">
                	<a><p class="dap-mark">高达40MB/S的传输速度，手机/平板应用程序秒开，无间断存储1080P全高清视频</p>
                    <!--<p class="dap-author">来自<span> 某某 </span>的评论</p></a>-->
                </div>
            </div>
            
            <div class="dap8">
            	<a><img src="front/images/dccck8.jpg"/></a>
                <p class="name" style="margin-top:40px;">120cm扁线</p>
                <p class="price">19元</p>
            </div>
            
            <div class="dap9">
 				<a><img src="front/images/seemore_dccck.png"/></a>      
            </div>
        </div>
        
    </div>
    
    
    <div class="rpcp">
        <p class="rpcp_title">热销产品</p>
        <div class="rpcp_1">
        <img src="front/images/rpcp1.jpg"/>
        <p class="rpcp_rank">兼容市面主流第三方路由器，小巧轻便，配对简单，随身安装</p>
        <p class="rpcp_author">已售&nbsp;&nbsp;<span>125</span>&nbsp;&nbsp; 件</p>
        <p class="rpcp_name"><a>小米WiFi放大器&nbsp;&nbsp;</a><span class="rpcp_line">|</span><span class="rpcp_price">&nbsp;&nbsp;19.9元</span></p>
        </div>
        
        <div class="rpcp_2">
        <img src="front/images/rpcp2.jpg"/>
        <p class="rpcp_rank"><a>回归经典外观，圆形小钢炮造型，轻巧便携、简约讨巧！全铝合金金属机身外壳，彰显品质感。</a></p>
        <p class="rpcp_author">已售&nbsp;&nbsp;<span>125</span>&nbsp;&nbsp; 件 </p>
        <p class="rpcp_name"><a>小钢炮蓝牙音箱&nbsp;&nbsp;</a><span class="rpcp_line">|</span><span class="rpcp_price">&nbsp;&nbsp;79元</span></p>
        </div>
        
        <div class="rpcp_3">
        <img src="front/images/rpcp3.jpg"/>
        <p class="rpcp_rank"><a>创新后音腔“螺旋气管”设计。全面优化中、低频表现力。软件腔体测算、振膜动态监测、音质数据分析、主观试听</a></p>
        <p class="rpcp_author">已售&nbsp;&nbsp;<span>125</span>&nbsp;&nbsp; 件 </p>
        <p class="rpcp_name"><a>小米活塞耳机WIFI&nbsp;&nbsp;</a><span class="rpcp_line">|</span><span class="rpcp_price">&nbsp;&nbsp;69元</span></p>
        </div>
        
        <div class="rpcp_4">
        <img src="front/images/rpcp4.jpg"/>
        <p class="rpcp_rank"><a>两倍视野，震撼美景一张就尽收眼底。155°超大广角镜头，画质清晰艳丽</a></p>
        <p class="rpcp_author">已售&nbsp;&nbsp;<span>125</span>&nbsp;&nbsp; 件 </p>
        <p class="rpcp_name"><a>小米运动相机&nbsp;&nbsp;</a><span class="rpcp_line">|</span><span class="rpcp_price">&nbsp;&nbsp;399元</span></p>
        </div>       
     </div>
    
    
     <div class="video_main">
     <p class="video_title">视频</p>
     
     	<div class="video_1">
 			<div class="video" id="video1"><img src="front/images/video1.png"/></div>
			<p class="video_name">小米空气净化器，赶走冬日雾霾</p>
            <p class="video_job">双风机，净化能力高达406m³/h</p>
        </div>
        <div class="video_2">
            <div class="video" id="video2"><img src="front/images/video2.png"/></div>
            <p class="video_name">小米空气净化器，赶走冬日雾霾</p>
            <p class="video_job">双风机，净化能力高达406m³/h</p>
        </div>
        <div class="video_3">
            <div class="video" id="video3"><img src="front/images/video3.png"/></div>
            <p class="video_name">小米空气净化器，赶走冬日雾霾</p>
            <p class="video_job">双风机，净化能力高达406m³/h</p>
        </div>
        <div class="video_4">
            <div class="video" id="video4"><img src="front/images/video4.png"/></div>
            <p class="video_name">小米空气净化器，赶走冬日雾霾</p>
            <p class="video_job">双风机，净化能力高达406m³/h</p>
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
        	<div class="footer_log"><img src="front/images/log1.png"/></div>
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

</body>
</html>
