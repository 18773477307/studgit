--blob:二进制lob，为二进制数据，最长可达4GB，存贮在数据库中。
--clob:字符lob,字符数据,最长可以达到4GB,存贮在数据库中。
commit;
--1-------------------------------------------------------------------------------------------------------------------------------------
--用户信息表
create table usersInfo(
       usersId int primary key,           --用户编号
       usersName varchar2(40) not null,   --用户姓名
       usersTel varchar2(20) unique,      --用户电话
       usersEmail varchar2(20) unique,    --用户邮箱
       usersPwd varchar2(20) not null,    --用户密码
       usersIDCard varchar2(30) unique,   --用户身份证号 
       usersSex int,					  --性别  0：男    1:女
       usersBirth date,                   --用户生日
       usersPhoto varchar2(100),          --用户头像
       usersbalance number(8,2),         --用户余额   这里改了  注意
       usersSta int,                      --用户状态 (0表示冻结；1表示可用)
	   reserve1 varchar2(20),		  	  --备用字段 
	   reserve2 varchar2(20)          	  --备用字段
);
create sequence seq_usersinfo_usersId start with 1001 increment by 1;
--插入-------------------------------------------------------------------------------------------
insert into usersinfo values (seq_usersinfo_usersId.nextVal,'yy','15236523256','123456@qq.com','aaaaaa','543673333344445125',1,TO_DATE('2010-02-02','yyyy-mm-dd'),'',1500,1,'','');
insert into usersinfo values (seq_usersinfo_usersId.nextVal,'ss','18976352125','123789@qq.cn','aaaaaa','543673334444334444',1,TO_DATE('2010-02-02','yyyy-mm-dd'),'',1500,1,'','');
insert into usersinfo values (seq_usersinfo_usersId.nextVal,'aa','15111523256','12356@qq.com','aaaaaa','543673222344445125',1,TO_DATE('2010-02-02','yyyy-mm-dd'),'',1500,1,'','');
insert into usersinfo values (seq_usersinfo_usersId.nextVal,'bb','18222252125','45123@qq.cn','aaaaaa','543673337844334444',1,TO_DATE('2010-02-02','yyyy-mm-dd'),'',1500,1,'','');
insert into usersinfo values (seq_usersinfo_usersId.nextVal,'dd','18852052125','5643@qq.cn','aaaaaa','543673745844378454',1,TO_DATE('2010-02-02','yyyy-mm-dd'),'',1500,1,'','');

alter table usersinfo modify(usersbalance number(8,2))
select usersbalance from usersInfo where usersId = 1011
select b.* from (select a.*,rownum rn from 
		(select * from usersInfo order by usersId) a where 10>=rownum)b where rn>0 order by usersId asc
--查询--------------------------------------------------------------------------------------------
select * from usersinfo;
--删除--------------------------------------------------------------------------------------------
drop sequence seq_usersinfo_usersId
delete from usersInfo where usersId=1001,usersId=1002,usersId=1003
drop table usersinfo;

update usersinfo set  usersbalance=15000 where usersId = 1007
--2----------------------------------------------------------------------------------------------------
--用户收获地址
create table  address(
       addrId int primary key,     --收货地址编号
       usersId int        --用户编号 引入外键
               constraint FK_address_usersinfo_usersId references usersinfo(usersId),
       province varchar2(20),      --省                  
       city varchar2(20),          --市                                  
       county varchar2(20),        --县
       detailAddr varchar2(1000),  --详细地址
       addrTel varchar2(20),       --收件人电话
       defaultaddr int,			   --默认收货地址（第一个1个收货的时候表示默认，多个时候用1表示默认，0表示普通）
	   postcode varchar2(20),	   --邮编
	   recipient varchar2(20),      --收件人名字（如果用户没有填写，就是用户本人）
	   reserve3 varchar2(20),	   --备用字段
	   reserve4 varchar2(20)       --备用字段
);
select a.*,u.usersName from address a,usersinfo u where a.usersId = u.usersId and a.usersId =1011
update address set recipient='张三',detailAddr ='霊湖车站'  where addrId=1004
delete from address where addrId=1004
create sequence seq_address_addrId start with 1001 increment by 1;
select u.usersName,province,city,county,detailAddr,reserve4,addrTel from (select a.*,rownum rn from (select * from address order by addrId)a where rownum<=10)b,usersInfo u where rn>0 and b.usersId=u.usersId
insert into address values (seq_address_addrId.nextval,1007,'湖南','衡阳市','珠晖区','湖南工学院','18773477307',1,'421002','彭健','','');
insert into address values (seq_address_addrId.nextval,1011,'湖南','湘潭市','雨湖区','易俗河镇','18973416800',0,'411208','刘娟','','');
insert into address values (seq_address_addrId.nextval,1011,'湖南','衡阳市','珠晖区','湖南工学院','13273219584',0,'421002','傻妞','','');
update address set province='湖南' ,city = '衡阳市',county='珠晖区',defaultaddr=0 where usersId=1011
---------------------------------------------------------------------------------------------
select a.*,rownum rn from (select * from address order by addrId)a where rownum<=9
select u.usersName,province,city,county from (select a.*,rownum rn from (select * from address order by addrId)a where rownum<=9)b,usersInfo u where rn>0 and b.usersId=u.usersId and usersName like '%2%'
select b.addrTel from (select a.*,rownum rn from (select * from address order by addrId)a where rownum<=9)b where rn>0
select * from 
select u.usersName,b.* from (select a.*,rownum rn from (select * from address order by addrId)
		a where rownum<=10)b,usersInfo u where rn>0 and b.usersId=u.usersId and
		b.province like '%湖%' and b.city like '%阳%' and b.county like '%珠晖%' and u.usersName like '%a%'
