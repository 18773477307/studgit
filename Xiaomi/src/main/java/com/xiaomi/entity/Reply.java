package com.xiaomi.entity;

import java.io.Serializable;


public class Reply implements Serializable {
	private static final long serialVersionUID = 1L;

	private int replyId;

    private int usersId;

    private int apprId;

    private String repCont;

    private String repDate;

    private String reserve29;

    private String reserve30;

	public int getReplyId() {
		return replyId;
	}

	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}

	public int getUsersId() {
		return usersId;
	}

	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}

	public int getApprId() {
		return apprId;
	}

	public void setApprId(int apprId) {
		this.apprId = apprId;
	}

	public String getRepCont() {
		return repCont;
	}

	public void setRepCont(String repCont) {
		this.repCont = repCont;
	}

	public String getRepDate() {
		return repDate;
	}

	public void setRepDate(String repDate) {
		this.repDate = repDate;
	}

	public String getReserve29() {
		return reserve29;
	}

	public void setReserve29(String reserve29) {
		this.reserve29 = reserve29;
	}

	public String getReserve30() {
		return reserve30;
	}

	public void setReserve30(String reserve30) {
		this.reserve30 = reserve30;
	}

	@Override
	public String toString() {
		return "Reply [replyId=" + replyId + ", usersId=" + usersId
				+ ", apprId=" + apprId + ", repCont=" + repCont + ", repDate="
				+ repDate + ", reserve29=" + reserve29 + ", reserve30="
				+ reserve30 + "]";
	}

	public Reply(int replyId, int usersId, int apprId, String repCont,
			String repDate, String reserve29, String reserve30) {
		super();
		this.replyId = replyId;
		this.usersId = usersId;
		this.apprId = apprId;
		this.repCont = repCont;
		this.repDate = repDate;
		this.reserve29 = reserve29;
		this.reserve30 = reserve30;
	}

	public Reply() {
		super();
	}

    
}