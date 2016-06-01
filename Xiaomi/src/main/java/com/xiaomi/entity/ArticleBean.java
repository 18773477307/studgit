package com.xiaomi.entity;

import java.io.Serializable;
import java.util.List;

import com.xiaomi.entity.Artcomment;


public class ArticleBean implements Serializable{
	private static final long serialVersionUID = 703184203389440799L;
	
	private int artId;	 			
    private String artTitle;		
    private String artAuth;			
    private String artStaTime;
    private String fileinfo;
    private String artCont;
    private String artPic;
    private int artViews;
    private int artWeight;
    private int artSta;
    private int commentsCount;  
    private List<Artcomment> artcomments;
    

	public int getArtId() {
		return artId;
	}
	public void setArtId(int artId) {
		this.artId = artId;
	}
	public String getArtTitle() {
		return artTitle;
	}
	
	//标题截取
	public String getArtTitle28() {
		if(artTitle.length()>28){
			return artTitle.substring(0,28)+"...";
		}
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
	public String getArtStaTimes() {
		if(artStaTime!=null && artStaTime.length()>10){
			return artStaTime.substring(0,10);
		}
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
	public int getCommentsCount() {
		return commentsCount;
	}
	public void setCommentsCount(int commentsCount) {
		this.commentsCount = commentsCount;
	}
	public List<Artcomment> getArtcomments() {
		return artcomments;
	}
	public void setArtcomments(List<Artcomment> artcomments) {
		this.artcomments = artcomments;
	}
	@Override
	public String toString() {
		return "\nArticleBean [artId=" + artId + ", artTitle=" + artTitle
				+ ", artAuth=" + artAuth + ", artStaTime=" + artStaTime
				+ ", fileinfo=" + fileinfo + ", artCont=" + artCont
				+ ", artPic=" + artPic + ", artViews=" + artViews
				+ ", artWeight=" + artWeight + ", artSta=" + artSta
				+ ", commentsCount=" + commentsCount + ", artcomments="
				+ artcomments + "]";
	}
	public ArticleBean(int artId, String artTitle, String artAuth,
			String artStaTime, String fileinfo, String artCont, String artPic,
			int artViews, int artWeight, int artSta, int commentsCount,
			List<Artcomment> artcomments) {
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
		this.commentsCount = commentsCount;
		this.artcomments = artcomments;
	}
	public ArticleBean() {
	}
    
}
