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
		
		$(function(){
			
		});
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
		        		<input type="hidden" name="usersId" id="Id_hidden" value="${loginUsers.usersId }"/>
		        		<span class="name">当前登录：${loginUsers.usersName }</span>
		        		<span class="iconfont">&or;</span></a>
		        	</c:if>
		        	<c:if test="${empty loginUsers }">
		   				<a class="user-name" href="front/login.jsp"  style="text-decoration: none; color:#666;">
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
    	<form action="front/shopcar_goCount.action">
    	<table id="carbox" >
    		<thead id="list_head">
    			<tr>
    				<td>选择</td>
    				<td>商品名称</td>
    				<td>商品图片</td>
    				<td>单价</td>
    				<td>数量</td>
    				<td>小计</td>
    				<td>操作</td>
    			</tr>
    		</thead>
    		<tbody class="tbody">
    			<c:forEach items="${shopCarInfo }" var="shopCarItem">
    			<tr>	
    				<td><input type="checkbox" value="${shopCarItem.ptId }" checked="checked" name="newslist" id="newslist-1" class="newslist"></td>
    				<td><div class="pro-names">
		         		<p class="pro-name">${shopCarItem.goodsName }</p>
		         		</div>
		         	</td>
    				<td><div class="col-img"><img src="../uploadpic/${shopCarItem.goodsminPic }"/></div></td>
    				<td><div class="pro-price"><span id="price${shopCarItem.goodsId }">${shopCarItem.ptPrice }</span>元</div></td>
    				<td><div class="pro-num">
				         	<a id="numdec"><span style="padding:6px 12px;" class="num-" onclick="numDec(${shopCarItem.goodsId })">-</span></a>
				             <input class="goodsNum" id="${shopCarItem.goodsId }"  data-num="1" value="${shopCarItem.shopNum }" type="text" readonly="readonly" >
				             <a id="numinc"><span style="padding:6px 12px;" class="num+" onclick="numInc(${shopCarItem.goodsId })">+</span></a>
				         </div>
		         	</td>
    				<td><div class="pro-total"><span id="priceTotal${shopCarItem.goodsId }">${shopCarItem.ptPrice * shopCarItem.shopNum }</span>元</div></td>
    				<td><div class="pro-action"><span title="删除" onclick="delete_car(${shopCarItem.shopId })">&nbsp;×&nbsp;</span></div></td>
    			</tr>
    			</c:forEach>
    		</tbody>
    	</table>
    	
    	<div class="list-footer">
	    	<div class="section-left">
	        	<a class="back-shopping" href="front/shop.jsp">继续购物　</a><%-- ${sessionScope.shopNumTotal } --%>
	            <span>共 <i class="total-number">  ${sessionScope.shopNumTotal } </i> 件商品</span>
	        </div>
	        <div class="section-right">
	        	<div class="pay-total"><span>合计: <span  id="zongjimoney" class="total-price">${sessionScope.ptPriceTotal }<%-- ${sessionScope.ptPriceTotal } --%></span> 元</span></div>
	            <div class="gopays"><a class="gopay" id="jiesuan" href="javascript:void(0)" onclick="gojiesuan()">去结算</a></div>
	        </div>
	    </div>
	    </form>	
	 </c:if>
	 
<script type="text/javascript">
	 var shopNum=0;
	 var ptPrice=0;
	 var totalPrice=0;//小计
	 var totalNumber=0;
	
	 function numInc(id){
		 shopNum = $("#"+id+"").val();
		 ptPrice =$("#price"+id+"").html();
		 
		 shopNum =parseInt(shopNum) + 1;
		 totalPrice =  parseInt(shopNum) * parseInt(ptPrice);
		 
		 $("#"+id+"").val(shopNum);
		 $("#priceTotal"+id+"").html(parseInt(totalPrice).toFixed(1));
		 setTotal();
		 GetCount();
	 }
	 function numDec(id){
		 shopNum = $("#"+id+"").val();
		 ptPrice =$("#price"+id+"").html();
		 
		 shopNum =parseInt(shopNum) - 1;
		 if(shopNum<=0){
			 shopNum=0;
		 }
		 totalPrice =  parseInt(shopNum) * parseInt(ptPrice);
		 $("#"+id+"").val(shopNum);
		 $("#priceTotal"+id+"").html(parseInt(totalPrice).toFixed(1));
		 setTotal();
		 GetCount();
	 }
	 
	 function setTotal(){
		var len = $(".pro-total span");
		var len1 = $(".goodsNum");
		var totalMoney = 0;
		var totalCount = 0;
		for (var i = 0; i < len.length; i++) {
			totalMoney = totalMoney + parseInt($(len[i]).text());
		}
		for (var i = 0; i < len1.length; i++) {
			totalCount = totalCount + parseInt($(len1[i]).val());
		}
		$(".total-number").text(parseInt(totalCount));
		$("#zongjimoney").text(parseInt(totalMoney).toFixed(1));
	 }
	 
	 function GetCount() {
		var totalMoney = 0;
		var totalCount = 0;
		$(".tbody input[name=newslist]").each(function () {
			if($(this).attr("checked")) {
				for (var i = 0; i < $(this).length; i++) {
					//alert( parseInt($(this).parent().parent().find(".pro-total span").html()))
					totalMoney += parseInt($(this).parent().parent().find(".pro-total span").text());
					totalCount += parseInt($(this).parent().parent().find(".goodsNum").val());
				//	totalCount = totalCount + parseInt($(len1[i]).val());
				}
			}
		});
		$(".total-number").text(totalCount);
		$("#zongjimoney").text(parseInt(totalMoney).toFixed(1));
	}
			
	// 所有复选(:checkbox)框点击事件 
	$(".tbody input[name=newslist]").click(function () {
		if ($(this).attr("checked")) {
			$(this).attr("checked", false);
			//alert($("[name='newslist']:checkbox:checked").length);
		} else {
			$(this).attr("checked", true);
		}
		GetCount();
	});
	
	//删除操作
	function delete_car(num){
		//var divId=$("#list-body"+num);
		var shopId = num;
		//var goodsId=$("#delete_car"+num).parent().attr("id");
		var usersId = $("#Id_hidden").val();
		//alert(shopId)
		if(window.confirm('您确定要删除此商品吗？')){
			$.post("front/shopCar_delByShopId.action",{shopId:shopId,usersId:usersId},function(data){
				if(parseInt($.trim(data.total))==1){
					alert("删除成功");
					document.location.reload();//页面重新加载
				}
			},'json'); 
		} 
	}