-------------------------------------------------------------------------------------------------
--插入--------------------------------------------------------------------------------------------
insert into address values (seq_address_addrId.nextval,1008,'湖南','湘潭市','雨湖区','湘潭县石潭镇','18973417307',0,'421002','刘娟','','');

insert into address values (seq_address_addrId.nextval,1002,'湖南','湘潭','雨湖','详细地址一号','18973417307',0,'421002','刘娟','','');
insert into address values (seq_address_addrId.nextval,1003,'湖南','衡阳','珠晖','湖南工学院','18973417307',0,'421002','刘娟','','');
insert into address values (seq_address_addrId.nextval,1004,'贵州','贵阳','南明区','详细地址二号','18973417307',0,'421002','刘娟','','');
-----------------------------------------------------------------------------------------------
--查询--------------------------------------------------------------------------------------------
select * from address;
select * from address where province='贵州' and county like '%区'  or county like '%县'
--删除--------------------------------------------------------------------------------------------
drop table address;
drop sequence seq_address_addrId;
--3---------------------------------------------------------------------------------------------------
--管理员信息表  编号从1开始的
create table manager(
       manaId int primary key,  --管理员编号
       manaName varchar(20) not null,    --管理员姓名
       manaSex int,      				 --性别  0：男    1:女
       manaPwd varchar2(20) not null,    --管理员密码
       manaSta	int,					  --状态
	   reserve5 varchar2(20),		     --备用字段
	   reserve6 varchar2(20)             --备用字段
);
create sequence seq_manager_manaId start with 1 increment by 1;
--插入-------------------------------------------------------------------------------------------
insert into manager values (seq_manager_manaId.nextval,'ls',1,'aaaaaa',1,'','');
insert into manager values (seq_manager_manaId.nextval,'lj',0,'aaaaaa',1,'','');
insert into manager values (seq_manager_manaId.nextval,'pj',1,'aaaaaa',1,'','');
insert into manager values (seq_manager_manaId.nextval,'pxt',1,'aaaaaa',1,'','');
update manager set manaSta=1 where manaId =2
select b.* from (select a.*,rownum rn from 
		(select * from Manager order by manaId) a where 10>=rownum)b where rn>0 order by manaId asc
--查询--------------------------------------------------------------------------------------------
select * from manager;
--删除--------------------------------------------------------------------------------------------

drop table manager;
drop sequence seq_manager_manaId
--4--------------------------------------------------------------------------------------------------
--数据字典
create table datadict(
       dirId int primary key,         --编号      
       dirName varchar2(100),         --名称   
       dirType int                    --1.型号  2.颜色   3.网络制式  4.网络版本（移动   联通   电信    全网通） 5内存大小 6 电视尺寸 7 电池型号  
);
create sequence seq_datadict_dirId start with 1 increment by 1;
--插入-----------------------------------------------------------------------------------------------
insert into datadict values(seq_datadict_dirId.nextval,'标准版',1);   
insert into datadict values(seq_datadict_dirId.nextval,'女神版',1);  
insert into datadict values(seq_datadict_dirId.nextval,'顶配版',1);  
insert into datadict values(seq_datadict_dirId.nextval,'无',1);  

