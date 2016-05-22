<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<c:if test="${not empty yeorders }">
	    <c:forEach items="${yeorders }" var="itemms">
		<div class="orderInfo">
			<div>
				<span class="date">${itemms.ordDate }</span><span>|</span>
				<span class="shrName">${itemms.reserve4 }</span><span>|</span>
				<span>订单号:</span><span class="orderId">${itemms.ordId }</span>　　　　　　　　　　　　　　
				<span>订单金额：</span><span class="orderPay">${itemms.ordTatol }</span><span>元</span>
			</div>
		</div>
		</c:forEach>
	</c:if>
	
	<c:if test="${not empty yeordersdetail }">
	    <c:forEach items="${yeordersdetail }" var="itemms">	
		<div id="prodInfo" class="prodInfo">
			<div class="imgDiv">
				<img src="${itemms.goodsPic }" class="prodPic"/>
			</div>
			<div class="prodList">
				<p>
					<span class="prodName">${itemms.goodsName }</span>
				</p>
				<p>
					<span class="prodPrice">${itemms.detaPrice }</span><span>元×</span><span class="prodCount">${itemms.detaNum }</span>
				</p>	
			</div>
		</div>
		</c:forEach>
	</c:if>