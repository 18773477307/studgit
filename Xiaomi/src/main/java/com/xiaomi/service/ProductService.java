package com.xiaomi.service;

import java.io.File;
import java.util.List;

import com.xiaomi.entity.Product;

public interface ProductService {

	List<Product> getAllProduct(Integer pageNo, Integer pageSize);

	int getTotalProduct();
	/**
	 * 获取所有商品的名字
	 * @return
	 */
	List<Product> getAllGoodsName();

	/**
	 * 总记录数
	 * @return
	 */
	int total();

	List<Product> findProductInfoByPtId(int ptId);

	int addProductInfo(Product product, File[] ptPic, String[] ptPicFileName,String[] ptPicContentType);
	int addProductInfo(Product product);

	int updateProductInfo(Product product, File[] ptPics,String[] ptPicsFileName, String[] ptPicsContentType);
	int updateProductInfo(Product product);
}