insert into datadict values(seq_datadict_dirId.nextval,'竹纹',2);   
insert into datadict values(seq_datadict_dirId.nextval,'白色',2);   
insert into datadict values(seq_datadict_dirId.nextval,'黑色',2);   
insert into datadict values(seq_datadict_dirId.nextval,'粉色',2);	
insert into datadict values(seq_datadict_dirId.nextval,'蓝色',2);	 
insert into datadict values(seq_datadict_dirId.nextval,'金色',2);	
insert into datadict values(seq_datadict_dirId.nextval,'无',2);	

insert into datadict values(seq_datadict_dirId.nextval,'双网通 ',3);  
insert into datadict values(seq_datadict_dirId.nextval,'全网通',3);		
insert into datadict values(seq_datadict_dirId.nextval,'移动 ',3);  		
insert into datadict values(seq_datadict_dirId.nextval,'联通',3);     
insert into datadict values(seq_datadict_dirId.nextval,'电信',3);	
insert into datadict values(seq_datadict_dirId.nextval,'无',3);	

insert into datadict values(seq_datadict_dirId.nextval,'2G',4);			
insert into datadict values(seq_datadict_dirId.nextval,'3G ',4);  	
insert into datadict values(seq_datadict_dirId.nextval,'4G',4);      
insert into datadict values(seq_datadict_dirId.nextval,'5G',4);		
insert into datadict values(seq_datadict_dirId.nextval,'无',4);		


insert into datadict values(seq_datadict_dirId.nextval,'2G',5);			
insert into datadict values(seq_datadict_dirId.nextval,'4G',5);  	
insert into datadict values(seq_datadict_dirId.nextval,'8G',5);      
insert into datadict values(seq_datadict_dirId.nextval,'16G',5);
insert into datadict values(seq_datadict_dirId.nextval,'32G ',5);  	
insert into datadict values(seq_datadict_dirId.nextval,'64G',5);      
insert into datadict values(seq_datadict_dirId.nextval,'128G',5);
insert into datadict values(seq_datadict_dirId.nextval,'无',5);

insert into datadict values(seq_datadict_dirId.nextval,'42寸',6);
insert into datadict values(seq_datadict_dirId.nextval,'48寸 ',6);  	
insert into datadict values(seq_datadict_dirId.nextval,'62寸',6); 
insert into datadict values(seq_datadict_dirId.nextval,'无',6); 

insert into datadict values(seq_datadict_dirId.nextval,'5号',7);
insert into datadict values(seq_datadict_dirId.nextval,'7号 ',7);  	
insert into datadict values(seq_datadict_dirId.nextval,'无 ',7);  	

