package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Product;

@Repository("productMapper")
public interface ProductMapper {

	List<Product> getAllProduct(Map<String, Object> params);

	int getTotalProduct();
	/**
	 * 获取所有的商品名称
	 * @return
	 */
	List<Product> getAllGoodsName();

	int getTotal();

	List<Product> getProductInfoByPtId(int ptId);

	int addProductInfo(Product product);

	int updateProductInfo(Product product);
	//修改商品的库存
	void updatePtNum(Map<String, Object> map2);

	int findPtnumByGoodsId(int goodsId);

	Product findPtIdByGoodsId(int goodsId);

	List<Product> findProductByGoodsId(int goodsId);

	Product getProductByPtId(int ptId);

}
