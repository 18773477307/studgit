$(function(){
	//点击结算订单页面显示
	
	$(".online").mouseover(function(){
		$(".online img").attr("src","front/images/sever_over.png");
	});
	$(".online").mouseout(function(){
		$(".online img").attr("src","front/images/sever_out.png");
	});
	
	$(".look_order").click(function(){
		$(".order_post_detail").slideToggle("slow");
	});
	
	
	
	
	//订单详细那里的点击修改
	$("#change2").click(function(){
		$(".addr_box,.addr_box_body").fadeIn("slow");
		var username=$(this).parent().parent().find($(".username")).html();
		var tel=$(this).parent().parent().find($(".tel")).html();

		var smallAddr=$(this).parent().parent().find($(".middle")).html();
		var post=$(this).parent().parent().find($(".small")).html();
		
		$("#xm").val(username);
		$("#sjh").val(tel);
		
		$("#xxdz").val(smallAddr);
		$("#yzbm").val(post);
	});
	

	
	
	
	
	/*收货地址那里添加的悬浮事件*/
	$(".no").mouseover(function(){
		$(".no .add_newaddr").css("background","#ccc");
		$(".no").css("border","1px solid #ccc");
	});$(".no").mouseout(function(){
		$(".no .add_newaddr").css("background","#f0f0f0");
		$(".no").css("border","1px solid #f0f0f0");
	});
	
	/*修改地址取消*/
	$(".addr_cancel").click(function(){
		$(".addr_box,.addr_box_body").fadeOut("slow");
	});
	
	/*省市县级联*/
	$("#city_4").citySelect({
    	prov:"湖南", 
    	city:"衡阳",
		dist:"珠晖区",
		nodata:"none"
	});
});

/*收货地址那里修改*/
function showUpdate(dd){
	$(".addrdiv"+dd).children().find(".change").css("color","#f60");
	$(".addrdiv"+dd).css("border","1px solid #eee");
} 
function clearUpdate(dd){
	$(".addrdiv"+dd).children().find(".change").css("color","#eee");
	$(".addrdiv"+dd).css("border","1px solid #f0f0f0");
} 

var tt="";


/*点击修改显示地址修改页面*/
function updateClick(dd){
	$(".addr_box,.addr_box_body").fadeIn("slow");
	tt=$("#change"+dd).parent().parent().attr("id");
	
	var username=$("#change"+dd).parent().parent().find($(".username")).html();
	var tel=$("#change"+dd).parent().parent().find($(".tel")).html();

	var smallAddr=$("#change"+dd).parent().parent().find($(".middle")).html();
	var post=$("#change"+dd).parent().parent().find($(".small")).html();
	
	var addr1=$("#change"+dd).parent().parent().find($(".big1")).html();
	var addr2=$("#change"+dd).parent().parent().find($(".big2")).html();
	var addr3=$("#change"+dd).parent().parent().find($(".big3")).html();
	//console.info(addr1+addr2+addr3)
	$("#xm").val(username);
	$("#sjh").val(tel);
	
	$("#select_province").val(addr1);
	$("#citys").val(addr2);
	$("#area").val(addr3);
	
	$("#xxdz").val(smallAddr);
	$("#yzbm").val(post);
}
$(function(){
	
	/*添加新地址那里点击*/
	$("#add").click(function(){
		$(".addr_box,.addr_box_body").fadeIn("slow");
		tt=$("#add").attr("id");
		
		$("#xm").val("");
		$("#sjh").val("");
		
		$("#xxdz").val("");
		$("#yzbm").val("");
		
	});
//添加新地址保存
$(".addr_increase").click(function(){
	var name=$("#xm").val();
	var tel =$("#sjh").val();
	var addr1=$("#select_province").val();
	var addr2=$("#citys").val();
	var addr3=$("#area").val();
	var addr=addr1+" "+addr2+" "+addr3;
	var addr_detail=$("#xxdz").val();
	var post=$("#yzbm").val();
	
	//alert(name+tel+addr+addr_detail+post);
	if(tt=="add"){
		$.post("addressServlet?d="+new Date(),{op:"addAddr",addr1:addr1,addr2:addr2,addr3:addr3,addr_detail:addr_detail,tel:tel,post:post,name:name},function(data){
			if(parseInt($.trim(data))==1){
				var str="<div class='addr_detail have' style='float:left;'>" +
				"<p><span class='username'>"+name+"</span><span class='addr small'>"+post+"</span></p>" +
				"<p class='tel'>"+tel+"</p>" +
				"<p class='addr big'>"+addr+"</p>" +
				"<p class='addr middle'>"+addr_detail+" </p>" +
				"<p><a class='change'>修改</a></p></div>";
				$("#address").append($(str));
				$(this).find($(".username")).html(name);
				$(this).find($(".tel")).html(tel);
				$(this).find($(".big")).html(addr);
				$(this).find($(".middle")).html(addr_detail);
				$(this).find($(".small")).html(post);
				$(this).find($(".change")).html("修改");
				$(".addr_box_body").fadeOut();
				$(".addr_box").fadeOut();
			}
		});
	}else{
		console.info(tt+"地址编号");
		
		$.post("addressServlet?d="+new Date(),{op:"updateAddr",addr1:addr1,addr2:addr2,addr3:addr3,addr_detail:addr_detail,tel:tel,post:post,name:name,tt:tt},function(data){
			if(parseInt($.trim(data))==1){
				$("#"+tt+"").find(".username").html(name);
				$("#"+tt+"").find(".tel").html(tel);
				$("#"+tt+"").find(".big").html(addr);
				$("#"+tt+"").find(".middle").html(addr_detail);
				$("#"+tt+"").find($(".small")).html(post);
				$(".addr_box_body").fadeOut();
				$(".addr_box").fadeOut();
			}else{
				alert("修改地址失败");
			}
		});
	}
});
});

function usersAddr1(dd) {
	$(".addrdiv"+dd).css("border","1px solid #eee");
	$(".addrdiv"+dd).css("background","#eee");
	$(".addrdiv"+dd).siblings().css("background","#fff");
	var thisAddrId=$(".addrdiv"+dd).attr("id");
	$.post("ordersServlet?d="+new Date(),{op:"orderesaddIdInfo",thisAddrId:thisAddrId},function(data){});
	//alert(thisAddrId);
}
function usersAddr2(dd) {
	
	$(".addrdiv"+dd).css("border","1px solid #eee");
	function showUpdate(dd){
		$(".addrdiv"+dd).children().find(".change").css("display","block");
		$(".addrdiv"+dd).css("border","1px solid #ccc");
	} 
	function clearUpdate(dd){
		$(".addrdiv"+dd).children().find(".change").css("display","none");
		$(".addrdiv"+dd).css("border","1px solid #f0f0f0");
	} 
	
}
	