--查询--------------------------------------------------------------------------------------------
select * from datadict;
select dirId,dirName,dirType from datadict where dirType=4
select * from (select d.*,rownum rn from (select * from datadict order by dirId) d where 10 >= rownum)b where rn>0;
--删除--------------------------------------------------------------------------------------------
drop table datadict;
drop sequence seq_datadict_dirId;
delete from datadict where dirType=1
--5-------------------------------------------------------------------------------------------------
--商品类型表
create table typegoods(
       typesId int primary key, 				 --商品类型编号
       typesName varchar2(20) unique not null,           --商品类型名
       typesSta int,                                     --商品类型状态   0:下架    1：上架
	   reserve7 varchar2(20),					         --备用字段
	   reserve8 varchar2(20)                             --备用字段
);
create sequence seq_typegoods_typesId start with 1001 increment by 1;
--插入--------------------------------------------------------------------------------------------
insert into typegoods values (seq_typegoods_typesId.nextval,'手机',1,'','');
insert into typegoods values (seq_typegoods_typesId.nextval,'平板',1,'','');
insert into typegoods values (seq_typegoods_typesId.nextval,'电话卡',1,'','');
insert into typegoods values (seq_typegoods_typesId.nextval,'电视',1,'','');
insert into typegoods values (seq_typegoods_typesId.nextval,'盒子',1,'','');
insert into typegoods values (seq_typegoods_typesId.nextval,'路由器',1,'','');
insert into typegoods values (seq_typegoods_typesId.nextval,'移动电源',1,'',''); --包括电池
insert into typegoods values (seq_typegoods_typesId.nextval,'智能硬件',1,'',''); --小米平衡车，存储卡，插线板，电饭煲，血压计
insert into typegoods values (seq_typegoods_typesId.nextval,'服装',1,'','');
insert into typegoods values (seq_typegoods_typesId.nextval,'其它配件',1,'',''); --保护套，后盖，贴膜，箱包
--查询--------------------------------------------------------------------------------------------
select * from typegoods;
--删除--------------------------------------------------------------------------------------------
drop table typegoods;
drop sequence seq_typegoods_typesId;
--6-------------------------------------------------------------------------------------------------
--商品信息表
create table goods(
       goodsId int primary key,--商品编号
       typesId int         	--商品类型编号，引入外键
               constraint FK_goods_typegoods_typesId references typegoods(typesId),
       goodsName varchar2(20),      	--商品名字
       goodsminPrice number(8,2),     	--商品折扣价格
       goodsVersion varchar2(2000), 	--商品简介 如科技与时尚的完美结合
       goodsminPic varchar2(2000),   	--商品小图片
       goodsmaxPic varchar2(4000),   	--商品大图片
       goodsPlace varchar2(20),       	--位置
	   goodsSta int			    		--商品状态	0:下架	1：上架
);
create sequence seq_goods_goodsId start with 1001 increment by 1;
--插入--------------------------------------------------------------------------------------------
insert into goods values (seq_goods_goodsId.nextval,1001,'小米4s',1699,'小米4s真的不错呢','','','顶部1',1);
insert into goods values (seq_goods_goodsId.nextval,1002,'小米平板',999,'小米平板评价','','','顶部2',1);
--查询--------------------------------------------------------------------------------------------
select * from goods;
select goodsName from goods;
select g.*,t.typesName from goods g,typegoods t where g.typesId=t.typesId and goodsId =
select distinct(goodsName) from goods;

update goods set goodsPlace='顶部小米1' where goodsid = 1002

drop table goods;
drop sequence seq_goods_goodsId


update goods set goodsPlace='顶部,小米2' where goodsId=1006
update goods set goodsPlace='顶部1,小米2' where goodsId=1006
update goods set goodsPlace='顶部,小米2' where goodsId=1006
update goods set goodsPlace='顶部,小米2' where goodsId=1006
select * from (select a.*,rownum rn from 
		(select g.*,t.typesName from goods g,typegoods t where g.typesId=t.typesId order by goodsId)
		 a where 10>=rownum)b where rn>0
	  	select count(1) from product
	 
		 
		 select * from (select a.*,rownum rn from 
	(select p.*,d.dirName,g.goodsName from product p,goods g,datadict d 
	where g.goodsId=p.goodsId and p.ptformat=d.dirId order by ptId)
		 a where 10>=rownum)b where rn>0
---删除------------------------------------------------------------------------------------------------------
drop table goods;
drop sequence seq_goods_goodsId;
--7--------------------------------------------------------------------------------------------------
--具体产品详情表（外键可以为空插入）
create table product (
		ptId int primary key,
		ptPrice number(8,2),         --产品价格
		ptPic varchar2(2000),	     --产品详情图片
		ptNum int,                   --产品库存数量  
		goodsId int     
	          constraint FK_product_goods_goodsId references goods(goodsId),         --引入商品id
		--下面字段只对手机有用
	    ptformat int     
	          constraint FK_product_datadict_ptformat references datadict(dirId),    --1型号，引入外键 1-4
	    ptcolor  int      
	          constraint FK_product_datadict_ptcolor references datadict(dirId),     --2商品颜色，引入外键5-11
	    ptnet  int     
	          constraint FK_product_datadict_ptnet references datadict(dirId),       --3网络制式，引入外键12-17
	 	ptversions  int     
	          constraint FK_product_datadict_ptversions references datadict(dirId),--4网络运营商，引入外键 18-22
	    ptmemory  int     
	          constraint FK_product_datadict_ptmemory references datadict(dirId),     --5内存大小，引入外键23-30
	    ptsize  int     
	          constraint FK_product_datadict_ptsize references datadict(dirId),    --6电视机尺寸，引入外键  31-34  
	    ptbattery  int     
	          constraint FK_product_datadict_ptbattery references datadict(dirId),    --7电池型号，引入外键  35-37
	    ptSta int																					          
);
create sequence seq_product_ptId start with 1000 increment by 1;
--插入---------------------------------------------------------------------------------
insert into product values(seq_product_ptId.nextval,1899,'',100,1001,1,5,12,18,23,34,37,1);
insert into product values(seq_product_ptId.nextval,999,'',100,1002,4,6,17,22,30,34,37,1);
insert into product values(seq_product_ptId.nextval,1799,'',100,1001,2,5,12,18,23,34,37,1);
--查询---------------------------------------------------------------------------------
select count(*) from product where goodsId=1001;
select * from product
select * from product where ptId=1001;
select * from goods;
select a.*,i.goodsName,b.dirName as formats,c.dirName as colors,d.dirName as nets,e.dirName as versions,f.dirName as memorys,g.dirName as sizes,h.dirName as batterys 
	from product a
	left join datadict b on a.ptformat=b.dirId 
	left join datadict c on a.ptcolor = c.dirId
	left join datadict d on a.ptnet = d.dirId
	left join datadict e on a.ptversions = e.dirId
	left join datadict f on a.ptmemory = f.dirId
	left join datadict g on a.ptsize = g.dirId
	left join datadict h on a.ptbattery = h.dirId
	left join goods i on a.goodsId = i.goodsId where ptId=1001