</script>
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
	
	function gojiesuan() {
		var str="";
		var choosedNum =$("[name='newslist']:checkbox:checked");
		if(choosedNum.length==0){
			alert("请选择您需要购买的商品");
		}else{
			for(var i=0;i<choosedNum.length-1;i++){
				str+=choosedNum[i].value+",";
			}
			str+=choosedNum[i].value;
		}
		var totalNum = $(".total-number").text();
		var zongjimoney = $("#zongjimoney").text();
		//alert(str);
		var trnodes = $(".tbody").children("tr");
		var trlength = $(".tbody").children("tr").length;	//tr的长度
		var infos = "";
		for(var i=0;i<trlength;i++){
			if(trnodes.eq(i).children().find(".newslist").attr('checked')){
				var ptId = trnodes.eq(i).children().find(".newslist").val();
				var goodsName = trnodes.eq(i).children().find(".pro-names .pro-name").text();
				var goodsminPic = trnodes.eq(i).children().find(".col-img img").attr("src");
				var ptPrice = trnodes.eq(i).children().find(".pro-price span").text();
				var goodsNum = trnodes.eq(i).children().find(".goodsNum").val();
				var totalPrice = trnodes.eq(i).children().find(".pro-total span").text();
				infos += ptId + "," + goodsName + "," + goodsminPic + "," + ptPrice + ","+goodsNum+","+totalPrice+";";
			}
		}
		console.info(infos)
		$.post("front/shopCar_getPayInfo.action",{str:str,infos:infos,totalNum:totalNum,zongjimoney:zongjimoney},function(data){
			location.href="front/gocount.jsp";
		});
		
		var usersId = $("#Id_hidden").val();
		$.post("front/user_findAddrInfoById.action",{usersId:usersId},function(data){
			 if(data.total<0){
				 alert("请添加一个收获地址");
			}
		},'json');
	}
	
	/* function gopay(){
		var bbb= $("#mytable").children("tbody").children("tr");
		var coun = $("#mytable").children("tbody").children("tr").length;
		var song ="";
		for(var i=0;i<coun;i++){
			if($("#mytable").children("tbody").children("tr").eq(i).children(".fi").children("#checkeded").children(".list").attr('checked')){
				var kaka = $("#mytable").children("tbody").children("tr").eq(i).children(".fi").children("#checkeded").children(".list");
				song+=kaka.val()+","+$("#mytable").children("tbody").children("tr").eq(i).children(".fi").children(".pname_product").children("a").html()
					+","+$("#mytable").children("tbody").children("tr").eq(i).find(".price_product").html()+","
					+$("#mytable").children("tbody").children("tr").eq(i).find(".counts_product").val()+","
					+$("#mytable").children("tbody").children("tr").eq(i).find(".small_product").html()+","
					+$("#mytable").children("tbody").children("tr").eq(i).find(".pname_product").find("img").attr("src")+";";
			}
		}
		$.post("shopCar_saveshopcar.action?song="+song,function(){
			window.location.href="boqi_paymoney.action";
		});
	} */
	
	
	
</script>
	    
	    <c:if test="${empty shopCarInfo && not empty loginUsers  }">
	    	<div class="main_empty"  id="main_empty">
		        <div id="main_content">
		            <img src="front/images/2015-11-18_202559.png" style="float:left;"/>
		            <span id="noneCar">您的购物车还是空的!</span>
		            <a id="gouwu" href="front/shop.jsp" style="margin-left: 100px;">马上去购物</a>
		        </div>
		    </div>
	    </c:if>
    </div>
    
    <c:if test="${empty loginUsers && empty shopCarInfo }">
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
	
</body>
</html>
