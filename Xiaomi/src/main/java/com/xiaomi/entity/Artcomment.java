package com.xiaomi.entity;

import java.io.Serializable;

public class Artcomment implements Serializable {
	private static final long serialVersionUID = 1L;
	private int comId;
    private int artId;
    private int usersId;
    private String comCont;
    private String comDate;
    private String comSta;
    private String reserve25;
    private String reserve26;
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public int getArtId() {
		return artId;
	}
	public void setArtId(int artId) {
		this.artId = artId;
	}
	public int getUsersId() {
		return usersId;
	}
	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}
	public String getComCont() {
		return comCont;
	}
	public void setComCont(String comCont) {
		this.comCont = comCont;
	}
	public String getComDate() {
		return comDate;
	}
	public void setComDate(String comDate) {
		this.comDate = comDate;
	}
	public String getComSta() {
		return comSta;
	}
	public void setComSta(String comSta) {
		this.comSta = comSta;
	}
	public String getReserve25() {
		return reserve25;
	}
	public void setReserve25(String reserve25) {
		this.reserve25 = reserve25;
	}
	public String getReserve26() {
		return reserve26;
	}
	public void setReserve26(String reserve26) {
		this.reserve26 = reserve26;
	}
	@Override
	public String toString() {
		return "Artcomment [comId=" + comId + ", artId=" + artId + ", usersId="
				+ usersId + ", comCont=" + comCont + ", comDate=" + comDate
				+ ", comSta=" + comSta + ", reserve25=" + reserve25
				+ ", reserve26=" + reserve26 + "]";
	}
	public Artcomment(int comId, int artId, int usersId, String comCont,
			String comDate, String comSta, String reserve25, String reserve26) {
		super();
		this.comId = comId;
		this.artId = artId;
		this.usersId = usersId;
		this.comCont = comCont;
		this.comDate = comDate;
		this.comSta = comSta;
		this.reserve25 = reserve25;
		this.reserve26 = reserve26;
	}
	public Artcomment() {
		super();
		// TODO Auto-generated constructor stub
	}

}