--跟新---------------------------------------------------------------------------------
update product set ptPrice=1499 where ptId=1
update product set ptNum=68 where ptId=1004
--删除---------------------------------------------------------------------------------
select * from goods
drop table product;
drop sequence seq_product_ptId
--8-------------------------------------------------------------------------------------------------------------
--购物车表（购买商品都要经过订单界面）《一个主题对应多个选项：一个用户id对应多个产品id》
create table shopCar(                
       shopId int primary key,          --购物车编号
       usersId int             --用户编号 引入外键（用户名代替）
               constraint FK_shopCar_usersinfo_usersId references usersinfo(usersId),
       ptId int              --产品编号
           constraint FK_shopCar_product_ptId references product(ptId),
       shopNum int,                	    --商品数量
	   shopSta varchar2(20),			--商品转态    (1表示加入购物车；0表示冲购物车弃用；2表示从购物车添加到订单中)
	   reserve15 varchar2(20),           --备用字段
	   reserve16 varchar2(20)           --备用字段
);
create sequence seq_shopCar_shopId start with 1001 increment by 1;
--插入---------------------------------------------------------------------------------
insert into shopCar values(seq_shopCar_shopId.nextval,1001,1001,1,1,'','');
insert into shopCar values(seq_shopCar_shopId.nextval,1002,1002,1,1,'','');
select * from usersinfo;
select * from product;
select * from goods;

select distinct(sc.usersId),u.usersName,
(select count(1) from shopCar where usersId = sc.usersId) countGoods
from shopCar sc,usersinfo u where sc.usersId = u.usersId

from goods where goodsSta=1

select count(1) from product p,goods g where p.goodsId=g.goodsId and g.goodsId= 1001

select * from shopCar s,goods g,product p where s.ptId=p.ptId and p.goodsId=g.goodsId;
select count(1) from shopCar where usersId=1011
--insert into shopCar values(seq_shopCar_shopId.nextVal,1001,1001,1,1,'','');
--insert into shopCar values(seq_shopCar_shopId.nextVal,1002,1010,2,1,'','');
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1001,2,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1002,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1003,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1004,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1005,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1021,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1022,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1023,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1007,1024,1,1,'',''); a2
--insert into shopCar values(seq_shopCar_shopId.nextVal,1011,1002,1,1,'',''); test
--insert into shopCar values(seq_shopCar_shopId.nextVal,1011,1001,1,1,'',''); test
--insert into shopCar values(seq_shopCar_shopId.nextVal,1011,1004,1,1,'',''); test
--insert into shopCar values(seq_shopCar_shopId.nextVal,1011,1005,1,1,'',''); test
--insert into shopCar values(seq_shopCar_shopId.nextVal,1011,1003,1,1,'',''); test
--insert into shopCar values(seq_shopCar_shopId.nextVal,1010,1005,1,1,'',''); nihao
--insert into shopCar values(seq_shopCar_shopId.nextVal,1010,1004,1,1,'',''); nihao
--查询---------------------------------------------------------------------------------
select shopNum from shopCar where ptId=1001 and usersId=1001 and shopSta=1;
select * from shopCar where usersId=1001
select * from shopCar where usersId=1011
select count(1) from shopCar where usersId=1011 and shopSta=1
select * from shopCar;
select * from shopCar s,goods g,product p where s.ptId=p.ptId and p.goodsId=g.goodsId and usersId=1011;
--更新---------------------------------------------------------------------------------
update shopCar set shopSta=1 where shopId in (1001,1002,1003)
--删除---------------------------------------------------------------------------------
drop table shopCar;
drop sequence seq_shopCar_shopId

