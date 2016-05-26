package com.xiaomi.entity;

public class Brand {
	private String brandId;
	private String typesId;
	private String brandName;
	private int brandSta;
	private String reserve9;
	private String reserve10;
	
	
	//商品品牌编号
	public String getBrandId() {
		return brandId;
	}
	public String getBrandIds() {
		return brandId;
	}
	
	public void setBrandId(String brandId) {
		this.brandId = brandId;
	}
	
	//商品编号，引入的外键
	public String getTypesId() {
		return typesId;
	}
	
	public void setTypesId(String typesId) {
		this.typesId = typesId;
	}
	
	//商品品牌名称
	public String getBrandName() {
		return brandName;
	}
	
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	
	//商品品牌状态
	public int getBrandSta() {
		return brandSta;
	}
	
	public void setBrandSta(int brandSta) {
		this.brandSta = brandSta;
	}
	
	//备用字段
	public String getReserve9() {
		return reserve9;
	}
	public void setReserve9(String reserve9) {
		this.reserve9 = reserve9;
	}
	public String getReserve10() {
		return reserve10;
	}
	public void setReserve10(String reserve10) {
		this.reserve10 = reserve10;
	}

	public Brand(String brandId, String typesId, String brandName,
			int brandSta, String reserve9, String reserve10) {
		super();
		this.brandId = brandId;
		this.typesId = typesId;
		this.brandName = brandName;
		this.brandSta = brandSta;
		this.reserve9 = reserve9;
		this.reserve10 = reserve10;
	}

	public Brand() {
		super();
	}

	@Override
	public String toString() {
		return "Brand [brandId=" + brandId + ", typesId=" + typesId
				+ ", brandName=" + brandName + ", brandSta=" + brandSta
				+ ", reserve9=" + reserve9 + ", reserve10=" + reserve10 + "]";
	}
	
}
