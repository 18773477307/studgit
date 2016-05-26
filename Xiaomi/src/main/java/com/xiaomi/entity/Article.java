package com.xiaomi.entity;

public class Article {
	private String artId;
	private String artTitle;
	private String artAuth;
	private String artStaTime;
	private String artEndTime;
	private String artCont;
	private String artPic;
	private int artViews;
	private int artWeight;
	private int artSta;
	private String reserve25;
	private String reserve26;
	
	//文章编号
	public String getArtId() {
		return artId;
	}
	public String getArtIds() {
		return artId;
	}
	public void setArtId(String artId) {
		this.artId = artId;
	}
	//文章标题
	public String getArtTitle() {
		return artTitle;
	}
	//标题截取
	public String getArtTitle10() {
		if(artTitle.length()>10){
			return artTitle.substring(0,10)+"...";
		}
		return artTitle;
	}
	//标题截取
	public String getArtTitle30() {
		if(artTitle.length()>28){
			return artTitle.substring(0,28)+"...";
		}
		return artTitle;
	}
	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}
	
	//文章作者
	public String getArtAuth() {
		return artAuth;
	}
	public void setArtAuth(String artAuth) {
		this.artAuth = artAuth;
	}
	
	//文章发布日期
	public String getArtStaTime() {
		return artStaTime;
	}
	public String getArtStaTimes() {
		if(artStaTime!=null && artStaTime.length()>10){
			return artStaTime.substring(0,10);
		}
		return artStaTime;
	}
	public void setArtStaTime(String artStaTime) {
		this.artStaTime = artStaTime;
	}
	
	//文章最后修改日期
	public String getArtEndTime() {
		return artEndTime;
	}
	//日期截取
	public String getArtEndTimes() {
		if(artEndTime!=null && artEndTime.length()>10){
			return artEndTime.substring(0,10);
		}
		return artEndTime;
	}
	public void setArtEndTime(String artEndTime) {
		this.artEndTime = artEndTime;
	}
	
	//文章内容
	public String getArtCont() {
		return artCont;
	}
	public String getArtConts() {
		if(artCont!=null && artCont.length()>80){
			return artCont.substring(0,80);
		}
		return artCont;
	}
	public void setArtCont(String artCont) {
		this.artCont = artCont;
	}
	
	//文章图片
	public String getArtPic() {
		return artPic;
	}
	public void setArtPic(String artPic) {
		this.artPic = artPic;
	}
	
	//文章浏览次数
	public int getArtViews() {
		return artViews;
	}
	public void setArtViews(int artViews) {
		this.artViews = artViews;
	}
	
	//权重
	public int getArtWeight() {
		return artWeight;
	}
	public void setArtWeight(int artWeight) {
		this.artWeight = artWeight;
	}
	
	//文章状态
	public int getArtSta() {
		return artSta;
	}
	public void setArtSta(int artSta) {
		this.artSta = artSta;
	}
	
	//备用字段 25
	public String getReserve25() {
		return reserve25;
	}
	public void setReserve25(String reserve25) {
		this.reserve25 = reserve25;
	}
	
	//备用字段 26
	public String getReserve26() {
		return reserve26;
	}
	public void setReserve26(String reserve26) {
		this.reserve26 = reserve26;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((artAuth == null) ? 0 : artAuth.hashCode());
		result = prime * result + ((artCont == null) ? 0 : artCont.hashCode());
		result = prime * result
				+ ((artEndTime == null) ? 0 : artEndTime.hashCode());
		result = prime * result + ((artId == null) ? 0 : artId.hashCode());
		result = prime * result + ((artPic == null) ? 0 : artPic.hashCode());
		result = prime * result + artSta;
		result = prime * result
				+ ((artStaTime == null) ? 0 : artStaTime.hashCode());
		result = prime * result
				+ ((artTitle == null) ? 0 : artTitle.hashCode());
		result = prime * result + artViews;
		result = prime * result + artWeight;
		result = prime * result
				+ ((reserve25 == null) ? 0 : reserve25.hashCode());
		result = prime * result
				+ ((reserve26 == null) ? 0 : reserve26.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Article other = (Article) obj;
		if (artAuth == null) {
			if (other.artAuth != null)
				return false;
		} else if (!artAuth.equals(other.artAuth))
			return false;
		if (artCont == null) {
			if (other.artCont != null)
				return false;
		} else if (!artCont.equals(other.artCont))
			return false;
		if (artEndTime == null) {
			if (other.artEndTime != null)
				return false;
		} else if (!artEndTime.equals(other.artEndTime))
			return false;
		if (artId == null) {
			if (other.artId != null)
				return false;
		} else if (!artId.equals(other.artId))
			return false;
		if (artPic == null) {
			if (other.artPic != null)
				return false;
		} else if (!artPic.equals(other.artPic))
			return false;
		if (artSta != other.artSta)
			return false;
		if (artStaTime == null) {
			if (other.artStaTime != null)
				return false;
		} else if (!artStaTime.equals(other.artStaTime))
			return false;
		if (artTitle == null) {
			if (other.artTitle != null)
				return false;
		} else if (!artTitle.equals(other.artTitle))
			return false;
		if (artViews != other.artViews)
			return false;
		if (artWeight != other.artWeight)
			return false;
		if (reserve25 == null) {
			if (other.reserve25 != null)
				return false;
		} else if (!reserve25.equals(other.reserve25))
			return false;
		if (reserve26 == null) {
			if (other.reserve26 != null)
				return false;
		} else if (!reserve26.equals(other.reserve26))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Article [artId=" + artId + ", artTitle=" + artTitle
				+ ", artAuth=" + artAuth + ", artStaTime=" + artStaTime
				+ ", artEndTime=" + artEndTime + ", artCont=" + artCont
				+ ", artPic=" + artPic + ", artViews=" + artViews
				+ ", artWeight=" + artWeight + ", artSta=" + artSta
				+ ", reserve25=" + reserve25 + ", reserve26=" + reserve26 + "]";
	}
	
	public Article(String artId, String artTitle, String artAuth,
			String artStaTime, String artEndTime, String artCont,
			String artPic, int artViews, int artWeight, int artSta,
			String reserve25, String reserve26) {
		super();
		this.artId = artId;
		this.artTitle = artTitle;
		this.artAuth = artAuth;
		this.artStaTime = artStaTime;
		this.artEndTime = artEndTime;
		this.artCont = artCont;
		this.artPic = artPic;
		this.artViews = artViews;
		this.artWeight = artWeight;
		this.artSta = artSta;
		this.reserve25 = reserve25;
		this.reserve26 = reserve26;
	}
	
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
