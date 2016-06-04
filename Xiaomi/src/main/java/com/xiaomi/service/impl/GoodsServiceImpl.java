package com.xiaomi.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Goods;
import com.xiaomi.mapper.GoodsMapper;
import com.xiaomi.service.GoodsService;
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;
	@Override
	public List<Goods> getAllGoodsInfo(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  goodsMapper.getAllGoodsInfo(params);
	}

	@Override
	public int getTotalGoods() {
		return goodsMapper.getTotalGoods();
	}

	@Override
	public List<Goods> findGoodsByGoodsId(int goodsId) {
		return goodsMapper.getGoodsByGoodsId(goodsId);
	}

	@Override
	public int addGoodsInfo(Goods goods, Map<String,Object> map) {
		String picture1="";
		String picture2="";
		picture1 =(String) map.get("firPicName");
		picture2 =(String) map.get("secPicName");
		
		goods.setGoodsminPic(picture1);
		goods.setGoodsmaxPic(picture2);
		
		int result = goodsMapper.addGoodsInfo(goods);
		if(result>0){
			String path =ServletActionContext.getServletContext().getRealPath("upload/");
			String path1 =ServletActionContext.getServletContext().getRealPath("../uploadpic/");
			try {
				FileUtils.copyFile((File)map.get("firPic"), new File(path+"/"+picture1));
				FileUtils.copyFile((File)map.get("firPic"), new File(path1+"/"+picture1));
				
				FileUtils.copyFile((File)map.get("secPic"), new File(path+"/"+picture2));
				FileUtils.copyFile((File)map.get("secPic"), new File(path1+"/"+picture2));
				System.out.println("上传成功=====");
			} catch (IOException e) {
				System.out.println("上传失败=====");
				e.printStackTrace();
			}
			return 1;
		}else{
			return 0;
		}
	}

	@Override
	public int addGoodsInfo(Goods goods) {
		return goodsMapper.addGoodsInfo(goods);
	}

	@Override
	public int updateGoodsInfo(Goods goods, Map<String, Object> map) {
		String picture1="";
		String picture2="";
		picture1 =(String) map.get("firPicName");
		picture2 =(String) map.get("secPicName");
		
		System.out.println(picture1);
		System.out.println(picture2);
		goods.setGoodsminPic(picture1);
		goods.setGoodsmaxPic(picture2);
		
		int result = goodsMapper.updateGoodsInfo(goods);
		System.out.println(result+"impl");
		if(result>0){
			String path =ServletActionContext.getServletContext().getRealPath("upload/");
			String path1 =ServletActionContext.getServletContext().getRealPath("../uploadpic/");
			try {
				FileUtils.copyFile((File)map.get("firPic"), new File(path+"/"+picture1));
				FileUtils.copyFile((File)map.get("firPic"), new File(path1+"/"+picture1));
				
				FileUtils.copyFile((File)map.get("secPic"), new File(path+"/"+picture2));
				FileUtils.copyFile((File)map.get("secPic"), new File(path1+"/"+picture2));
				System.out.println("修改成功=====");
			} catch (IOException e) {
				System.out.println("修改失败=====");
				e.printStackTrace();
			}
			return 1;
		}else{
			return 0;
		}
	}

	@Override
	public int updateGoodsInfo(Goods goods) {
		return goodsMapper.updateGoodsInfo(goods);
	}

	@Override
	public List<Goods> getallgoodname() {
		return goodsMapper.findallgoods();
	}
	
	public List<Goods> getIndexGoodsInfo() {
		return goodsMapper.getIndexGoodsInfo();
	}

}
