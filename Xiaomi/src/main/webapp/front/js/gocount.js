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

/*收货地址那里修改以及背景图片的改变*/
function showUpdate(dd){
	$("#"+dd).children().find(".change").css("display","block");
	$("#"+dd).children().find(".change").css("color","#f60");
} 
function clearUpdate(dd){
	$("#"+dd).children().find(".change").css("color","#eee");
}

/*
$("#"+addrId).hover(
  function () {
	  $("#"+addrId).children().find(".change").css("color","#f60");
	  $("#"+addrId).css("background-image","url(front/images/1BG.png)");
  },
  function () {
	  $("#"+addrId).children().find(".change").css("color","#eee");
	  $("#"+addrId).css("background","url(front/images/3.png)");
  }
);
*/

function sureAddr(addrId){
	$("#"+addrId).css("background","url(front/images/2.png)");
	$("#"+addrId).siblings().css("background","url(front/images/3.png)");
	$("#"+addrId).children().find(".change").css("display","none");
	$("#"+addrId).hover(
	  function () {
		  $("#"+addrId).children().find(".change").css("color","#f60");
	  },
	  function () {
		  $("#"+addrId).children().find(".change").css("display","none");
	  }
	)
	
	var username=$("#"+addrId).children().find($(".username")).html();
	var tel=$("#"+addrId).children().find($(".tel")).html();
	var addr1=$("#"+addrId).children().find($(".big1")).html();
	var addr2=$("#"+addrId).children().find($(".big2")).html();
	var addr3=$("#"+addrId).children().find($(".big3")).html();
	var smallAddr=$("#"+addrId).children().find($(".middle")).html();

	$("#addrId_hidden").val(addrId);
	$("#name_show").html(username);
	$("#tel_show").html(tel);
	$("#addrInfo_show").html(addr1+" "+addr2+" "+addr3+" "+smallAddr);
	
	$(".orderMessage").html(username+" "+tel+" "+addr1+" "+addr2+" "+addr3+" "+smallAddr);
}
//全局变量
var tt="";

/*点击修改显示地址修改页面*/
function updateClick(dd){
	$(".addr_box,.addr_box_body").fadeIn("slow");
	tt=$("#change"+dd).parent().parent().attr("id");
	
	var username=$("#change"+dd).parent().parent().find($(".username")).html();
	var tel=$("#change"+dd).parent().parent().find($(".tel")).html();

	var smallAddr=$("#change"+dd).parent().parent().find($(".middle")).html();
	var post=$("#change"+dd).parent().parent().find($(".postcode")).html();
	
	var addr1=$("#change"+dd).parent().parent().find($(".big1")).html();
	var addr2=$("#change"+dd).parent().parent().find($(".big2")).html();
	var addr3=$("#change"+dd).parent().parent().find($(".big3")).text();
	//console.info(addr1+addr2+addr3)
	
	$("#addrId_hidden").val(dd);
	$("#xm").val(username);
	$("#sjh").val(tel);
	
	$("#select_province").val(addr1);
	$("#citys").val(addr2);
	//console.info(addr3)
	$("#area").val(addr3);
	//alert(post)
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
	var recipient=$("#xm").val();//收件人姓名
	var addrTel =$("#sjh").val();
	var province=$("#select_province").val();
	var city=$("#citys").val();
	var county=$("#area").val();
	var addr=province+" "+city+" "+county;
	var detailAddr=$("#xxdz").val();
	var postcode=$("#yzbm").val();
	var usersId = $("#Id_hidden").val();
	console.info(tt+"===");
	if(tt=="add"){
		$.post("front/address_addAddr.action",{usersId:usersId,province:province,city:city,county:county,detailAddr:detailAddr,addrTel:addrTel,postcode:postcode,recipient:recipient},function(data){
			if(parseInt($.trim(data.total))==1){
				$(".addr_box,.addr_box_body").fadeOut("slow");
				alert("地址添加成功");
				document.location.reload();//页面重新加载
			}
		});
	}else{
		console.info(tt+"地址编号");
		
		$.post("front/address_updateAddr.action",{usersId:usersId,province:province,city:city,county:county,detailAddr:detailAddr,addrTel:addrTel,postcode:postcode,recipient:recipient,addrId:tt},function(data){
			if(parseInt($.trim(data.total))==1){
				$(".addr_box,.addr_box_body").fadeOut();
				alert("地址修改成功");
				document.location.reload();//页面重新加载
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

	
