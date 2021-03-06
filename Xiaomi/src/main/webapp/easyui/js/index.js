$(function(){
	//变化的时钟
	function show_time(){
		//实例化对象
		var date=new Date();
		var year=date.getFullYear();
		var month=date.getMonth()+1;
		var days=date.getDate();
		var weekOfDay=date.getDay();
		var hour=date.getHours();
		var minute=date.getMinutes();
		var second=date.getSeconds();
		var weekDays=new Array();
		weekDays[0]='星期日';
		weekDays[1]='星期一';
		weekDays[2]='星期二';
		weekDays[3]='星期三';
		weekDays[4]='星期四';
		weekDays[5]='星期五';
		weekDays[6]='星期六'; 
		var str=year+'年'+month+'月'+days+'日&nbsp;&nbsp;'+hour+':'+minute+':'+second+'&nbsp;&nbsp;&nbsp;'+weekDays[weekOfDay];
		$("#mytext").html(str);
		window.setTimeout(show_time,1000);	//每隔一秒刷新一次
	}
	//调用时间
	show_time();
	//小米主题
	$('#index_content').tabs('add',{
		title:'小米信息',
		selected:true,
		closable:false,
		href:"back/xiaomi.html"
	});
	
	$("#menu-tree").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="admin_manager"){  //说明是管理员信息管理
				//判断管理员信息管理界面是否打开
				if(obj.tabs("exists","管理员信息管理")){ //则选中
					obj.tabs("select","管理员信息管理");
				}else{
					obj.tabs('add',{
						title:"管理员信息管理",
						closable:true,
						fit:true,
						href:"back/manager.html"
					});	
				}
			} else if (node.id=="users_usersInfo"){  //说明是会员信息管理
				//判断会员信息管理界面是否打开
				if(obj.tabs("exists","会员信息管理")){ //则选中
					obj.tabs("select","会员信息管理");
				}else{
					obj.tabs('add',{
						title:"会员信息管理",
						closable:true,
						fit:true,
						href:"back/usersinfo.html"
					});	
				}
			} else if (node.id=="users_address"){  //说明是会员信息管理
				//判断会员信息管理界面是否打开
				if(obj.tabs("exists","会员地址信息管理")){ //则选中
					obj.tabs("select","会员地址信息管理");
				}else{
					obj.tabs('add',{
						title:"会员地址信息管理",
						closable:true,
						fit:true,
						href:"back/usersaddr.html"
					});	
				}
			}
			
		}
	});
	
	$("#menu-tree1").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="admin_typegoods"){//说明是新闻类型信息管理
				if(obj.tabs("exists","商品类型管理")){//则选中
					obj.tabs("select","商品类型管理");
				}else{
					obj.tabs('add',{
						title:"商品类型管理",
						closable:true,
						fit:true,
						href:'back/typegoods.html'
					});
				}
			}else if(node.id=="admin_brand"){//说明是品牌息管理
				if(obj.tabs("exists","商品品牌管理")){//则选中
					obj.tabs("select","商品品牌管理");
				}else{
					obj.tabs('add',{
						title:"商品品牌管理",
						closable:true,
						fit:true,
						href:'back/brand.html'
					});
				}
			}
			
		}
	});
	
	
	$("#menu-tree2").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="admin_datadict"){//说明是查看字典信息管理
				if(obj.tabs("exists","查看字典")){//则选中
					obj.tabs("select","查看字典");
				}else{
					obj.tabs('add',{
						title:"查看字典",
						closable:true,
						fit:true,
						href:'back/datadict.html'
					});
				}
			}
			
		}
	});
	
	$("#menu-tree3").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="admin_goodsinfo"){//说明是商品评论信息管理
				if(obj.tabs("exists","商品信息管理")){//则选中
					obj.tabs("select","商品信息管理");
				}else{
					obj.tabs('add',{
						title:"商品信息管理",
						closable:true,
						fit:true,
						href:'back/goods.html'
					});
				}
			}else if(node.id=="admin_goodsDetailinfo"){//说明是商品评论信息管理
				if(obj.tabs("exists","详细信息管理")){//则选中
					obj.tabs("select","详细信息管理");
				}else{
					obj.tabs('add',{
						title:"详细信息管理",
						closable:true,
						fit:true,
						href:'back/goodsDetail.html'
					});
				}
			}else if(node.id=="admin_goodsinfo_research"){//说明是商品评论信息管理
				if(obj.tabs("exists","商品信息查询")){//则选中
					obj.tabs("select","商品信息查询");
				}else{
					obj.tabs('add',{
						title:"商品信息查询",
						closable:true,
						fit:true,
						href:'back/goodsResearch.html'
					});
				}
			}
			
		}
	});
	
	
	$("#menu-tree4").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="admin_goodsappr"){//说明是商品评论信息管理
				if(obj.tabs("exists","商品评论")){//则选中 
					obj.tabs("select","商品评论");
				}else{
					obj.tabs('add',{
						title:"商品评论",
						closable:true,
						fit:true,
						href:'back/goodsappr.html'
					});
				}
			}else if(node.id=="admin_artcomment"){
				if(obj.tabs("exists","文章评论")){
					obj.tabs("select","文章评论");
				}else{
					obj.tabs('add',{
						title:"文章评论",
						closable:true,
						fit:true,
						href:'back/artcomment.html'
					});
				}
			}else if(node.id=="admin_reply"){
				if(obj.tabs("exists","官方回复")){
					obj.tabs("select","官方回复");
				}else{
					obj.tabs('add',{
						title:"官方回复",
						closable:true,
						fit:true,
						href:'back/reply.html'  
					});
				}
			}
		}
	});
	
	$("#menu-tree5").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="admin_video_goods"){
				if(obj.tabs("exists","视屏查看")){
					obj.tabs("select","视屏查看");
				}else{
					obj.tabs('add',{
						title:"视屏查看",
						closable:true,
						fit:true,
						href:'back/video_goods.html'
					});
				}
			}else if(node.id=="admin_video_add"){
				if(obj.tabs("exists","视屏维护")){
					obj.tabs("select","视屏维护");
				}else{
					obj.tabs('add',{
						title:"视屏维护",
						closable:true,
						fit:true,
						href:'back/video_add.html'
					});
				}
			}
		}
	});
	
	$("#menu-tree6").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="shop_detail"){  //说明是商品评论信息管理
				if(obj.tabs("exists","购物车管理")){//则选中
					obj.tabs("select","购物车管理");
				}else{
					obj.tabs('add',{
						title:"购物车管理",
						closable:true,
						fit:true,
						href:'back/shopDetail.html'
					});
				}
			}else if(node.id=="order_manager"){//说明是商品评论信息管理
				if(obj.tabs("exists","订单管理")){//则选中
					obj.tabs("select","订单管理");
				}else{
					obj.tabs('add',{
						title:"订单管理",
						closable:true,
						fit:true,
						href:'back/orders.html'
					});
				}
			}
			
		}
	});
	
	$("#menu-tree7").tree({
		onClick:function(node){
			var obj=$('#index_content');
			if(node.id=="admin_add_article"){
				if(obj.tabs("exists","添加文章")){
					obj.tabs("select","添加文章");
				}else{
					obj.tabs('add',{
						title:"添加文章",
						closable:true,
						fit:true,
						href:'back/add_article.html'
					});
				}
			}else if(node.id=="admin_show_article"){
				if(obj.tabs("exists","文章浏览")){
					obj.tabs("select","文章浏览");
				}else{
					obj.tabs('add',{
						title:"文章浏览",
						closable:true,
						fit:true,
						href:'back/show_article.html'
					});
				}
			}
		}
	});

	
});
