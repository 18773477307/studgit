<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>小米在线服务支持--小米官网</title>
	<link rel="stylesheet" type="text/css" href="front/css/Service.css">
	<script type="text/javascript" src="front/js/Service.js"></script>
	<script type="text/javascript" src="front/js/jquery-1.11.3.js"></script>
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
        <div class="shop_car"><img src="front/images/buy.png" class="img"/><span class="span">购物车（0）</span></div>
    </div>
    <div class="menu">
    	<div class="logo"><img src="front/images/logo.png"/></div>
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
            	<img src="front/images/search.png" class="search_img"/>
            </form>
        </div>
    </div>
    <div class="menu_title">
    	<a class="title_link">首页</a>
        <span class="title_link">&nbsp;>&nbsp;</span>
        <a class="title_link">服务支持</a>
    </div>
    <div class="product_img">
    	<a class="Left_Div"><</a>
        <a class="Right_Div">></a>
    	<a href=""><img src="front/images/1.jpg" id="ad1" class="pro_img"/></a>
        <a href=""><img src="front/images/2.jpg" id="ad2" class="pro_img"/></a>
        <a href=""><img src="front/images/3.jpg" id="ad3" class="pro_img"/></a>
    </div>
    
    <script>
		$(".product_img").mouseover(function(){
			$(".Left_Div").css("display","block");
			$(".Right_Div").css("display","block");
		});
		$(".product_img").mouseout(function(){
			$(".Left_Div").css("display","none");
			$(".Right_Div").css("display","none");
		});
    	var nowForm=1; //轮播显示图片的第一张
		var maxForm=3; //轮播显示图片的最大张数
		function adv(){
			for(var i=1;i<=maxForm;i++){
				if(i==nowForm){
					document.getElementById('ad'+nowForm).style.display='block';		
				}else{
					document.getElementById('ad'+i).style.display='none';		
				}
			}	
				
			if(nowForm==maxForm){
				nowForm=1;	
			}else{
				nowForm=nowForm+1;	
			}
				
			setTimeout('adv()',5000);
		}
			
		window.onload=adv();
    </script>
    
    <div class="product_issue">
    	<span class="issue_title">您的哪款商品遇到了问题？</span>
        <ul class="issue_kinds">
        	<li class="phone">
            	<a href="#">
                    <img src="front/images/que_1.jpg" class="que_img"/>
                    <span class="que_info">小米手机/红米手机</span>
                </a>
            </li>
            <li class="line1"></li>
            <li class="box">
            	<a href="#">
                    <img src="front/images/que_2.jpg" class="que_img1"/>
                    <span class="que_info1">小米盒子</span>
                </a>
            </li>
            <li class="line1"></li>
            <li class="TV">
            	<a href="#">
                    <img src="front/images/que_3.jpg" class="que_img2"/>
                    <span class="que_info1">小米电视</span>
                </a>
            </li>
            <li class="line1"></li>
            <li class="parts">
            	<a href="#">
                    <img src="front/images/que_4.jpg" class="que_img3"/>
                    <span class="que_info2">其他配件类</span>
                </a>
            </li>
        </li>
    </div>
    <div class="common_issue">
    	<span class="issue_title">常见问题</span>
        <table>
        	<tr>
            	<td>
                	<a href="#">
                        <p><img src="front/images/pic_1.png" class="td_img"	/></p>
                        <span class="span_info">资源下载</span>
                    </a>
                </td>
                <td>
                	<a href="#">
                        <p><img src="front/images/pic_2.png" class="td_img" /></p>
                        <span class="span_info">售后服务</span>
                    </a>
                </td>
                <td>
                	<a href="#">
                        <p><img src="front/images/pic_3.png" class="td_img" /></p>
                        <span class="span_info1">账号密码管理</span>
                    </a>
                </td>
                <td>
                	<a href="#">
                        <p><img src="front/images/pic_4.png" class="td_img" /></p>
                        <span class="span_info2">小米VIP认证</span>
                    </a>
                </td>
            </tr>
            <tr>
            	<td>
                	<a href="#">
                        <p><img src="front/images/pic_5.png" class="td_img"	/></p>
                        <span class="span_info3">预约小米之家面对面服务</span>
                    </a>
                </td>
                <td>
                	<a href="#">
                        <p><img src="front/images/pic_6.png" class="td_img" /></p>
                        <span class="span_info">查询物流</span>
                    </a>
                </td>
                <td>
                	<a href="#">
                        <p><img src="front/images/pic_7.png" class="td_img" /></p>
                        <span class="span_info1">商品防伪查询</span>
                    </a>
                </td>
                <td onMouseOver="change_value()" onMouseOut="back_value()">
                	<input type="text" name="issue_search" class="issue_search" value="请输入您需要提问的问题" id="issue_search" onClick="border_change()" onFocus="change_value()"/>
                    <img src="front/images/pic_10.png" class="issue_search_img" id="issue_search_img" />
                </td>
            </tr>
        </table>
        
        <script>
			var info=document.getElementById('issue_search');
        	function change_value(){
				if(info.value=="请输入您需要提问的问题"){
					info.value="";
				}
				document.getElementById('issue_search_img').src='front/images/pic_9.png';
			}
			function back_value(){
				console.info(info.value);
				if(info.value==""){
					info.value="请输入您需要提问的问题";
				}
				document.getElementById('issue_search_img').src="front/images/pic_10.png";
			}
			function border_change(){
				document.getElementById('issue_search').style.cssText="border:5px solid #E0E0E0"
			}
			function border_change(){
				document.getElementById('issue_search').style.cssText="border:1px solid #E0E0E0"
			}
        </script>
        
    </div>
    <div class="serve">
    	<span class="issue_title">您需要什么样的服务</span>
        <div class="more"></div>
        <ul class="information">
        	<li>
            	<ul class="popular_issue">
                    <li class="title">热门问题</li>
                    <li class="little_title"><a href="#">11月3日开放购买</a></li>
            	</ul>
            </li>
            <li class="line2"></li>
            <li>
            	<ul class="popular_issue">
                    <li class="title">如何在小米网购物</li>
                    <li class="little_title"><a href="#">了解购物流程</a></li>
            	</ul>
            </li>
            <li class="line2"></li>
            <li>
            	<ul class="popular_issue">
                    <li class="title">快递物流服务</li>
                    <li class="little_title"><a href="#">查询物流信息</a></li>
            	</ul>
            </li>
            <li class="line2"></li>
            <li>
            	<ul class="popular_issue">
                    <li class="title">实体店面对面服务</li>
                    <li class="little_title"><a href="#">预约小米之家门店服务</a></li>
            	</ul>
            </li>
            <li class="line2"></li>
            <li>
            	<ul class="popular_issue">
                    <li class="title">售后服务申请</li>
                    <li class="little_title"><a href="#">7天无理由退货</a></li>
            	</ul>
            </li>
            <li class="line2"></li>
            <li>
            	<ul class="popular_issue">
                    <li class="title">小米特色服务</li>
                    <li class="little_title"><a href="#">建议留言</a></li>
            	</ul>
            </li>
        </ul>
    </div>
    <div class="online_service">
    	<a href="#">
            <div class="person" onMouseOver="show(1)" onMouseOut="recover(1)">
                <img src="front/images/cust_1.jpg" class="person_img" />
                <div class="person_info" id="person_info1">
                    <strong class="span_title">咨询在线客服</strong>
                    <span class="info">7×24小时为您解决问题</span>
                </div>
            </div>
        </a>
        
        <a href="#">
            <div class="person1" onMouseOver="show(2)" onMouseOut="recover(2)">
                <img src="front/images/cust_2.jpg" class="person_img" />
                <div class="person_info" id="person_info2">
                    <strong class="span_title">致电客服专家</strong>
                    <span class="info1">400-100-5678 每天8:00-18:00</span>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="person1" onMouseOver="show(3)" onMouseOut="recover(3)">
                <img src="front/images/cust_3.jpg" class="person_img" />
                <div class="person_info" id="person_info3">
                    <strong class="span_title1">身边的小米之家</strong>
                    <span class="info1">有困难没关系，这里有你的朋友</span>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="person1" onMouseOver="show(4)" onMouseOut="recover(4)">
                <img src="front/images/cust_4.jpg" class="person_img" />
                <div class="person_info" id="person_info4">
                    <strong class="span_title2">官方授权维修网点</strong>
                    <span class="info2">520家网点让服务随时在身边</span>
                </div>
            </div>
        </a>
    </div>
       <div class="footer">

        <div class="footer_1">
        <ul>
            <li><img src="front/images/repair.png">一小时快修服务</li>
            <li><img src="front/images/7days.png"><span>七天无理由退货</span></li>
            <li><img src="front/images/15days1.png"><span>15天免费换货</span></li>
            <li><img src="front/images/包邮.png"><span>满150元包邮</span></li>
            <li style="border:none;"><img src="front/images/售后.png"><span>520余家售后网点</span></li>
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
