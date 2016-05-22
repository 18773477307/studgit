// JavaScript Document
$(function(){
	//板块展示
	$(".smsj").mouseover(function(){
		$(".header_menu_list").show();
	});
	$(".smsj").mouseout(function(){
		$(".header_menu_list").hide();	
	});
	$(".header_menu_list").mouseover(function(){
		$(".header_menu_list").show();
	});
	$(".header_menu_list").mouseout(function(){
		$(".header_menu_list").hide();	
	});
	
	
	//更多
	$(".xmmore").mouseover(function(){
		$(".header_more_list").show();
	});
	$(".xmmore").mouseout(function(){
		$(".header_more_list").hide();	
	});
	$(".header_more_list").mouseover(function(){
		$(".header_more_list").show();
	});
	$(".header_menu_list").mouseout(function(){
		$(".header_more_list").hide();	
	});

	$(".fb1").mouseover(function(){
		$(".pakuai").css('display','block');
		$(".babao").css('display','none');
	});
	$(".fb2").mouseover(function(){
		$(".pakuai").css('display','none');
		$(".babao").css('display','block');
	});


	$(window).on('scroll',function(){
		var st = $(document).scrollTop();
		if( st>0 ){
			if( $('#main-container').length != 0  ){
				var w = $(window).width(),mw = $('#main-container').width();
				if( (w-mw)/2 > 70 )
					$('#go-top').css({'left':(w-mw)/2+mw+20});
				else{
					$('#go-top').css({'left':'auto'});
				}
			}
			$('#go-top').fadeIn(function(){
				$(this).removeClass('dn');
			});
		}else{
			$('#go-top').fadeOut(function(){
				$(this).addClass('dn');
			});
		}	
	});
	
	$('#go-top .go').on('click',function(){
		$('html,body').animate({'scrollTop':0},500);
	});
	
	$('#go-top .uc-2vm').hover(function(){
		$('#go-top .uc-2vm-pop').removeClass('.dn');
	},function(){
		$('#go-top .uc-2vm-pop').addClass('.dn');
	});
	

	var rollSet = $('.reply');
    var offset = rollSet.offset();
    var fheight = $("#footer").height() + $("#left_topic_comment").height()+300;   //底部到说说看法那里的高度
    $(window).scroll(function() {
        var scrollTop = $(window).scrollTop();
        var scrollBtm = $(document).height() - scrollTop-300;
       
	    if (scrollBtm > fheight) {
			rollSet.removeClass('absolute').addClass('fixed');
		} else {
			rollSet.removeClass('fixed').addClass('absolute');
		}
		//回到顶部的显示与隐藏
		if(scrollTop==0){
			$(".return").css("display","none");
		}else{
			$(".return").css("display","block");
		}
		 
    });
	
	$(".return").click(function(){
	    var scrollTop = $(window).scrollTop();
		document.documentElement.scrollTop = document.body.scrollTop =0;
	});
	
	
	
	
	

});
	