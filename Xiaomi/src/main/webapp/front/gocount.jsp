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
    	<title>结算</title>
		<link href="front/css/gocount.css" type="text/css" rel="stylesheet"/>
		<link href="front/css/footer.css" type="text/css" rel="stylesheet"/>
		<link rel="short icon" href="front/iconfont-photo/iconfont-iconmi01.svg"/>
		<script src="front/js/jquery-1.11.3.js" type="text/javascript"></script>
		<script type="text/javascript" src="front/js/jquery.cityselect.js"></script>
		<script src="front/js/gocount.js" type="text/javascript"></script>
		<style type="text/css">
			
			
		</style>
		
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
				var usersId = $("#Id_hidden").val();
				$.post("front/user_findAddrInfoById.action",{usersId:usersId},function(data){
					 if(data.total<0){
						 alert("请添加一个收获地址");
					}
				},'json');
				//订单信息显示出来
				addinfo();
			});	
			
			//添加信息
			function addinfo(){
				var infofo = "${goCountInfo}";
				var shu = infofo.split(";");
				var shing = "";
				for(var i=0;i<shu.length-1;i++){
					var shu2 = shu[i].split(",");
					$("#mytables").append("<tr class='infos'><td class='product_ptId'><input type='hidden' name='ptId' id='ptId_hidden' value='"+shu2[0]+"'/></td>"
							+"<td class='goodsName'>"+shu2[1]+"</td><td class='img_order'><img src='"+shu2[2]+"' alt='图片暂时为空' class='goodsminPic'/></td><td class='ptPrice' id='price'>"+shu2[3]+"</td>"
							+"<td class='goodsNum' id='num'>"+shu2[4]+"</td><td class='totalPrice' id='toprice'>"+shu2[5]+"</td></tr>");
					//sum+= parseInt(shu2[4]);
				}
				//$(".yingfumoney").html(sum);
			}
			
		</script>
  </head>
  
  <body>
   <div class="addr_box"></div>
		<div id="total">
			<div class="header">
		    	<div class="container">
		            <div class="header-logo">
		            	<a><img src="front/images/logo.png"/></a>
		            </div>
		            
		            <div class="header-title">
		            	<p class="header-p1">确认订单</p>
		            </div>
		            
		            <div class="topbar-info">
		            	<c:if test="${not empty loginUsers }">
			        		<a class="user-name" style="text-decoration: none; color:#666;" >
			        		<input type="hidden" name="usersId" id="Id_hidden" value="${loginUsers.usersId }"/>
			        		<span class="name">当前登录：${loginUsers.usersName }</span>
			        		<span class="iconfont">&or;</span></a>
			        	</c:if>
			        	<c:if test="${empty loginUsers }">
			   				<a class="user-name" href="front/login.html"  style="text-decoration: none; color:#666;">
			   				<span class="name">登录</span>
			   				<span class="iconfont">&or;</span></a>
			   			</c:if>
		                <span>|</span>
		                <a class="myorder" href="front/myorder.jsp">我的订单</a>
		            </div>
		         </div> 
			</div>

			<div id="body">
				<div id="main">
					<p class='addr_title'>收货地址</p>
					<div id="address">
						<c:forEach items="${addresseInfo }" var="addrItem">
						<c:if test="${addrItem.defaultaddr eq 1 }">
						<div class="addr_detail have" style="background: url(front/images/1BG.png);" onclick="sureAddr(${addrItem.addrId })" onmouseover="showUpdate(${addrItem.addrId })" onmouseout="clearUpdate(${addrItem.addrId })" id="${addrItem.addrId }">
							<p><span class="username" style="width:150px;">${addrItem.recipient }</span><span class="postcode" >${addrItem.postcode }</span></p>
							<p class="tel">${addrItem.addrTel }</p>
							<p class="addr big"><span class="big1">${addrItem.province }</span><span class="big2">${addrItem.city }</span><span class="big3">${addrItem.county }</span></p>
							<p class="addr middle">${addrItem.detailAddr } </p>
							<p><a class="change" id="change${addrItem.addrId }" class="${addrItem.addrId }" onclick="updateClick(${addrItem.addrId })">修改</a></p>
						</div>
						</c:if>
						<c:if test="${addrItem.defaultaddr eq 0 }">
							<div class="addr_detail have" style="background: url(front/images/3.png);" onclick="sureAddr(${addrItem.addrId })" onmouseover="showUpdate(${addrItem.addrId })" onmouseout="clearUpdate(${addrItem.addrId })" id="${addrItem.addrId }">
								<p><span class="username" style="margin-right: ">${addrItem.recipient }</span><span class="postcode" >${addrItem.postcode }</span></p>
								<p><span class="tel">${addrItem.addrTel }</span></p>
								<p class="addr big"><span class="big1">${addrItem.province }</span><span class="big2">${addrItem.city }</span><span class="big3">${addrItem.county }</span></p>
								<p class="addr"><span class="middle">${addrItem.detailAddr } </span></p>
								<p><a class="change" id="change${addrItem.addrId }" class="${addrItem.addrId }" onclick="updateClick(${addrItem.addrId })">修改</a></p>
							</div>
						</c:if>
						</c:forEach>
					</div>
					<div class="no" style="margin-left:50px; width:250px; height: 70px; float: left; border: 1px solid #f0f0f0;">
						<div id="add">
							<a class="add_newaddr">+</a>
							<p class="add_p" >添加新地址</p>
						</div>
					</div>
					
					<div class="section section-goods">
						<div class="section-header">
							<h3 style="width: 120px; float: left;">商品订单详细</h3>
							<div class="more" style="float: right; text-decoration: none; margin-right: 30px;">
								<p><a class="return_car">返回购物车<span class="iconfont"><</span></a></p>
								<script type="text/javascript">
									$(".return_car").click(function () {
										var usersId = $("#Id_hidden").val();
										$.post("front/shopCar_shopCarShow.action",{usersId:usersId},function(){
											location.href="front/shopcar.jsp";
										});	
									});
								</script>
							</div>
						</div>
						<div class="section-body">
							<table id="carbox" >
					    		<thead id="list_head">
					    			<tr>
					    				<td></td>
					    				<td>商品名称</td>
					    				<td>商品图片</td>
					    				<td>单价(元)</td>
					    				<td>数量(件)</td>
					    				<td>小计(元)</td>
					    			</tr>
					    		</thead>
					    		<tbody class="tbody" id="mytables">
					    		</tbody>
					    	</table>
                		</div>
				       	
                		<div class="money-box" id="">
		                    <ul>
		                        <li class="clearfix">
		                            <label>商品件数：</label>
		                            <span class="val">${totalNum } 件</span>
		                        </li>
		                        <li class="clearfix">
		                            <label>金额合计：</label>
		                            <span id="money" class="val">${zongjimoney }</span>元
		                        </li>
		                    </ul>
		                </div>
		                
		                <div id="addr_show">
		                	<font size="4" color="blue">收货地址显示</font>
		                	<ul>
		                		<li id="id_show"><input type="hidden" name="addrId" id="addrId_hidden" value=""/></li>
		                		<li id="name_show"></li>
		                		<li id="tel_show"></li>
		                		<li id="addrInfo_show"></li>
		                	</ul>
		                </div>
					</div>
					
					
					<div id="main_footer">
						<div class="count"><input id="buy" class="buy" type="button" value="提交订单" onclick="handIn()"></div>						
					</div>
					<script type="text/javascript">
						function handIn(){
							var addrId = $("#addrId_hidden").val(); //地址编号
							var usersId = $("#Id_hidden").val(); //用户编号
							var ordTatol = $("#money").text();   //订单总价
							console.info(ordTatol+"==");
							var goodsNames = ""; 
							var list = $(".infos");
							var orders = "";
							//console.info(addrId+"=="+usersId+"=="+ordTatol+"=="+money);
							for(var i=0;i<list.length;i++){
								var ptId = $(list[i]).children().find("#ptId_hidden").val();//商品id
								var detaPrice = $(list[i]).children(".ptPrice").html();		//购买价
								var detaNum = $(list[i]).children(".goodsNum").html();//购买数量
								var detaNum = $(list[i]).children(".goodsNum").html();//购买数量
								goodsNames += $(list[i]).children(".goodsName").html()+"  ";//商品名称
								orders += ptId+","+detaPrice+","+detaNum+";";
							}
							console.info(orders+"orders");
							console.info(goodsNames+"goodsNames");
							if(addrId == "" || addrId == null){
								alert("请选择您的收货地址");
							}else{
								$.post("front/orderInfoBean_addOrderInfo.action",{addrId:addrId,usersId:usersId,ordTatol:ordTatol,orders:orders},function(data){
									
									if(data.total != 1){
										document.getElementById("buy").disabled=true;//成功购买后，只能点一次
										$("#order_post").slideDown();
										var username = $("#name_show").html();
										var tel = $("#tel_show").html();
										var addr = $("#addrInfo_show").html();
										console.info(data.total)
										$(".orderId").html(data.total);
										$(".ordId").val(data.total);
										$(".orderMessage").html("<span class='showInfos'>姓名：</span>"+username+" <span class='showInfos'>联系方式：</span>"+tel
												+"<br><span class='showInfos'>地址：</span>"+addr+"<br>");
										$(".orderProName").html(goodsNames);
									}else{
										alert("订单提交失败！请稍后再试！");
									}
									//console.info(data.total);
								},"json");
								//window.location.href="front/orderInfoBean_addOrderInfo.action?addrId="+addrId+"&usersId="+usersId+"&ordTatol="+ordTatol+"&orders="+orders;
							}
						}
					</script>
				</div>
			</div>
			
			<!--
            	作者：offline
            	时间：2016-01-09
            	描述：订单界面 开始是隐藏的
            -->
			<div id="order_post">
				<div class="order_post_content">
					<div class="order_post_judge">
						<img src="front/images/zhengque.png">
					</div>
					<div class="order_post_message">
						<h2>订单提交成功 ！去付款咯~</h2>
						<p>应付总额：<span class="pay_money">${zongjimoney } </span> 元</p>
					</div>
					<a class="look_order" title="查看订单详情"><img src="front/images/look_order.jpg"></a>
					<div class="order_post_detail">
						<ul>
							<li class="li01">订单编号：<span class="orderId"></span></li>
							<li class="li02">收货信息：<span class="orderMessage"></span></li>
							<li class="li03">商品名称：<span class="orderProName"></span></li>
						</ul>
					</div>
				</div>
				
				<div id="pay">
					<div id="choose_way"><p>选择付款方式</p></div>
					<div id="pay_way">
						<br>
						<input type="button" class="linebank" onClick="online()" value="在线支付"/>
						<input type="button" class="balance" onClick="fukuan()" value="余额付款"/>
					<form action="front/orderInfoBean_payOnline.action" method="post">
						<input type="hidden" class="ordId" name="ordId" value="${ordId}"/>
						<table style="width: 100%;" >
							<tr><td><br/></td></tr>
							<tr id="xmBank" style="display: none;">
							  <td><img alt="小米钱包" src="front/bank_img/xiaomiBank.png"></td>
							  <td></td>
							  <td></td>
							  <td></td>
							  <td></td>
							  <td></td>
							</tr>
							<tr class="br1"><td><br/></td></tr>
							<tr class="onlineBank" style="display: none;">
							  <td><INPUT TYPE="radio" NAME="yh" value="CMBCHINA-NET-B2C"><img alt="招商银行" name="CMBCHINA-NET-B2C" src="front/bank_img/cmb.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="ICBC-NET-B2C"><img alt="工商银行" name="ICBC-NET-B2C" src="front/bank_img/gongShang.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="ABC-NET-B2C"><img alt="农业银行" name="ABC-NET-B2C" src="front/bank_img/abc.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="CCB-NET-B2C"><img alt="建设银行" name="CCB-NET-B2C" src="front/bank_img/ccb.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="CMBC-NET-B2C"><img alt="中国民生银行" name="CMBC-NET-B2C" src="front/bank_img/cmbc.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="CEB-NET-B2C" ><img alt="光大银行" name="CEB-NET-B2C" src="front/bank_img/guangda.bmp"></td>
							</tr>
							<tr class="br2"><td><br/></td></tr>
							<tr class="onlineBank" style="display: none;">
							  <td><INPUT TYPE="radio" NAME="yh" value="BOCO-NET-B2C"><img alt="交通银行" name="BOCO-NET-B2C" src="front/bank_img/bcc.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="SDB-NET-B2C"><img alt="深圳发展银行" name="SDB-NET-B2C" src="front/bank_img/sfz.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="BCCB-NET-B2C"><img alt="北京银行" name="BCCB-NET-B2C" src="front/bank_img/bj.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="CIB-NET-B2C"><img alt="兴业银行" name="CIB-NET-B2C" src="front/bank_img/cib.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="SPDB-NET-B2C"><img alt="上海浦东发展银行 " name="SPDB-NET-B2C" src="front/bank_img/shpd.bmp"></td>
							  <td><INPUT TYPE="radio" NAME="yh" value="ECITIC-NET-B2C"><img alt="中信银行 " name="ECITIC-NET-B2C" src="front/bank_img/zx.bmp"></td>
							</tr>
							<tr><td><br/></td></tr>
							<tr class="pay1" style="display: none;">
							  <td><INPUT TYPE="submit" value="去付款" class="nextOnline"></td>
							</tr>
							<tr class="pay2" style="display: none;">
							  <td><INPUT TYPE="button" value="确认付款" class="next" onclick="goPay()"></td>
							</tr>
							<tr><td><br/></td></tr>
				     	</table>
				     </form>		
					</div>
				</div>
				
			</div>
			<script type="text/javascript">
			//在线支付
			/* function payOnline(){
				
			} */
			
			//余额支付
			function goPay(){
				var payMoney = $(".pay_money").html();
				var totalPay = parseFloat(payMoney);
				var usersId = $("#Id_hidden").val();
				//console.info(totalPay);
				$.post("front/orderInfoBean_payOrderes.action",{ordTatol:totalPay,usersId:usersId},function(data){
					// alert(data.total);
					if(parseInt($.trim(data.total))==2){
						alert('账户余额不足，支付失败...\n请选择在线支付');
					}else{
						window.location.href = "front/msg.jsp";
					} 
				});
			}
			
			function fukuan() {
				$(".onlineBank").css("display", "none");
				$(".pay1").css("display", "none");
				$(".br2").css("display", "none");
				$("#xmBank").css("display", "block");
				$(".pay2").css("display", "block");
			};
			
			function online() {
				$(".onlineBank").css("display", "block");
				$(".pay1").css("display", "block");
				$("#xmBank").css("display", "none");
				$(".pay2").css("display", "none");
				$(".br1").css("display", "none");
			};
			
			
			</script>
			    
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
			            <p class="online"><a><img src="front/images/sever_out.png"/></a></p>
			        </div>
			    </div>
			    
			    <div class="footer_3">
			    	<div class="footer_3_main">
			        	<div class="footer_log"><img src="front/images/log1.png"/>
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
			            		<img src="front/images/foot1.png"/>诚信网页示范企业
			                </div>
			                <div class="footer_cc">
			            		<img src="front/images/foot2.png"/> 可信网站信用评价
			                </div>
			                <div class="footer_cc">
			            		<img src="front/images/foot3.png"/>网上交易保障中心
			                </div>
			            </div>	
			        </div>
			    </div>
			</div>
    	</div>
		<!--
        	作者：offline
        	时间：2016-01-09
        	描述：点击修改显示修改框
        -->
		<div class="addr_box_body" style="display:none ;">
			<div class="form-section form-section-name">
				<label class="box_name label">&nbsp;姓名</label>
				<input type="text" placeholder="姓名" id="xm"/>
			</div>	
			<div class="form-section form-section-tel">
				<label class="box_tel label">&nbsp;手机号</label>
				<input type="text" placeholder="手机号" id="sjh" />
			</div>
			
			<div class="form-section form-section-province">
				<div id="city_4">
					<select class="prov form_province" id="select_province"></select> 
					<select class="city form_city" disabled="disabled" id="citys"></select>
					<select class="dist form_area form-section" disabled="disabled" id="area"></select>
				</div>
			</div>
			
			<div class="form-section detail_addr">
				<label class="box_detailaddr label">&nbsp;详细地址</label>
				<input type="text" placeholder="详细地址" id="xxdz"/>
			</div>
			<div class="form-section post_code">
				<label class="box_post label">&nbsp;邮政编码</label>
				<input type="text" placeholder="邮政编码" id="yzbm"/>
			</div>
			
			<div class="addr_op">
				<a class="addr_save addr_increase">保存</a>
				<a class="addr_cancel">取消</a>
			</div>
		</div>
	</body>
</html>
