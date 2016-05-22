
$(function(){
	var img_src=window.localStorage.getItem('src');
	var goods_name=window.localStorage.getItem('goods_name');
	
	var isSave;
	var goods=window.localStorage.getItem('goods');
	goods=JSON.parse(goods);
	if(goods!=null && goods!="undefined"){
		var objs=goods.goods;
		for(var i=0;i<objs.length;i++){
			isSave=false;
			//if(objs[i].name==goods_name && objs[i].co)
		}
	}
	
});