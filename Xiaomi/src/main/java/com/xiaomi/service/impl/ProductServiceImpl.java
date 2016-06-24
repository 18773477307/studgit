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

import com.xiaomi.entity.Product;
import com.xiaomi.mapper.ProductMapper;
import com.xiaomi.service.ProductService;
@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductMapper productMapper;

	@Override
	public List<Product> getAllProduct(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  productMapper.getAllProduct(params);
	}

	@Override
	public int getTotalProduct() {
		return productMapper.getTotalProduct();
	}
	@Override
	public List<Product> getAllGoodsName() {
		return productMapper.getAllGoodsName();
	}

	@Override
	public int total() {
		return productMapper.getTotal();
	}

	@Override
	public List<Product> findProductInfoByPtId(int ptId) {
		return productMapper.getProductInfoByPtId(ptId);
	}

	@Override
	public int addProductInfo(Product product, File[] ptPic,String[] ptPicFileName, String[] ptPicContentType) {
		String picture="";
		 if(ptPicFileName.length==1){
		    	picture = ptPicFileName[0];
		    }else if(ptPicFileName.length>1){
			    for(String as:ptPicFileName){
			    	picture += as+",";
			    }
			    picture = picture.substring(0, picture.length()-1);
		    }
		    product.setPtPic(picture);
		int result=productMapper.addProductInfo(product);
		if(result>0){
			String path =ServletActionContext.getServletContext().getRealPath("upload/");
			String path1 =ServletActionContext.getServletContext().getRealPath("../uploadpic/");
		    for(int i = 0;i<ptPic.length;i++) {
	    		//要使用绝对地址
	    		try {			
	    			FileUtils.copyFile(ptPic[i], new File(path+"/"+ptPicFileName[i]));//开始上传
	    			//为了方便多次测试，把上传到服务器的文件中，在工程中也传一份，开发完成后在删除
	    			FileUtils.copyFile(ptPic[i], new File(path1+"/"+ptPicFileName[i]));//开始上传
	    			System.out.println("上传成功！");
	    		} catch (IOException e) {
	    			System.out.println("上传失败！");
	    			e.printStackTrace(); 
	    		}
		    }
		    return 1;
		}else {
			return 0;
		}
	}

	@Override
	public int addProductInfo(Product product) {
		return productMapper.addProductInfo(product);
	}

	@Override
	public int updateProductInfo(Product product, File[] ptPics,String[] ptPicsFileName, String[] ptPicsContentType) {
		String picture="";
		 if(ptPicsFileName.length==1){
		    	picture = ptPicsFileName[0];
		    }else if(ptPicsFileName.length>1){
			    for(String as:ptPicsFileName){
			    	picture += as+",";
			    }
			    picture = picture.substring(0, picture.length()-1);
		    }
		 System.out.println(picture);
		    product.setPtPic(picture);
		int result=productMapper.updateProductInfo(product);
		if(result>0){
			String path =ServletActionContext.getServletContext().getRealPath("upload/");
			String path1 =ServletActionContext.getServletContext().getRealPath("../uploadpic/");
		    for(int i = 0;i<ptPics.length;i++) {
	    		//要使用绝对地址
	    		try {			
	    			FileUtils.copyFile(ptPics[i], new File(path+"/"+ptPicsFileName[i]));//开始上传
	    			//为了方便多次测试，把上传到服务器的文件中，在工程中也传一份，开发完成后在删除
	    			FileUtils.copyFile(ptPics[i], new File(path1+"/"+ptPicsFileName[i]));//开始上传
	    			System.out.println("上传成功！");
	    		} catch (IOException e) {
	    			System.out.println("上传失败！");
	    			e.printStackTrace(); 
	    		}
		    }
		    return 1;
		}else {
			return 0;
		}
	}

	@Override
	public int updateProductInfo(Product product) {
		return productMapper.updateProductInfo(product);
	}

	@Override
	public int findPtnumByGoodsId(int goodsId) {
		return productMapper.findPtnumByGoodsId(goodsId);
	}

	@Override
	public Product findPtIdByGoodsId(int goodsId) {
		return productMapper.findPtIdByGoodsId(goodsId);
	}

	@Override
	public List<Product> findProductByGoodsId(int goodsId) {
		return productMapper.findProductByGoodsId(goodsId);
	}

	@Override
	public Product getProductByPtId(int ptId) {
		return productMapper.getProductByPtId(ptId);
	}
}
