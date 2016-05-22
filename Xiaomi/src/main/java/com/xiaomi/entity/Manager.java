package com.xiaomi.entity;

import java.io.Serializable;

public class Manager implements Serializable{
	
	/**
	 * 添加反序列化
	 */
	private static final long serialVersionUID = 5116322294199283260L;
	
	private String manaId;
	private String manaName;
	private int manaSex;
	private String manaPwd;
	private int manaSta;
	private String reserve5;
	private String reserve6;
	
	
	
	//管理员编号
	public String getManaId() {
		return manaId;
	}
	
	public void setManaId(String manaId) {
		this.manaId = manaId;
	}
	
	//管理员姓名
	public String getManaName() {
		return manaName;
	}
	
	public void setManaName(String manaName) {
		this.manaName = manaName;
	}
	
	//管理员性别
	public int getManaSex() {
		return manaSex;
	}

	public void setManaSex(int manaSex) {
		this.manaSex = manaSex;
	}
	
	//管理员密码
	public String getManaPwd() {
		return manaPwd;
	}
	
	public void setManaPwd(String manaPwd) {
		this.manaPwd = manaPwd;
	}
	
	
	
	public int getManaSta() {
		return manaSta;
	}

	public void setManaSta(int manaSta) {
		this.manaSta = manaSta;
	}

	//备用字段
	public String getReserve5() {
		return reserve5;
	}
	
	public void setReserve5(String reserve5) {
		this.reserve5 = reserve5;
	}
	
	public String getReserve6() {
		return reserve6;
	}
	
	public void setReserve6(String reserve6) {
		this.reserve6 = reserve6;
	}

	public Manager() {
		super();
	}

	public Manager(String manaId, String manaName, int manaSex, String manaPwd,
			int manaSta, String reserve5, String reserve6) {
		super();
		this.manaId = manaId;
		this.manaName = manaName;
		this.manaSex = manaSex;
		this.manaPwd = manaPwd;
		this.manaSta = manaSta;
		this.reserve5 = reserve5;
		this.reserve6 = reserve6;
	}

	@Override
	public String toString() {
		return "Manager [manaId=" + manaId + ", manaName=" + manaName
				+ ", manaSex=" + manaSex + ", manaPwd=" + manaPwd
				+ ", manaSta=" + manaSta + ", reserve5=" + reserve5
				+ ", reserve6=" + reserve6 + "]";
	}
}
