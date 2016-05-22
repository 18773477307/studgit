$(function(){
	var type1=$("#model_1").html();
	var type2=$("#model_2").html();
	var type3=$("#model_3").html();
	

	var goodsName=$(".big_title1").html();
	
	//第一个选择的效果切换
	 $(".model0").click(function(){
 		$(".model0").removeClass("active");
 		$(this).addClass("active");
 		dirName=$(this).attr("title");
 		$(".model1").removeClass("lock");
 		$(".model1").removeClass("active");
 		$(".model2").removeClass("active");
 		$(".pro_choice_info").html(goodsName+"  "+dirName);
 		$.post("goodsServlet",{op:"getGmemoryName",dirName:dirName,goodsName:goodsName},function(data){
 			//ajaxobj=eval("("+data+")");   //把data转为  json对象
 			//alert(ajaxobj)
 			var number = data.memory.length;
 			$("#gmemory li").hide();
 			for(var i=0;i<number;i++){
 				var j=i+1;
 				
 				$("#"+j).html(data.memory[i].dirName);
 				$("#" + j).show();
 			}
 			
 			var num = data.color.length;
 			$("#gcolor li").hide();
 			for(var p=0;p<num;p++){
 				var q=p+1;
 				
 				$("#g"+q).html(data.color[p].dirName);
 				$("#g" + q).show();
 			}
		},'json');
 		
 		$(".model1").click(function(){
 			$(".model1").removeClass("active");
 			$(".model2").removeClass("active");
 			$(this).addClass("active");
 			//var memoryName=$(this).attr("title");
 			var typeName=$(".pro_choice_info").html();
 			var memoryName=$(this).html();
 			//alert(memoryName);
 			$(".pro_choice_info").text("");
 			//console.info(memoryName);
 			$(".model2").removeClass("lock");
 			$(".model2").removeClass("active");
 			//var typeName=$(".pro_choice_info").html();
 			$(".pro_choice_info").html(typeName+"  "+memoryName);
 			
 			
 			$(".model2").click(function(){
 				$(this).addClass("active");
 				var colorName=$(this).html();
 				var value=$(".pro_choice_info").html();
 				$(".pro_choice_info").html(value+"  "+colorName);
 				var str=$(".pro_choice_info").html();
 				
 				var arr=str.split("  ");
 				var typeName=arr[1];
 				var memoryName=arr[2];//
 				$.post("goodsServlet",{op:"getGoodsPicture",typeName:typeName,memoryName:memoryName,colorName:colorName,goodsName:goodsName},function(data){
 					//console.info(data);
 					//alert(data.goodPic[0]);
 					var photo = data.goodsPic[0].goodsdescr;
 					var price = data.goodsPric[0].goodsPrice;
 					var goodId = data.goodsPric[0].goodsId;	//商品Id
 					$("#phone_picture").attr("src",photo);
 					$(".pro_choice_info").text(str+"  "+price+"元");
 				},'json');
 			});
 		});
 		
 	});
	 
	 
	$(".model1").click(function(){
		$(".model1").removeClass("active");
		$(this).addClass("active");
		//memoryName=$(this).attr("title");
		var typeName=$(".pro_choice_info").html();
		var memoryName=$(this).html();
		//console.info(memoryName);
		$(".model2").removeClass("lock");
		$(".model2").removeClass("active");
		//var typeName=$(".pro_choice_info").html();
		$(".pro_choice_info").text(typeName+"  "+memoryName);
		/*$.post("goodsServlet",{op:"getGcolorName",memoryName:memoryName,typeName:typeName,goodsName:goodsName},function(data){
			ajaxobj=eval("("+data+")");   //把data转为  json对象
 			//console.info(ajaxobj1)
			var num = ajaxobj.gcolor.length;
			alert(num);
			$("#gcolor li").hide();
 			for(var p=0;p<num;p++){
 				var q=p+1;
 				
 				$("#g"+q).html(ajaxobj.gcolor[p].dirName);
 				$("#g" + q).show();
 			}
		});*/
		
	});
	
	$(".model2").click(function(){
		$(".model2").removeClass("active");
		$(this).addClass("active");
		var colorName=$(this).html();
		var value=$(".pro_choice_info").html();
		$(".pro_choice_info").text(value+"  "+colorName);
		var str=$(".pro_choice_info").html();
		//alert("11111");
		$.post("goodsServlet",{op:"getGoodsPicture",colorName:colorName,goodsName:goodsName},function(data){
			alert(data);
			//ajaxobj=eval(  data  );   //把data转为  json对象
			//alert(ajaxobj);
			var photo= data.picture[0].goodsdescr;
			console.info(photo)
		//	alert(photo);
			$("#phone_picture").attr("src",photo);
		},'json');
		var arr=str.split("  ");
		var typeName=arr[1];
		var memoryName=arr[2];
		$.post("goodsServlet",{op:"getGoodsPrice",goodsName:goodsName,typeName:typeName,memoryName:memoryName,colorName:colorName},function(data){
			//ajaxobj=eval("("+data+")");   //把data转为  json对象
			//alert("jj")
			//alert(ajaxobj.nihao);
			//var price = ajaxobj.goodspri[0].goodsPrice;
			//alert(price);
			//$(".pro_choice_info").text(str+"  "+price);
		},'json');
	});

	
	$(".pro_info_title").click(function(){
		$(".down_div").toggle("slow");
	});
	
	$("#product").click(function(){
		$(".pro_intro").css("display","block");
		$(".separate_child").css("display","none");
		$(this).css("color","#ff6700");
		$("#evluate").css("color","#757575");
	});
	
	$("#evluate").click(function(){
		$(".pro_intro").css("display","none");
		$(".separate_child").css("display","block");
		$(this).css("color","#ff6700");
		$("#product").css("color","#757575");
	});
	
	
	$("#product1").click(function(){
		$(".pro_intro").css("display","block");
		$(".separate_child").css("display","none");
		$(this).css("color","#ff6700");
		$("#evluate1").css("color","#757575");
	});
	
	$("#evluate1").click(function(){
		$(".pro_intro").css("display","none");
		$(".separate_child").css("display","block");
		$(this).css("color","#ff6700");
		$("#product1").css("color","#757575");
	});
	
	
	$("#buy_pro_btn").click(function(){
		var content=$("#pro_choice_info").html();
		if(content==null){
			var speed=100;//滑动的速度
			$('body,html').animate({ scrollTop: 206 }, speed);
			return false;
		}
	});
	
	$(".more1").mouseover(function(){
		$(this).css("background","#E0E0E0");
	});
	$(".more1").mouseout(function(){
		$(this).css("background","#eee");
	});
	
	
	
	
});

function move(){
	var height=$(document).scrollTop();
	if(height>1120){
		$(".float").slideDown(500);
	}else if(height<=1120){
		$(".float").slideUp(100);
	}
}
window.onscroll=move;