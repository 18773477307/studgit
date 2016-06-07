<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<div id="top1">
    <div class="top1_1"><img src="front/images/Log.png"/></div>
    <div class="top1_2">
    	
    	<ul>
    		<li class="log_side"><a href=""></a></li>
            <li class="xmsj"><a>小米手机</a></li>
            <!--小米手机隐藏的层-->
            <div class="xmsj-show">  
            	<div class="xmsj-show1">
            		<c:forEach items="${allPhone }" var="item">
                		<c:if test="${item.goodsPlace eq '顶部,小米1' }">
		                	<div class="xmsj-show-img">
			                	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
			                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
			                	</a>
		                	</div>
		                	<p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
		                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
		             	</c:if>
                    </c:forEach>
                </div>
                <div class="top1-line"></div>
                <div class="xmsj-show2">
               		<c:forEach items="${allPhone }" var="item">
               			<c:if test="${item.goodsPlace eq '顶部,小米2' }">
		                	<div  class="xmsj-show-img">
		                		<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
	
		                			<img id="ssimg" src="../uploadpic/${item.goodsminPic}"/>
		                		</a>
		                	</div>
		                	<p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title">${item.goodsName }</a></p>
		                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
                   		</c:if>
                   	</c:forEach>
                </div>
                <div class="top1-line"></div>
                <div class="xmsj-show3">
               		<c:forEach items="${allPhone }" var="item">
               			<c:if test="${item.goodsPlace eq '顶部,小米3' }">
		                	<div  class="xmsj-show-img">
		                		<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
		                			<img id="ssimg" src="../uploadpic/${item.goodsminPic}"/>
		                		</a>
		                	</div>
		                	<p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title">${item.goodsName }</a></p>
		                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
                   		</c:if>
                   	</c:forEach>
                </div>
            </div>
                  
            <li class="hongmi"><a>红米</a></li>
            <!--红米隐藏的层-->
            <div class="hongmi-show">
            	<div class="hongmi-show1">
                	<c:forEach items="${allPhone }" var="item">
                		<c:if test="${item.goodsPlace eq '顶部,红米1' }">
		                	<div class="xmsj-show-img">
			                	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
			                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
			                	</a>
		                	</div>
		                	<p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
		                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
		             	</c:if>
                    </c:forEach>
                </div>
                <div class="top1-line"></div>
                <div class="hongmi-show2">
                	<c:forEach items="${allPhone }" var="item">
                		<c:if test="${item.goodsPlace eq '顶部,红米2' }">
		                	<div class="xmsj-show-img">
			                	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
			                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
			                	</a>
		                	</div>
		                	<p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
		                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
		             	</c:if>
                    </c:forEach>
                </div>
            </div>
            
            <li class="pingban"><a>平板</a></li>
                <div class="pingban-show">
                    <div class="pingban-show1">
	                    <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,平板1' }">
		                        <div class="pingban-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>    
                    </div>
                    <div class="top1-line"></div>
                    <div class="pingban-show2">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,平板2' }">
		                        <div class="pingban-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>  
                    </div>
                </div>
            <li class="tv"><a>电视&middot;盒子<a></li>
            	<!--电视盒子隐藏的层-->
                <div class="tv-show">
                    <div class="tv-show1">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,电视1' }">
		                        <div class="tv-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach> 
                    </div>
                    <div class="top1-line"></div>
                    <div class="tv-show2">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,电视2' }">
		                        <div class="tv-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                    <div class="top1-line"></div>
                    <div class="tv-show3">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,电视3' }">
		                        <div class="tv-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                </div>
            <li class="luyouqi"><a>路由器</a></li>
            	<!--路由器隐藏的层-->
                <div class="luyouqi-show">
                    <div class="luyouqi-show1">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,路由器1' }">
		                        <div class="luyouqi-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                    <div class="top1-line"></div>
                    <div class="luyouqi-show2">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,路由器2' }">
		                        <div class="luyouqi-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                    <div class="top1-line"></div>
                    <div class="luyouqi-show3">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,路由器3' }">
		                        <div class="luyouqi-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                </div>
            <li class="yingjian"><a>智能硬件</a></li>
            	<!--智能硬件隐藏的层-->
                <div class="yingjian-show">
                    <div class="yingjian-show1">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,智能硬件1' }">
		                        <div class="yingjian-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                    <div class="top1-line"></div>
                    <div class="yingjian-show2">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,智能硬件2' }">
		                        <div class="yingjian-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                    <div class="top1-line"></div>
                    <div class="yingjian-show3">
                        <c:forEach items="${allPhone }" var="item">
	                		<c:if test="${item.goodsPlace eq '顶部,智能硬件3' }">
		                        <div class="yingjian-show-img">
		                        	<a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }'>
				                		<img id="testimg" src="../uploadpic/${item.goodsminPic}"/>
				                	</a>
		                        </div>
		                        <p><a href='goodsServlet?op=getGoodsGformatName&goosdName=${item.goodsName }' class="top1-title" id="top1-titles">${item.goodsName }</a></p>
			                    <p><span class="top1-price">${fn:substring(item.goodsminPrice,0,fn:indexOf(item.goodsminPrice, '.'))}元起</span></p>
	                    	</c:if>
	                    </c:forEach>
                    </div>
                </div>
            <li class="fuwu"><a target="_blank" href="front/shop.jsp">商城</a></li>
            <li class="shequ"><a target="_blank" href="articleServlet?op=indexDataInfo">社区</a></li>
        </ul>
    </div>
    
    <script type="text/javascript">
    <%--
    function img_finds() {
		var goodsName = $('#search').val();
		$("form").submit(function(e){
			  $.post("goodsServlet",{op:"getTypeGoodsInfo",goodsName:goodsName},function(){
				  alert("dd")
					location.href="front/shop.jsp";
				});
			});
	}    
    --%>
   
    </script>
    
    <div id="top1_3">
    	<form method="post" target="_blank" action="mainFind" >
        	<input class="search-text" id="search" type="search" data-search-config="{'defaultWords':[{'Key':'移动电源','Rst':22},{'Key':'空气净化器','Rst':2},{'Key':'小米手环','Rst':5},{'Key':'WiFi','Rst':7},{'Key':'自拍杆','Rst':4},{'Key':'小米体重秤','Rst':1},{'Key':'小蚁摄像机','Rst':2},{'Key':'运动相机','Rst':2},{'Key':'智能插座','Rst':5},{'Key':'配件优惠套装','Rst':15}]}" autocomplete="off" name="keyword" /><input type="submit" value="" class="search-submit"/>
            <div class="in-text"><a href="" class="in-text1"><span>&nbsp;小米手机&nbsp;</span></a><a href="" class="in-text2"><span>&nbsp;耳机&nbsp;</span></a></div>
            <div class="shop-search">
                <ul>
                    <li class="search-item"><a href="">移动电源<span>约有22件</span></a></li>
                    <li class="search-item"><a href="">移动电源<span>约有2件</span></a></li>
                    <li class="search-item"><a href="">移动电源<span>约有12件</span></a></li>
                    <li class="search-item"><a href="">移动电源<span>约有8件</span></a></li>
                    <li class="search-item"><a href="">移动电源<span>约有9件</span></a></li>
                    <li class="search-item"><a href="">移动电源<span>约有5件</span></a></li>
                    <li class="search-item"><a href="">移动电源<span>约有2件</span></a></li>
                    <li class="search-item"><a href="">移动电源<span>约有4件</span></a></li>
                </ul>
            </div>           
        </form>
        
    </div>
</div>
