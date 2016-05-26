package com.xiaomi.entity;

public class ResourcesWithBLOBs extends Resources {
	private static final long serialVersionUID = 1L;

	private String resCont;

    private String resWords;

	public String getResCont() {
		return resCont;
	}

	public void setResCont(String resCont) {
		this.resCont = resCont;
	}

	public String getResWords() {
		return resWords;
	}

	public void setResWords(String resWords) {
		this.resWords = resWords;
	}

	@Override
	public String toString() {
		return "ResourcesWithBLOBs [resCont=" + resCont + ", resWords="
				+ resWords + "]";
	}

	public ResourcesWithBLOBs(String resCont, String resWords) {
		super();
		this.resCont = resCont;
		this.resWords = resWords;
	}

	public ResourcesWithBLOBs() {
		super();
	}
    
    

}