--9-------------------------------------------------------------------------------------
--订单表
create table orders(
       ordId int primary key,        --订单编号
       addrId int not null      			  --收获地址编号
      		  constraint FK_orders_address_addrId references address(addrId) ,      
       usersId int        			  --用户编号，引入外键
               constraint FK_orders_usersinfo_userId references usersinfo(usersId), 
       ordDate date,               			  --订单日期
       ordTatol number(8,2),       			  --订单总价
       ordSta int,                            --订单状态  0 取消订单1 未支付2 已支付等待发货  3已发货  4已签收
	   reserve17 varchar2(20),				  --备用字段
	   reserve18 varchar2(20)                 --备用字段
);
create sequence seq_orders_ordId start with 1001 increment by 1;
--插入---------------------------------------------------------------------------------
--insert into orders values (seq_orders_ordId.nextval,1001,1001,TO_DATE('2010-01-02 08:22:23','yyyy-mm-dd hh24:mi:ss'),999,2,'','');
--insert into orders values (seq_orders_ordId.nextval,1002,1002,TO_DATE('2016-01-05 08:22:23','yyyy-mm-dd hh24:mi:ss'),340,1,'','');
--查询---------------------------------------------------------------------------------
select * from address
select * from orders where ordId in (1001,1002,1003,1004,1005,1006,1007);
update orders set usersId = 1007 where ordId in (1001,1002,1003,1004,1005,1006,1007);
select count(1) from orders where usersId=1011
select ordSta from orders where ordId=1003
select * from  (select a.*,rownum rn from (select o.*,a.recipient from orders o,address a where a.addrId=o.addrId  
and o.usersId=1011 and ordSta=2 order by ordDate desc)a where rownum <=10)b where rn>0

select * from  (select a.*,rownum rn from (select o.*,ad.recipient from orders o,address ad where ad.addrId=o.addrId 
        	and o.usersId=1011 and ordSta=3
	     order by ordDate desc)a where 10>=rownum)b where rn>0
	     
	select * from (select a.*,rownum rn from (select o.*,usersName,province,city,county,detailAddr,recipient from orders o,usersInfo u,address a where o.usersId=u.usersId and o.addrId=a.addrId and 
	to_char(ordDate,'yyyy-MM-dd') like '2016-06-22' order by ordDate desc) a where 10>=rownum)b where rn>0      
				
				select o.ordId,g.goodsminPic,g.goodsName,od.detaNum,od.detaPrice,od.detaSta from 
				orders o,orderdetail od,goods g,product p where o.ordId = od.ordId and od.ptId = p.ptId
				and p.goodsId = g.goodsId and o.ordId=1003
				
				ptformat ptcolor ptnet  versions  ptmemory    ptsize    ptbattery 
				
	select * from (select a.*,rownum rn from (select o.*,usersName,province,city,county,detailAddr,recipient
		from orders o,usersInfo u,address a where o.usersId=u.usersId and 
		o.addrId=a.addrId order by ordDate desc) a where 10>=rownum)b where rn>0
--删除---------------------------------------------------------------------------------
drop table orderdetail;
drop table orders;
drop sequence seq_orders_ordId

--10-----------------------------------------------------------------------------------
--订单详细表（一次订单包含多件商品）
create table orderdetail(
       ordId int        				--订单编号，引入外键
               constraint FK_orderdetail_orders_ordId references orders(ordId), 
       ptId int                      --产品编号
           constraint FK_orderdetail_product_ptId references product(ptId),
       detaPrice number(10,2),               	--购买价
       detaNum int,                				--数量
       detaSta int,                 			--状态(  0 取消订单		1 未支付		2 已支付)
       reserve19 varchar2(20),					--备用字段
	   reserve20 varchar2(20)                   --备用字段
);

update orderdetail set detaSta =2 where ordId=1002 
select ordId,pt
--插入---------------------------------------------------------------------------------
insert into orderdetail values (1001,1001,899,1,1,'','');
--查询---------------------------------------------------------------------------------
select * from orderdetail;
--删除---------------------------------------------------------------------------------
drop table orderdetail;

