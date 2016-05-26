package com.xiaomi.entity;


public class Article {
    private int artId;					//文章编号
    private String artTitle;		//文章标题
    private String artAuth;			//
    private String artStaTime;//
    private String fileinfo;//
    private String artCont;//
    private String artPic;//
    private int artViews;//
    private int artWeight;//
    private int artSta;//
    private String reserve23;//
    private String reserve24;//
	public int getArtId() {
		return artId;
	}
	public void setArtId(int artId) {
		this.artId = artId;
	}
	public String getArtTitle() {
		return artTitle;
	}
	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}
	public String getArtAuth() {
		return artAuth;
	}
	public void setArtAuth(String artAuth) {
		this.artAuth = artAuth;
	}
	public String getArtStaTime() {
		return artStaTime;
	}
	public void setArtStaTime(String artStaTime) {
		this.artStaTime = artStaTime;
	}
	public String getFileinfo() {
		return fileinfo;
	}
	public void setFileinfo(String fileinfo) {
		this.fileinfo = fileinfo;
	}
	public String getArtCont() {
		return artCont;
	}
	public void setArtCont(String artCont) {
		this.artCont = artCont;
	}
	public String getArtPic() {
		return artPic;
	}
	public void setArtPic(String artPic) {
		this.artPic = artPic;
	}
	public int getArtViews() {
		return artViews;
	}
	public void setArtViews(int artViews) {
		this.artViews = artViews;
	}
	public int getArtWeight() {
		return artWeight;
	}
	public void setArtWeight(int artWeight) {
		this.artWeight = artWeight;
	}
	public int getArtSta() {
		return artSta;
	}
	public void setArtSta(int artSta) {
		this.artSta = artSta;
	}
	public String getReserve23() {
		return reserve23;
	}
	public void setReserve23(String reserve23) {
		this.reserve23 = reserve23;
	}
	public String getReserve24() {
		return reserve24;
	}
	public void setReserve24(String reserve24) {
		this.reserve24 = reserve24;
	}
	@Override
	public String toString() {
		return "Article [artId=" + artId + ", artTitle=" + artTitle
				+ ", artAuth=" + artAuth + ", artStaTime=" + artStaTime
				+ ", fileinfo=" + fileinfo + ", artCont=" + artCont
				+ ", artPic=" + artPic + ", artViews=" + artViews
				+ ", artWeight=" + artWeight + ", artSta=" + artSta
				+ ", reserve23=" + reserve23 + ", reserve24=" + reserve24 + "]";
	}
	public Article(int artId, String artTitle, String artAuth,
			String artStaTime, String fileinfo, String artCont, String artPic,
			int artViews, int artWeight, int artSta, String reserve23,
			String reserve24) {
		super();
		this.artId = artId;
		this.artTitle = artTitle;
		this.artAuth = artAuth;
		this.artStaTime = artStaTime;
		this.fileinfo = fileinfo;
		this.artCont = artCont;
		this.artPic = artPic;
		this.artViews = artViews;
		this.artWeight = artWeight;
		this.artSta = artSta;
		this.reserve23 = reserve23;
		this.reserve24 = reserve24;
	}
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}