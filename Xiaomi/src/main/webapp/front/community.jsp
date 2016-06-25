<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
  	<title>小米社区</title>
	<link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
	<link href="front/css/sq.index.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="front/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="front/js/Community.js"></script>
	<script>
		$(".fb1").mouseover(function(){
		$(".pakuai").css('display','block');
		$(".babao").css('display','none');
		});
		$(".fb2").mouseover(function(){
			$(".pakuai").css('display','none');
			$(".babao").css('display','block');
		});
	</script>
	
	<script>
	 function loginOut(){
			if(window.confirm('您确定要注销登录吗？')){
				$.post("front/user_usersOut.action",function(data){
				console.info(data);
					if(parseInt($.trim(data.total))==1){
						var str='<li><a href="front/login.html?community">登录&nbsp;</a></li>';
						str+='<li class="login_last"><a href="front/login.html">注册</a></li>';
						$(".login_user ul").html(str);	
					}
				});
			}
		} 

</script>
  </head>
  
 <body>
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
		        		<li class="login_last"><a href="front/login.html">注册</a></li>
		   				<li><a href="front/login.html?community">&nbsp;登录</a></li>
		   			</c:if>
		   		</ul>
           </div>
       </div>
</div>
<div class="main">
	<div class="slider_box">
        <ul class="xm_slider_photo">
			<c:forEach items="${indexarticle}" var="item"> 
            	<c:if test="${item.artWeight eq '1' }">
            		<li><a href="front/article_ArticleByInfo.action?artId=${item.artId }" target="_blank" title="${item.artTitle }"><img src="../uploadpic/${item.artPic }"/></a></li>
            	</c:if>
            </c:forEach>
        </ul>
        <div class="controls_direction">
            <a class="prev"> < </a>
            <a class="next"> > </a>
        </div>
        <div class="xm_slider_page">
            <ul>
                <li class="page_over">1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
            </ul>
         </div>
    </div>
    <div class="content">
    	<div class="left_box">
        	<div class="topLine">
				<div class="toptitle">
					<p><a>小米新品手机开启淘宝众筹 说出你的猜想赢取新品手机 F码</a></p>
				</div>
                <div class="topphoto">
                	<img src="front/images/topphoto.png">
                </div>
				<div class="topcontent">
					<a>小米Note</a>
					| 2015年11月06日
                    <span>
                        <em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">1457</em>
                        <a class="share"><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>	
                    </span>
					<p class="topcontent_xia">小米双11第四波福利来袭，参与小米下一款手机全民众筹，50张发布会门票免费送！11月11日0点起，前往小米天猫旗舰店，支付1000元众筹款，产品发布后多退少补。并且我们将会在40天内发货，每人限购一台。
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a>全文》</a>
					</p>
				</div>
			</div>
            <div class="subTopLine">
            	<ul>
            	<li>
					<a>
					<img width="145" height="85" title="年度旗舰小米圈铁耳机0元试用 抢楼送10个" alt="年度旗舰小米圈铁耳机0元试用 抢楼送10个"src="front/images/main_subTopLine1.jpg">
					</a>
					<p><a>年度旗舰小米圈铁耳机0元试用 抢楼送10个</a></p>
					<span>
						<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">24612</em>
						<a class="share" title="分享到新浪微博"><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
					</span>
				</li>
                <li>
					<a>
						<img width="145" height="85" title="小米双11 净水器全国配送已达19省市" alt="小米双11 净水器全国配送已达19省市" src="front/images/main_subTopLine2.jpg">
					</a>
					<p><a>小米双11 净水器全国配送已达19省市</a></p>
					<span>
						<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">2621</em>
						<a class="share" title="分享到新浪微博" ><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
					</span>
				</li>
				<li>
					<a>
						<img width="145" height="85" title="米粉双11欲望清单 晒欲望清单赢丰厚大奖" alt="米粉双11欲望清单 晒欲望清单赢丰厚大奖" src="front/images/main_subTopLine3.jpg">
					</a>
					<p><a>米粉双11欲望清单 晒欲望清单赢丰厚大奖</a></p>
					<span>
						<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">4565</em>
						<a class="share" title="分享到新浪微博" ><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
					</span>
				</li>
				<li>
					<a>
						<img width="145" height="85" title="小米爆米花上海站 报名开始 收官狂欢趴" alt="小米爆米花上海站 报名开始 收官狂欢趴" src="front/images/main_subTopLine4.jpg">
					</a>
					<p><a>小米爆米花上海站 报名开始 收官狂欢趴</a></p>
					<span>
						<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">7108</em>
						<a class="share" title="分享到新浪微博"><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
					</span>
				</li>
            	</ul>
            </div>
            <div class="news">
            	<div class="news1 xmnews">
                	<ul>
                    	<li>
                        	<h2><a  href="front/xiangqing.jsp">了解心率监测吗？小米手环光感版新增功能心率监测介绍篇 </a></h2>
                            <span>
                                <em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">5129</em>
                                <a><img src="front/iconfont-photo/iconfont-dianping.svg">49</a>
                                <a class="share" title="分享到新浪微博" ><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
                            </span>
                            <a>小米手环</a>
                            | 2015年11月04日
							<a><img width="605" height="220" title="了解心率监测吗？小米手环光感版新增功能心率监测介绍篇 " alt="了解心率监测吗？小米手环光感版新增功能心率监测介绍篇 " src="front/images/main_news1.png">
							</a>
							<p>
