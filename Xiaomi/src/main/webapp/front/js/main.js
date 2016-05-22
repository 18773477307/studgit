// JavaScript Document
//<!--加载完成-->
$(function(){
	myTime=window.setInterval("show_img()",5000);
	point_mouse();//鼠标在圆点上的事件
	//console.info($(".ui-pager-span>a>span"));
});

var myTime;//图片轮播定时器
var index=1;
var click_index=0;
//图片轮播
function show_img(){
	if(arguments.length>0){//如果有参数传过来
		if(arguments[0]<0){
			index=$(".pro_bigimg>ul>li>img").length-1;//将传过来的参数赋值给index
			console.info(index);
		}else if(arguments[0]>=$(".pro_bigimg>ul>li>img").length){
			index=0;
		}else{
			index=arguments[0];
		}	
	}
	//$(".pro_bigimg>ul>li>img");获取所有的图片 实现图片的轮播
	$(".pro_bigimg>ul>li>img").css("display","none");//将所有的img都设为不显示
	//$(".pro_bigimg>ul>li>img").eq(index).css("display","block");
	$(".ui-pager-span>a>span").css("background","#999");
	$(".pro_bigimg>ul>li>img").eq(index).show();//将第index个图片显示
	$(".ui-pager-span>a>span").eq(index).css("background","#fff");
	click_index=index;
	index++;//index自增  加上定时器,则实现循环
	if(index==$(".pro_bigimg>ul>li>img").length){
		index=0;	
	}

}
//鼠标在圆点上的事件  //绑定鼠标事件 1.鼠标移上事件   2.鼠标移开事件
function point_mouse(){
	$(".ui-pager-span>a>span").mouseover(function(){
		clearInterval(myTime);//清除定时器
		show_img($(".ui-pager-span>a>span").index($(this)));
	}),
	$(".ui-pager-span>a>span").mouseout(function(){
		myTime=window.setInterval("show_img()",5000);
	})
}
//显示上一张图片
function prevImg(){
	clearInterval(myTime);//清除定时器
	show_img((click_index-1));
	myTime=window.setInterval("show_img()",5000);
}
//显示下一张图片
function nextImg(){
	clearInterval(myTime);//清除定时器
	show_img(click_index+1);
	myTime=window.setInterval("show_img()",5000);
}
//<!--图片轮播-->





