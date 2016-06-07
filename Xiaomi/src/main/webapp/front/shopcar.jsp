<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>购物车</title>
    <link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
    
	<link href="front/css/shopcar.css" type="text/css" rel="stylesheet"/>
	<style type="text/css">
		a{
			text-decoration: none;
		}
		.numdec,.numinc{
			color:#000;
		}
	</style>
	<script src="front/js/jquery-1.11.3.js" type="text/javascript"></script>
	<script src="front/js/shopcar.js" type="text/javascript"></script>
	
	<script>
		function goorder(){
			$.post("ordersServlet?d="+new Date(),{op:"findorderesbyuserId"},function(data){
				if(parseInt($.trim(data))==0){
					if(window.confirm('您还没有订单，去主页逛逛吧！')){
						location.href="front/MiHome.jsp";
					}
				}else {
					location.href="front/myorder.jsp";
				}
			});
		}
	</script>
	</head>
  
  <body>
   <div id="total">
	<div class="header">
    	<div class="container">
            <div class="header-logo">
            	<a><img src="front/images/logo.png" style="border-left: 5px;"/></a>
            </div>
            
            <div class="header-title">
            	<p class="header-p1">我的购物车</p>
                <p class="header-p2"><a>问题反馈 ></a></p>
            </div>
            
            <div class="topbar-info">
            	<span class="user">
	            	<c:if test="${not empty loginUsers }">
		        		<a class="user-name"  style="text-decoration: none; color:#666;" >
		        		<span class="name">当前登录：${loginUsers.usersName }</span>
		        		<span class="iconfont">&or;</span></a>
		        	</c:if>
		        	<c:if test="${empty loginUsers }">
		   				<a class="user-name" href="front/login.html"  style="text-decoration: none; color:#666;">
		   				<span class="name">登录</span>
		   				<span class="iconfont">&or;</span></a>
		   			</c:if>
                </span>
                <span>|</span>
                <a class="myorder" href="javascript:goorder()">我的订单</a>
            </div>
         </div>    
    </div>
    
    <div class="main">
    	<%-- <%@include file="cardbox.jsp" %> --%>
    	<c:if test="${not empty shopCarInfo }">
    	<table id="carbox" >
    		<thead id="list_head">
    			<tr>
    				<td>商品名称</td>
    				<td>商品图片</td>
    				<td>单价</td>
    				<td>数量</td>
    				<td>小计</td>
    				<td>操作</td>
    			</tr>
    		</thead>
    		<tbody class="">
    			<c:forEach items="${shopCarInfo }" var="shopCarItem">
    			<tr>
    				<td><div class="pro-names">
		         		<p class="pro-name">${shopCarItem.goodsName }</p>
		         		</div>
		         	</td>
    				<td><div class="col-img"><img src="../uploadpic/${shopCarItem.goodsminPic }"/></div></td>
    				<td><div class="pro-price"><span>${shopCarItem.ptPrice }</span>元</div></td>
    				<td><div class="pro-num">
				         	<a id="numdec"><span class="num-" onclick="numDec()">-</span></a>
				             <input class="goodsNum"  data-num="1" value="${shopCarItem.shopNum }" type="text" readonly="readonly" >
				             <a id="numinc"><span class="num+" onclick="numInc()">+</span></a>
				         </div>
		         	</td>
    				<td><div class="pro-total"><span>${shopCarItem.ptPrice * shopCarItem.shopNum }</span>元</div></td>
    				<td><div class="pro-action"><span title="删除" onclick="delete_car(${shopCarItem.shopId })">&nbsp;×&nbsp;</span></div></td>
    			</tr>
    			</c:forEach>
    			
    		</tbody>
    	</table>
    	<div class="list-footer">
	    	<div class="section-left">
	        	<a class="back-shopping" href="">继续购物　</a>
	            <span>共 <i class="total-number"> 1 </i> 件商品</span>
	        </div>
	        <div class="section-right">
	        	<div class="pay-total"><span>合计（不含运费）: <span  id="zongjimoney" class="total-price">35.9</span> 元</span></div>
	            <div class="gopays"><a class="gopay" id="jiesuan" href="javascript:void(0)" onclick="gojiesuan()">去结算</a></div>
	        </div>
	    </div>
	    </c:if>
	    
	    <c:if test="${empty shopCarInfo }">
	    	<div class="main_empty"  id="main_empty">
		        <div id="main_content">
		            <img src="front/images/2015-11-18_202559.png" style="float:left;"/>
		            <span id="noneCar">您的购物车还是空的!</span>
		            <a id="gouwu" href="front/shop.jsp" style="margin-left: 100px;">马上去购物</a>
		        </div>
		    </div>
	    </c:if>
    </div>
    
    <c:if test="${empty loginUsers }">
	     <div class="main_empty">
	        <div id="main_content">
	            <img src="front/images/2015-11-18_202559.png" style="float:left;"/>
	            <span id="noneCar">您的购物车还是空的!</span>
	            <span id="nind">登陆后将显示您之前加入的商品</span>
	            <a id="denglu" href="front/login.jsp">立即登陆</a>
	            <a id="gouwu" href="front/shop.jsp">马上去购物</a>
	        </div>
	    </div>
    </c:if>
    
    
    
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
	</div>
	
	<script type="text/javascript">

	var maxNum;  //购买的最大数目
	var count; //数量
	var danjia; //单价
	var totalnumber = 0; //总数量
	var totalPrice=0;  //总价
	var total;  //单个商品的小计
	var need_pay;
	var list_objecta;
	var size;
	var loginname;	
	$(function(){
		loginname=$(".name").html();
		
		if(loginname=="登录"){
			$(".main").css("display","none");
			$(".main_empty").css("display","block");
			$("#main_empty").css("display","none");
		}else{
			/* $.post("shopCar_shopCarShow.action",function(data){
				var str = data;
				$(".testlist").html(str);
				size=$(".testlist").children().size();
				maxNum=10;
				
				list_objecta = $(".testlist").children();
				
				for (var i = 0; i < list_objecta.size(); i ++) {
					var countss = $(list_objecta[i]).children().find($(".pro-num .goodsNum")).val(); //数量
					var danjia=$(list_objecta[i]).children().find($(".pro-total span")).html(); //单价
					totalnumber += parseInt(countss);
					totalPrice +=parseInt(danjia);
				}
				
				$(".total-number").html(totalnumber);
				$(".total-price").html(totalPrice); 
			
			}); */
		}
	});
	
	
	function gojiesuan() {
		/*var test = $(".testlist").children();
		alert(test    + "   "   +  test.size()  )
		var str="";
		for (var i = 0; i < test.size(); i ++) {
			str += "[" + "{\"colimg\":\""+$(list_objecta[i]).children().find($(".col-img img")).attr('src')
				+"\",\"proname\":\""+$(list_objecta[i]).children().find($(".pro-names p")).html()
				+"\",\"proprice\":\""+$(list_objecta[i]).children().find($(".pro-price span")).html()
				+"\",\"number\":\""+$(list_objecta[i]).children().find($(".pro-num input")).val()
				+"\",\"prototal\":\""+$(list_objecta[i]).children().find($(".pro-total span")).html() +"\"}" + "]"  +","
		}
		$.post("shopDetailServlet",{op:"getInfo",str:str},function(data){
			ajaxobj = eval("("+data+")")
			//alert(data)
			alert(ajax.info.size)
			alert(ajaxobj.info[0].proname);
		});
		console.info(str);*/
		
		var totmoney = $("#zongjimoney").html();
		var totgoods = $(".total-number").html();
		//alert($("#total-number").html())
		$.post("shopDetailServlet",{op:"getInfo",totmoney:totmoney,totgoods:totgoods},function(data){
			location.href="front/gocount.jsp";
		});
	}
	
	
	/*function numInc(num){
		//var
		
		//var nums = parseInt(num);
		//alert(nums);
		//alert(${shopcarsid[num+0].usersId});
		//console.info(num);
		//console.info(${shopcarsid[0].goodsId})
		//console.info(${shopcarsid[1].goodsId})
		//console.info(${shopcarsid[num+1-1].goodsId});
		//console.info(${shopcarsid[num+1-1].goodsId});
		//var adduid;
		//var addgid;
		//for (var i = 0; i < $(".testlist").children().size(); i ++) {
			//if (i == num) {
				//var adduid = ${shopcarsid[i].usersId};
				//var addgid = ${shopcarsid[i].goodsId};
			//}
		//}
		 //= ss.usersId;
		// = ss.goodsId;
		//console.info(adduid)
		//console.info(addgid)
		//console.info(num+0)
		count = $("#number_"+num).val();  //数量
		danjia = $("#price"+num).html(); //单价
		 if (count >= maxNum) {
		 	$("#number_"+num).val(maxNum);
			total=parseFloat(danjia)*maxNum;
			$("#pro-total"+num).html(total.toFixed(2));
			alert("对不起！此宝贝购买数量一次不能超过10件！谢谢您的厚爱！");
		 } else{
			count ++;
			totalnumber ++;
			total=parseFloat(danjia)*count;
			totalPrice =parseFloat(totalPrice)+parseFloat(danjia);
			//$.post("shopDetailServlet?d="+new Date(),{op:"btadd",adduid:adduid,addgid:addgid},function(data){
			//	if (parseInt(data) > 0) {
					$("#number_"+num).val(count);
					$(".total-number").html(totalnumber);
					
					$("#pro-total"+num).html(total.toFixed(2));
					$(".total-price").html(totalPrice.toFixed(2));
				//} else {
				//	alert("增加商品失败...")
				//}
			//});
			
		}
	}*/
	
	/*function numDec(num){
		count = $("#number_"+num).val();  //数量
		danjia = $("#price"+num).html(); //单价
		//console.info("数量"+count);
	 	if(count>1){
			count--;  //数量
			totalnumber--; //总件数
			total=parseFloat(danjia)*count;
			totalPrice =parseFloat(totalPrice)-parseFloat(danjia);
			//console.info(totalPrice);
			$("#number_"+num).val(count);
			$(".total-number").html(totalnumber);
			$("#pro-total"+num).html(total.toFixed(2));
			$(".total-price").html(totalPrice.toFixed(2));
		}else{
			delete_car(num);
		}	
	}*/
	
	function delete_car(num){
		var divId=$("#list-body"+num);
		var goodsId=$("#delete_car"+num).parent().attr("id");
		if(window.confirm('您确定要删除此商品吗？')){
			//console.info(goodsId);
			$.post("shopDetailServlet?d="+new Date(),{op:"delByUidGid",goodsId:goodsId},function(data){
				if(parseInt($.trim(data))==1){
					$(divId).css("display","none");
					totalPrice=totalPrice-parseFloat($("#pro-total"+num).html());
					totalnumber=totalnumber-parseFloat($("#number_"+num).val());
					$(".total-number").html(totalnumber);
					$(".total-price").html(totalPrice.toFixed(2));
					size--;
					//console.info(size);
					if(size==0){
						$("#main_empty").show();
						$(".main_empty").css("display","none");
						$(".main").css("display","none");
					}
				}
			}); 
			
			
		}
	}
		/*
		function selected_all(){
			var quanxuan=$(".checked_all").html();
			var choose1=$(".checkbox-checked").html();
			if(quanxuan==""){
				$(".checked_all").html("√");
				
				if(choose1=="" && choose1!="√"){
					$(".checkbox-checked").html("√");
				}
			}else if(quanxuan!="" && quanxuan=="√"){
				$(".checked_all").html("");
				$(".checkbox-checked").html("");
			}
		}	
		function selected_single(){
			var choose1=$(".checkbox-checked").html();
			if(choose1==""){
				$(".checkbox-checked").html("√");
			}else if(choose1!=""){
				$(".checkbox-checked").html("");
			}
		}
		*/
	
	
	</script>
</body>
</html>