小米手环光感版在整体功能上与小米手环一代相同：运动计步、睡眠监测、智能闹钟、来电提醒，配合小米运动后的跑步功能，跳绳、仰卧起坐等运动监测；IP67防护等级，30天超长续航。本帖将主要为大家详细介绍其新增功能：心率监测。　
							<a>全文》</a>
							</p>
						</li>
                    </ul>
                </div>
                <div class="news2 xmnews">
                	<ul>
                    	<li>
                 			<h2><a  href="front/xiangqing.jsp"> 小米手环光感版小米手环1代对比图赏 </a></h2>                           
							<span>
                            	<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">5079</em>
                                <a><img src="front/iconfont-photo/iconfont-dianping.svg">91</a>
                                <a class="share" title="分享到新浪微博" ><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
                            </span>
                            <a>小米手环</a>
							| 2015年11月07日
							<a><img width="605" height="220" title=" 小米手环光感版&小米手环1代对比图赏 " alt=" 小米手环光感版&小米手环1代对比图赏 " src="front/images/main_news2.png">
							</a>
							<p>
全新小米手环光感版除对前作已有特性全面升级以外，更新增了心率监测功能，实时心率的监测，对于判断有氧 无氧运动 来说是最关键的指标，特别是对于以减脂为目的有氧运动，非常需要保持自己稳定的心率。无论是跑步爱好者，还是为了减肥刚入门的新手，都能满足你的需求。
							<a>全文》</a>
							</p>
						</li>
                    </ul>
                </div>
                <div class="news3 xmnews">
                	<ul>
                    	<li>
							<h2><a href="front/xiangqing.jsp"> 小米应用商店双11送福利 快人一步赢取小米Note顶配版</a></h2>
							<span>
                            	<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">2201</em>
                                <a><img src="front/iconfont-photo/iconfont-dianping.svg">394</a>
                                <a class="share" title="分享到新浪微博" ><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
							</span>
                            <a>小米资讯</a>
								| 2015年11月07日
							<a><img width="605" height="220" title=" 小米应用商店双11送福利 快人一步赢取小米Note顶配版" alt=" 小米应用商店双11送福利 快人一步赢取小米Note顶配版" src="front/images/main_news3.png">
							</a>
							<p>小米商店从2013年上线以来以推荐精品，高质量应用为标准为各位米粉服务，发展至今离不开各位米粉与开发者支持。为答谢各位，小米应用商店携百万应用为各位米粉带来重磅福利“快人一步，大战11.11”。
								<a>全文》</a>
							</p>
						</li>
                    </ul>
                </div>
                <div class="news4 xmnews">
                	<ul>
                        <li>
                            <h2><a href="front/xiangqing.jsp">11月6日年度旗舰小米圈铁耳机0元试用 抢楼送10个</a></h2>
                            <span>
                            	<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">7845</em>
                                <a><img src="front/iconfont-photo/iconfont-dianping.svg">2255</a>
                                <a class="share" title="分享到新浪微博" ><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
                            </span>
                            <a>酷玩帮</a>
                            | 2015年11月04日
                            <a>
                            <img width="605" height="220" title="11月6日年度旗舰小米圈铁耳机0元试用 抢楼送10个" alt="11月6日年度旗舰小米圈铁耳机0元试用 抢楼送10个" src="front/images/main_news4.jpg"></a>
                            <p>小米年度旗舰耳机，动圈+动铁双发声单元，依然99元！专利圈铁结构，能让你听见更多音乐细节；四届格莱美奖录音大师声学 调音；20道工序打造的金属音腔，超过700项的品质测试。小米官方免费试用平台酷玩帮将在11月06日首发小米圈铁耳机的0元试用，现在抢楼再送10 个！
    						<a>全文》</a></p>
                    	</li>
                    </ul>
                </div>
                <div class="news5 xmnews">
                	<ul>
                    	<li>
							<h2><a href="front/xiangqing.jsp">不想被人看到就隐藏起来！教你如何让小米手机隐私不泄露</a></h2>
							<span>
                            	<em class="views"><img src="front/iconfont-photo/iconfont-13bbcguankanshu.svg">1667</em>
                                <a><img src="front/iconfont-photo/iconfont-dianping.svg">21</a>
                                <a class="share" title="分享到新浪微博" ><img src="front/iconfont-photo/iconfont-xinlang.svg">分享</a>
							</span>
							<a>红米Note</a>
							| 2015年11月04日
							<a>
								<img width="605" height="220" title="不想被人看到就隐藏起来！教你如何让小米手机隐私不泄露" alt="不想被人看到就隐藏起来！教你如何让小米手机隐私不泄露" src="front/images/main_news5.jpg">
							</a>
							<p>在这个智能手机时代，越来越多的人开始关注隐私问题，谁手机上没有“XXX”文件（或其他），删了可惜，不删被人看到太尴尬。那么有什么办法可以解决这一难题？别急？MIUI“私密文件夹”功能为您排忧解难，不想被别人看到的东西通通隐藏起来！
							<a>全文》</a>
							</p>
						</li>
                    </ul>
                </div>
            </div>
            <div class="pages">
                <ul>
                    <li><a><span style="color:#FF6F3D">1</span></a></li>
                    <li><a>2</a></li>
                    <li><a>3</a></li>
                    <li><a>4</a></li>
                    <li><a>5</a></li>
                    <li><a>6</a></li>
                    <li><a>7</a></li>
                    <li><a>8</a></li>
                    <li><a>9</a></li>
                    <li><a>10</a></li>
                    <li class="pages_last"><a>下一页</a></li>
                </ul>
             </div>
        </div>
        <div class="right_box">
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
							<li><a><span style="color:#ff0000;">小米手机4c</span></a></li>
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
            <div class="shiping">
            	<video height="292px" width="300ox" controls>
				</video>
            </div>
            <div class="bbs">            
                <div class="bbs_font">
                	<a><img src="front/images/right_bbs.png"></a>
                </div>
                <div class="bbs_fblock">
                	<div class="bbs_inner">
                        <div class="bbs_all">
                        	<img src="front/images/right_bbs_inner_people.png">
                            <li>22131人</li>
                        </div>
                        <div class="bbs_line">
                        	<img src="front/images/right_bbs_inner_shuliang.png">
                            <li>签到看排名</li>
                        </div>
                    </div>
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
        </div>
    </div>
    
    
    <div class="location_box">
    	<div class="location1">
            <p><strong>热门同城会</strong></p>
        </div>
        <div class="location2">
            <a>西安</a>
            <a>广州</a>
            <a>深圳</a>
            <a>合肥</a>
            <a>上海</a>
            <a>北京</a>
            <a>郑州</a>
            <a>天津</a>
            <a>成都</a>
            <a>武汉</a>
            <a>大连</a>
            <a>重庆</a>
            <a>杭州</a>
            <a>苏州</a>
            <a>无锡</a>
            <a>青岛</a>
            <a>佛山</a>
            <a>福州</a>
            <a>厦门</a>
            <a>南京</a>
            <a>昆明</a>
            <a>东莞</a>
            <a>台州</a>
            <a>长春</a>
            <a>济南</a>
            <a>石家庄</a>
            <a>长沙</a>
            <a>兰州</a>
            <a>潍坊</a>
            <a>仙桃</a>
            <a>沈阳</a>
            <a>太原</a>
            <a>徐州</a>
            <a>泉州</a>
            <a>哈尔滨</a>
            <a>临沂</a>
            <a>贵阳</a>
            <a>铁岭</a>
            <a>安庆</a>
            <a>洛阳</a>
            <a>菏泽</a>
            <a>宁波</a>
            <a>安阳</a>
            <a>济宁</a>
            <a>乌鲁木齐</a>
         </div>
    </div>    
    <div class="links_box">
        <div class="links1">
        	<p><strong>友情链接</strong></p>
        </div>
        <div class="topLink">
            <a><img src="front/images/topLink1.png"></a>
            <a><img src="front/images/topLink2.png"></a>
            <a><img src="front/images/topLink3.png"></a>
            <a><img src="front/images/topLink4.png"></a>
            <a><img src="front/images/topLink5.jpg"></a>
            <a><img src="front/images/topLink6.png"></a>
        </div>
        <div class="link">
            <a>手机软件</a>
            <a>手机浏览器 </a>
            <a>dospy智能手机网</a>
            <a>手机游戏下载</a>
            <a>安卓市场</a>
            <a>天极手机</a>
            <a>91安卓游戏软件</a>
            <a>凤凰手机频道</a>
            <a>安卓论坛</a>
            <a>安趣</a>
            <a>手机网</a>
            <a>深度安卓门户</a>
            <a>蚕豆网</a>
            <a>安卓游戏</a>
            <a>手机软件</a>
            <a>爱搞机</a>
            <a>安卓游戏下载</a>
            <a>刷机精灵</a>
            <a>ROM之家</a>
            <a>安卓大型游戏</a>
            <a>爱毒霸社区</a>
            <a>猎豹浏览器</a>
            <a>机锋网</a>
            <a>网易手机</a>
            <a>铁血社区</a>
            <a>小米天猫旗舰店 </a>
            <a>拇指玩</a>
            <a>中关村手机</a>
            <a>智能电视论坛</a>
            <a>ROM助手</a>
            <a>沙发管家</a>
            <a>电视应用市场</a>
            <a>雷锋网</a>
            <a>电视之家</a>
       </div>
   </div>  
    </div>
    <div class="footer">
		<div class="footerInner">
        	<div class="footerInnerInner">
        	<h5>旗下网站</h5>
                <div class="footer_links">               
                    <a>小米网</a>
                    |
                    <a>小米社区</a>
                    |
                    <a>MIUI</a>
                    |
                    <a>多看阅读</a>
                    |
                    <a>米聊 </a>
                    |
                    <a>小米游戏</a>
                </div>
      		</div>
  	 	</div>
   	<div class="icp">京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号</div>
   		<div class="icp" align="center">
            <span>
                <a>
                    <img src="front/images/footer.png">
                </a>
            </span>
   		</div>
	</div>
  </body>
</html>