--11-------------------------------------------------------------------------------------
--视频资源表
create table resources(
       resId int primary key,                    --视频资源编号
       resName varchar2(100),                    --视频名
       resCont varchar2(400),                    --视频资源路径
       resWords clob,                            --视频描述  
       resDate date,                             --发布时间  暂定
       resViews int,							 --浏览次数
       goodsId int                               --商品编号（字符串拼接：只供查看）
               constraint FK_resources_goods_goodsId references goods(goodsId),
       resSta int,								 --视频状态：是否可用  2：不可用  1:可用
       reserve21 varchar2(20),					 --备用字段
	   reserve22 varchar2(20)                    --备用字段
     
);
create sequence seq_resources_resId start with 1001 increment by 1;
--插入--------------------------------------------------------------------------

insert into resources values (seq_resources_resId.nextval,'小米平板2','video.mp4','很实用的产品',TO_DATE('2016-06-04','yyyy-mm-dd'),0,1002,1,'','');
--查询---------------------------------------------------------------------------
select * from resources;
select resId,resName,resCont,resWords,resDate,resViews,resSta,re.goodsId,goodsName from resources re,goods g where g.goodsId=re.goodsId
---删除-------------------------------------------------------------------------
delete resources;
delete from resources where resId=1002 
drop table resources;
drop sequence seq_resources_resId
--12-----------------------------------------------------------------------------
--文章表
create table article(
       artId int primary key,      			--文章编号
       artTitle varchar2(100),              --文章标题
       artAuth varchar2(50),                --文章作者
       artStaTime date,                     --文章发布日期
       fileinfo varchar2(500),			    --文章简介
       artCont clob,                        --文章内容
       artPic varchar2(4000),               --文章图片
       artViews int,                        --文章浏览次数
       artWeight int,                       --权重(用来排版)
       artSta int,                          --文章状态   暂定(0:全部 1：可用2：不可用)
	   reserve23 varchar2(20),               --备用字段
	   reserve24 varchar2(20)               --备用字段                     
);
create sequence seq_article_artId start with 1001 increment by 1;
---查询------------------------------------------------------------------------------------------------
select * from article where artWeight=5 union select artId from article where artWeight=2 union select artId from article where artWeight=3 union select artId from article where artWeight=4 union select artId from article where artWeight=5
select * from article;
select b.* from (select a.*,rownum rn from (select artId,artTitle,artAuth,artStaTime,artViews,artWeight,artSta,(select count(1) from artcomment where artId=ae.artId) commentsCount from article ae WHERE ae.artTitle like '%明%' and ae.artStaTime>to_date('2016-06-01','yyyy-MM-dd') ) a where 10 >=rownum)b where rn>0
---插入--------------------------------------------------------------------------------------------------
insert into article values (seq_article_artId.nextval,'你好','彭建',TO_DATE('2010-01-02','yyyy-MM-dd'),'祝福大家','4564687','',0,1,1,'','');
insert into article values (seq_article_artId.nextval,'新年好','彭建',TO_DATE('2010-01-02','yyyy-mm-dd'),TO_DATE('2010-01-02','yyyy-mm-dd'),'新年好呀 新年好呀 祝福大家新年好','',0,1,1,'','');
select * from article;