$(document).ready(function() {
	//查找那里点击边框颜色改变，出现选择框
		$(".search-text").click(function(){
			$(".in-text").css("display","none");
			$(".search-text").css("border","solid #F60 1px");
			$(".search-submit").css("border","solid #F60 1px");
			$(".shop-search").css("display","block");
			$(".search-text").mouseleave(function(){
				$(".search-text").css("border","#F60 solid 1px");
				$(".search-submit").css("border","#F60 solid 1px");
			});
			$(".search-text").mouseenter(function(){
				$(".search-text").css("border","solid #F60 1px");
				$(".search-submit").css("border","solid #F60 1px");
			});
			$(".search-submit").mouseenter(function(){
				$(".search-text").css("border","solid #F60 1px");
				$(".search-submit").css("border","hidden #F60 1px");
				$(".search-submit").css("background-image","url(front/images/search-hover.png)");
			});
			$(".search-submit").mouseleave(function(){
				$(".search-text").css("border","#F60 solid 1px");
				$(".search-submit").css("border","#F60 solid 1px");
				$(".search-submit").css("background-image","url(front/images/search.png)");
			});
			
			
		});
		$(".search-text").blur(function(){
			$(".in-text").css("display","block");
			$(".search-text").css("border","solid #CCC 1px");
			$(".search-submit").css("border","solid #CCC 1px");
			$(".shop-search").css("display","none");
			$(".search-text").mouseenter(function(){
				$(".search-text").css("border","solid #999 1px");
				$(".search-submit").css("border","solid #999 1px");
			});
			$(".search-text").mouseleave(function(){
				$(".search-text").css("border","#CCC solid 1px");
				$(".search-submit").css("border","#CCC solid 1px");
			});
			
			$(".search-submit").mouseenter(function(){
				$(".search-text").css("border","solid #999 1px");
				$(".search-submit").css("border","hidden #999 1px");
				$(".search-submit").css("background-image","url(front/images/search-hover.png)");
			});
			$(".search-submit").mouseleave(function(){
				$(".search-text").css("border","#CCC solid 1px");
				$(".search-submit").css("border","#CCC solid 1px");
				$(".search-submit").css("background-image","url(front/images/search.png)");
			});
		});
	//查找那里放上去边框颜色改变
		$(".search-text").mouseenter(function(){
			$(".search-text").css("border","solid #999 1px");
			$(".search-submit").css("border","solid #999 1px");
		});
		$(".search-text").mouseleave(function(){
			$(".search-text").css("border","#CCC solid 1px");
			$(".search-submit").css("border","#CCC solid 1px");
		});
		
		$(".search-submit").mouseenter(function(){
			$(".search-text").css("border","solid #999 1px");
			$(".search-submit").css("border","hidden #999 1px");
			$(".search-submit").css("background-image","url(front/images/search-hover.png)");
		});
		$(".search-submit").mouseleave(function(){
			$(".search-text").css("border","#CCC solid 1px");
			$(".search-submit").css("border","#CCC solid 1px");
			$(".search-submit").css("background-image","url(front/images/search.png)");
		});
		
	$(".in-text1").mouseover(function(){
		$(".in-text1 span").css("background","#F60");
		$(".in-text1 span").css("color","#FFF");
	});
	$(".in-text1").mouseleave(function(){
		$(".in-text1 span").css("background","#f2f2f2");
		$(".in-text1 span").css("color","#666");
	});
	$(".in-text2").mouseover(function(){
		$(".in-text2 span").css("background","#F60");
		$(".in-text2 span").css("color","#FFF");
	});
	$(".in-text2").mouseleave(function(){
		$(".in-text2 span").css("background","#f2f2f2");
		$(".in-text2 span").css("color","#666");
	});
	
///////////////////////////////////////////////////////////////////////////////////////////////////////
	
		//小米手机显示
		$(".xmsj").mouseover(function(){
			$(".xmsj-show").show();
			//$(".xmsj-show").slideDown(500);
		
		});
		$(".xmsj").mouseout(function(){
			$(".xmsj-show").hide();	
		});

		$(".xmsj-show").mouseover(function(){
			$(".xmsj-show").show();
		});
		$(".xmsj-show").mouseout(function(){
			$(".xmsj-show").hide();	
		});
		
		
		//红米的显示
		$(".hongmi").mouseover(function(){
			$(".hongmi-show").show();	
		});
		$(".hongmi").mouseout(function(){
			$(".hongmi-show").hide();	
		});
		
		$(".hongmi-show").mouseover(function(){
			$(".hongmi-show").show();	
		});
		$(".hongmi-show").mouseout(function(){
			$(".hongmi-show").hide();	
		});
		//平板的显示
		$(".pingban").mouseover(function(){
			$(".pingban-show").show();	
		});
		$(".pingban").mouseout(function(){
			$(".pingban-show").hide();	
		});
		
		$(".pingban-show").mouseover(function(){
			$(".pingban-show").show();	
		});
		$(".pingban-show").mouseout(function(){
			$(".pingban-show").hide();	
		});
		
		//电视盒子的显示
		$(".tv").mouseover(function(){
			$(".tv-show").show();	
		});
		$(".tv").mouseout(function(){
			$(".tv-show").hide();	
		});
		
		$(".tv-show").mouseover(function(){
			$(".tv-show").show();	
		});
		$(".tv-show").mouseout(function(){
			$(".tv-show").hide();	
		});
		
		//路由器的显示
		$(".luyouqi").mouseover(function(){
			$(".luyouqi-show").show();	
		});
		$(".luyouqi").mouseout(function(){
			$(".luyouqi-show").hide();	
		});
		
		$(".luyouqi-show").mouseover(function(){
			$(".luyouqi-show").show();	
		});
		$(".luyouqi-show").mouseout(function(){
			$(".luyouqi-show").hide();	
		});
		
		//智能硬件的显示
		$(".yingjian").mouseover(function(){
			$(".yingjian-show").show();	
		});
		$(".yingjian").mouseout(function(){
			$(".yingjian-show").hide();	
		});
		
		$(".yingjian-show").mouseover(function(){
			$(".yingjian-show").show();	
		});
		$(".yingjian-show").mouseout(function(){
			$(".yingjian-show").hide();	
		});
		
		
		
		//左边列表栏的手机平板显示
		$(".item1").mouseover(function(){
			$(".list-show-hidden1").show();
			$(".item1").css("background","#F60");
		});
		$(".item1").mouseout(function(){
			$(".list-show-hidden1").hide();
			$(".item1").css("background","none");	
		});
		
		$(".list-show-hidden1").mouseover(function(){
			$(".list-show-hidden1").show();
			$(".item1").css("background","#F60");	
		});
		$(".list-show-hidden1").mouseout(function(){
			$(".list-show-hidden1").hide();
			$(".item1").css("background","none");	
		});
	
		//左边列表栏的电视盒子显示
		
		$(".item2").mouseover(function(){
			$(".list-show-hidden2").show();
			$(".item2").css("background","#F60");
		});
		$(".item2").mouseout(function(){
			$(".list-show-hidden2").hide();
			$(".item2").css("background","none");	
		});
		
		$(".list-show-hidden2").mouseover(function(){
			$(".list-show-hidden2").show();
			$(".item2").css("background","#F60");	
		});
		$(".list-show-hidden2").mouseout(function(){
			$(".list-show-hidden2").hide();
			$(".item2").css("background","none");	
		});
		
		//左边列表栏路由器智能硬件子显示
		
		$(".item3").mouseover(function(){
			$(".list-show-hidden3").show();
			$(".item3").css("background","#F60");
		});
		$(".item3").mouseout(function(){
			$(".list-show-hidden3").hide();
			$(".item3").css("background","none");	
		});
		
		$(".list-show-hidden3").mouseover(function(){
			$(".list-show-hidden3").show();
			$(".item3").css("background","#F60");	
		});
		$(".list-show-hidden3").mouseout(function(){
			$(".list-show-hidden3").hide();
			$(".item3").css("background","none");	
		});
		//左边列表移动电源 智能硬件显示
		
		$(".item4").mouseover(function(){
			$(".list-show-hidden4").show();
			$(".item4").css("background","#F60");
		});
		$(".item4").mouseout(function(){
			$(".list-show-hidden4").hide();
			$(".item4").css("background","none");	
		});
		
		$(".list-show-hidden4").mouseover(function(){
			$(".list-show-hidden4").show();
			$(".item4").css("background","#F60");	
		});
		$(".list-show-hidden4").mouseout(function(){
			$(".list-show-hidden4").hide();
			$(".item4").css("background","none");	
		});
		
		//左边列表栏耳机音箱子显示
		
		$(".item5").mouseover(function(){
			$(".list-show-hidden5").show();
			$(".item5").css("background","#F60");
		});
		$(".item5").mouseout(function(){
			$(".list-show-hidden5").hide();
			$(".item5").css("background","none");	
		});
		
		$(".list-show-hidden5").mouseover(function(){
			$(".list-show-hidden5").show();
			$(".item5").css("background","#F60");	
		});
		$(".list-show-hidden5").mouseout(function(){
			$(".list-show-hidden5").hide();
			$(".item5").css("background","none");	
		});
		
		//电池 存储卡
		$(".item6").mouseover(function(){
			$(".list-show-hidden6").show();
			$(".item6").css("background","#F60");
		});
		$(".item6").mouseout(function(){
			$(".list-show-hidden6").hide();
			$(".item6").css("background","none");	
		});
		
		$(".list-show-hidden6").mouseover(function(){
			$(".list-show-hidden6").show();
			$(".item6").css("background","#F60");	
		});
		$(".list-show-hidden6").mouseout(function(){
			$(".list-show-hidden6").hide();
			$(".item6").css("background","none");	
		});
		
		
		//保护套后盖
		$(".item7").mouseover(function(){
			$(".list-show-hidden7").show();
			$(".item7").css("background","#F60");
		});
		$(".item7").mouseout(function(){
			$(".list-show-hidden7").hide();
			$(".item7").css("background","none");	
		});
		
		$(".list-show-hidden7").mouseover(function(){
			$(".list-show-hidden7").show();
			$(".item7").css("background","#F60");	
		});
		$(".list-show-hidden7").mouseout(function(){
			$(".list-show-hidden7").hide();
			$(".item7").css("background","none");	
		});
		
		//贴膜 其他配件
		$(".item8").mouseover(function(){
			$(".list-show-hidden8").show();
			$(".item8").css("background","#F60");
		});
		$(".item8").mouseout(function(){
			$(".list-show-hidden8").hide();
			$(".item8").css("background","none");	
		});
		
		$(".list-show-hidden8").mouseover(function(){
			$(".list-show-hidden8").show();
			$(".item8").css("background","#F60");	
		});
		$(".list-show-hidden8").mouseout(function(){
			$(".list-show-hidden8").hide();
			$(".item8").css("background","none");	
		});
		
		//米兔 服饰
		$(".item9").mouseover(function(){
			$(".list-show-hidden9").show();
			$(".item9").css("background","#F60");
		});
		$(".item9").mouseout(function(){
			$(".list-show-hidden9").hide();
			$(".item9").css("background","none");	
		});
		
		$(".list-show-hidden9").mouseover(function(){
			$(".list-show-hidden9").show();
			$(".item9").css("background","#F60");	
		});
		$(".list-show-hidden9").mouseout(function(){
			$(".list-show-hidden9").hide();
			$(".item9").css("background","none");	
		});
		
		
		//箱包 其他周边
		$(".item10").mouseover(function(){
			$(".list-show-hidden10").show();
			$(".item10").css("background","#F60");
		});
		$(".item10").mouseout(function(){
			$(".list-show-hidden10").hide();
			$(".item10").css("background","none");	
		});
		
		$(".list-show-hidden10").mouseover(function(){
			$(".list-show-hidden10").show();
			$(".item10").css("background","#F60");	
		});
		$(".list-show-hidden10").mouseout(function(){
			$(".list-show-hidden10").hide();
			$(".item10").css("background","none");	
		});
		
		
		//搭配那里隐藏的层
		//1
		$(".dap1").mouseenter(function(){
			$(".dap1-hidden").stop();
			$(".dap1-hidden").animate({top:'210px'},'fast');	
		});
		
		$(".dap1").mouseleave(function(){
			$(".dap1-hidden").stop();
			$(".dap1-hidden").animate({top:'300px'},'fast');	
		});
		//dap2
		$(".dap2").mouseenter(function(){
			$(".dap2-hidden").stop();
			$(".dap2-hidden").animate({top:'210px'},'fast');	
		});
		
		$(".dap2").mouseleave(function(){
			$(".dap2-hidden").stop();
			$(".dap2-hidden").animate({top:'300px'},'fast');	
		});
		//dap6
		$(".dap6").mouseenter(function(){
			$(".dap6-hidden").stop();
			$(".dap6-hidden").animate({top:'210px'},'fast');	
		});
		
		$(".dap6").mouseleave(function(){

			$(".dap6-hidden").stop();
			$(".dap6-hidden").animate({top:'300px'},'fast');	
		});
		//dap7
		$(".dap7").mouseenter(function(){
			$(".dap7-hidden").stop();
			$(".dap7-hidden").animate({top:'210px'},'fast');	
		});
		
		$(".dap7").mouseleave(function(){
			$(".dap7-hidden").stop();
			$(".dap7-hidden").animate({top:'300px'},'fast');	
		});
		//查看全部
		$(".lookall").mouseenter(function(){
			$(".video_lookall").css("color","#F60");
			$(".znyj-icon").css("backgroundColor","#F60");
		});
		$(".lookall").mouseleave(function(){
			$(".video_lookall").css("color","#555");
			$(".znyj-icon").css("backgroundColor","#999");
		});
		
		$(".lookall").mouseenter(function(){
			$(".video_lookall").css("color","#F60");
			$(".video_icon").css("backgroundColor","#F60");
		});
		$(".lookall").mouseleave(function(){
			$(".video_lookall").css("color","#555");
			$(".video_icon").css("backgroundColor","#999");
		});
		
		
		
		//搭配那里页面的切换  热门 耳机音箱 电源 电池存储卡
		$(".title_dap_2").mouseover(function(){
			$(".dap_show_hot").css("display","block");
			$(".dap_show_ejyx").css("display","none");
			$(".dap_show_dy").css("display","none");
			$(".dap_show_dccck").css("display","none");
			$(".title_dap_2 span").css({"border-bottom":"2px solid #F60","color":"#F60"});
			$(".title_dap_3").css({"border":"none","color":"#666"});
			$(".title_dap_4").css({"border":"none","color":"#666"});
			$(".title_dap_5").css({"border":"none","color":"#666"});
			//console.info("热门");
		});
		
		$(".title_dap_3").mouseover(function(){
			$(".dap_show_ejyx").css("display","block");
			$(".dap_show_hot").css("display","none");
			$(".dap_show_dy").css("display","none");
			$(".dap_show_dccck").css("display","none");
			$(".title_dap_3").css({"border-bottom":"2px solid #F60","color":"#F60"});
			$(".title_dap_2 span").css({"border":"none","color":"#666"});
			$(".title_dap_4").css({"border":"none","color":"#666"});
			$(".title_dap_5").css({"border":"none","color":"#666"});
			//console.info("耳机音箱");
		});
		
		$(".title_dap_4").mouseover(function(){
			$(".dap_show_dy").css("display","block");
			$(".dap_show_ejyx").css("display","none");
			$(".dap_show_hot").css("display","none");
			$(".dap_show_dccck").css("display","none");
			$(".title_dap_4").css({"border-bottom":"2px solid #F60","color":"#F60"});
			$(".title_dap_2 span").css({"border":"none","color":"#666"});
			$(".title_dap_3").css({"border":"none","color":"#666"});
			$(".title_dap_5").css({"border":"none","color":"#666"});
			//console.info("电源");
		});
		
		$(".title_dap_5").mouseover(function(){
			$(".dap_show_dccck").css("display","block");
			$(".dap_show_ejyx").css("display","none");
			$(".dap_show_hot").css("display","none");
			$(".dap_show_dy").css("display","none");
			$(".title_dap_5").css({"border-bottom":"2px solid #F60","color":"#F60"});
			$(".title_dap_2 span").css({"border":"none","color":"#666"});
			$(".title_dap_3").css({"border":"none","color":"#666"});
			$(".title_dap_4").css({"border":"none","color":"#666"});
			//console.info("电池存储卡");
		});
		
///////////////////////////////////////////////////
//明星单品那里点击滚动
	
		//下一页
		$(".next_page").mouseover(function(){
			$(".next_page").css("color","#F60");	
			$(".next_page").click(function(){
				//console.info('下一页');
				$(".xmdp").animate({scrollLeft:1226},500);
				$(".next_page").css("color","#666");
				
			});
		});
		
		$(".next_page").mouseout(function(){
			$(".next_page").css("color","#999");
		});
		
		//上一页
		$(".prev_page").mouseover(function(){
			$(".prev_page").css("color","#F60");
			$(".prev_page").click(function(){
				//console.info('上一页');
				$(".xmdp").animate({scrollLeft:-1226},500);
				$(".prev_page").css("color","#666");	
			});
		});
		
		$(".prev_page").mouseout(function(){
			$(".prev_page").css("color","#999");
		});
		
		///视频那里的效果
		$("#video1").mouseover(function(){
			$("#video1 img").attr("src","front/images/video11.png");
		});
		$("#video1").mouseout(function(){
			$("#video1 img").attr("src","front/images/video1.png");
		});
		$("#video2").mouseover(function(){
			$("#video2 img").attr("src","front/images/video22.png");
		});
		$("#video2").mouseout(function(){
			$("#video2 img").attr("src","front/images/video2.png");
		});
		$("#video3").mouseover(function(){
			$("#video3 img").attr("src","front/images/video33.png");
		});
		$("#video3").mouseout(function(){
			$("#video3 img").attr("src","front/images/video3.png");
		});
		$("#video4").mouseover(function(){
			$("#video4 img").attr("src","front/images/video44.png");
		});
		$("#video4").mouseout(function(){
			$("#video4 img").attr("src","front/images/video4.png");
		});
		
		
	//视频
	$("#video1").click(function(){
		window.showModalDialog("front/video.html","","dialogWidth=720px;dialogHeight=550px");
	});
	$("#video2").click(function(){
		window.showModalDialog("front/video.html","","dialogWidth=720px;dialogHeight=550px");
	});
	$("#video3").click(function(){
		window.showModalDialog("front/video.html","","dialogWidth=720px;dialogHeight=550px");
	});
	$("#video4").click(function(){
		window.showModalDialog("front/video.html","","dialogWidth=720px;dialogHeight=550px");
	});
		
	
});
/*
		function change1(){
			$(".xmdp").animate({scrollLeft:1226},500);
		}
		function change2(){
			$(".xmdp").animate({scrollLeft:-1226},500);
		}
		window.setInterval(change2(),3000);
		window.setInterval(change1(),6000);
		
		change1();
		change2();
*/



	