---插入--------------------------------------------------------------------------------------------------
insert into article values (seq_article_artId.nextval,'你好','彭建',TO_DATE('2010-01-02','yyyy-MM-dd'),'祝福大家','4564687','',0,1,1,'','');=======
insert into article values (seq_article_artId.nextval,'新年好','彭建',TO_DATE('2010-01-02','yyyy-mm-dd'),TO_DATE('2010-01-02','yyyy-mm-dd'),'新年好呀 新年好呀 祝福大家新年好','',0,1,1,'','');
--删除-------------------------------------------------------------------------------------------------
drop table article;
delete article;
drop sequence seq_article_artId
update article set artSta=1
select * from article where artStaTime  > to_date('2005-01-01','yyyy-MM-dd');
select count(comId) from artcomment a,article t where a.artId=t.artId and artId=1005
--13------------------------------------------------------------------------------------------------------
--文章评论表
----要添加约束：一个文章编号和用户编号唯一
create table artcomment(
       comId int primary key,  --评论编号
       artId int               --文章编号
             constraint FK_artcomment_article_artId references article(artId),
       usersId int             --用户编号
             constraint FK_artco_usersinfo_usersId references usersinfo(usersId),
       comCont clob,                    --评论内容
       comDate date,                    --评论日期
       comSta varchar2(20),				--评论状态
	   reserve25 varchar2(20),           --备用字段
	   reserve26 varchar2(20)           --备用字段
);
create sequence seq_artcomment_comId start with 1001 increment by 1;
---插入------------------------------------------------------------------------------------------------
insert into artcomment values (seq_artcomment_comId.nextval,1001,1001,'文章评论内容',sysdate,1,'','');
insert into artcomment values (seq_artcomment_comId.nextval,1007,1002,'文章评论内容',TO_DATE('2016-01-02','yyyy-mm-dd'),1,'');
---查询------------------------------------------------------------------------------------------------
select * from artcomment;
select comId,artId,a.usersId,usersName,comCont,comDate from artcomment a,usersInfo u where a.usersId=u.usersId and artId=1002 and 6>rownum order by comDate desc 
select b.* from (select a.*,rownum rn from (select * from artcomment where artId=1002)a where 5>=rownum)b where rn>0
---删除----------------------------------------------------------------------------------------------
delete artcomment;
drop table artcomment;
drop sequence seq_artcomment_comId
-----------------------------------------------------------------------------------------------------
select * from article;
select * from artcomment;
select * from usersInfo;
select comId,artId,usersId,usersName,comCont,comDate from artcomment a,usersInfo where a.usersId=u.usersId and artId=#{artId}
--14--------------------------------------------------------------------------------------------------
--商品评价表    
--要添加约束：一个产品编号和用户编号唯一
create table ptcomment(
       apprId int primary key,        --评价编号
       ptId int                       --产品编号
           	   constraint FK_ptcomment_product_ptId references product(ptId),
       usersId int                    --用户编号 引入外键
               constraint FK_ptcomment_usersinfo_usersId references usersinfo(usersId),
       apprCont clob,                          --评价内容
       apprDate date,                          --评价时间
       apprSta int,                            --评价状态(0：差评1：中评2：好评)
       reserve27 varchar2(20),	               --备用字段，改为官方回复状态
	   reserve28 varchar2(20)                  --备用字段
);
create sequence seq_ptcomment_apprId start with 1001 increment by 1;
---插入-------------------------------------------------------------------------------------------------------
insert into ptcomment values (seq_ptcomment_apprId.nextval,1001,1001,'嗯呢，不错',TO_DATE('2010-01-02 14:22:23','yyyy-mm-dd hh24:mi:ss'),1,'','');
---跟新------------------------------------------------------------------------------------------------------
update  ptcomment set apprDate=TO_DATE('2010-01-02 14:22:23','yyyy-mm-dd hh24:mi:ss') where apprId=1001
---查询------------------------------------------------------------------------------------------------------
select * from ptcomment;
---删除------------------------------------------------------------------------------------------------------
drop table ptcomment;
drop sequence seq_ptcomment_apprId

--15----------------------------------------------------------------------------------------------------------
--官方商品回复表
--要添加约束：一个评价编号和用户编号唯一
create table reply(
	   replyId int primary key,  --回复编号
       usersId int      		 --用户编号
             constraint FK_reply_usersInfo_usersId references usersInfo(usersId),
       apprId int                --评价编号
             constraint seq_ptcomment_apprId references ptcomment(apprId),
       repCont varchar2(500),             --回复内容
       repDate date,             		  --回复日期 
       reserve29 varchar2(20),	          --备用字段，改为回复状态，0 未回复，1 已回复
	   reserve30 varchar2(20)             --备用字段
);
create sequence seq_reply_replyId start with 1 increment by 1;
---插入------------------------------------------------------------------------------------------------
insert into reply values (seq_reply_replyId.nextval,1001,1001,'官方回复内容',TO_DATE('2016-01-03','yyyy-mm-dd'),1,'');
insert into reply values (seq_reply_replyId.nextval,1002,1002,'官方回复内容官方回复内容',TO_DATE('2016-01-04','yyyy-mm-dd'),1,'');
---查询------------------------------------------------------------------------------------------------
select * from reply;
select r.*,u.usersId,u.usersName,p.ptId,g.goodsName from reply r,usersInfo u,product p,ptcomment pt,goods g 
	where r.usersId = u.usersId and pt.apprId = r.apprId and pt.ptId = p.ptId and p.goodsId = g.goodsId and replyId = 2;
---删除------------------------------------------------------------------------------------------------
drop table reply;
drop sequence seq_reply_replyId
