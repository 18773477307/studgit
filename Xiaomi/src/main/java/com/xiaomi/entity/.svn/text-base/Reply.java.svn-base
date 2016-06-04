package com.xiaomi.entity;

public class Reply {
	private String replyId;   //回复编号
	private String usersId;
	private String goodsId;
	private String repCont;
	private String repDate;
	private String reserve29;  //状态
	private String reserve30;
	
	private String usersName;  //用户名
	private String goodsName;  //商品名
	
	
	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getReplyId() {
		return replyId;
	}

	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}

	public String getUsersId() {
		return usersId;
	}
	
	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}
	
	public String getGoodsId() {
		return goodsId;
	}
	
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
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
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((goodsId == null) ? 0 : goodsId.hashCode());
		result = prime * result + ((repCont == null) ? 0 : repCont.hashCode());
		result = prime * result + ((repDate == null) ? 0 : repDate.hashCode());
		result = prime * result + ((replyId == null) ? 0 : replyId.hashCode());
		result = prime * result
				+ ((reserve29 == null) ? 0 : reserve29.hashCode());
		result = prime * result
				+ ((reserve30 == null) ? 0 : reserve30.hashCode());
		result = prime * result + ((usersId == null) ? 0 : usersId.hashCode());
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
		Reply other = (Reply) obj;
		if (goodsId == null) {
			if (other.goodsId != null)
				return false;
		} else if (!goodsId.equals(other.goodsId))
			return false;
		if (repCont == null) {
			if (other.repCont != null)
				return false;
		} else if (!repCont.equals(other.repCont))
			return false;
		if (repDate == null) {
			if (other.repDate != null)
				return false;
		} else if (!repDate.equals(other.repDate))
			return false;
		if (replyId == null) {
			if (other.replyId != null)
				return false;
		} else if (!replyId.equals(other.replyId))
			return false;
		if (reserve29 == null) {
			if (other.reserve29 != null)
				return false;
		} else if (!reserve29.equals(other.reserve29))
			return false;
		if (reserve30 == null) {
			if (other.reserve30 != null)
				return false;
		} else if (!reserve30.equals(other.reserve30))
			return false;
		if (usersId == null) {
			if (other.usersId != null)
				return false;
		} else if (!usersId.equals(other.usersId))
			return false;
		return true;
	}

	public Reply(String replyId, String usersId, String goodsId,
			String repCont, String repDate, String reserve29, String reserve30) {
		super();
		this.replyId = replyId;
		this.usersId = usersId;
		this.goodsId = goodsId;
		this.repCont = repCont;
		this.repDate = repDate;
		this.reserve29 = reserve29;
		this.reserve30 = reserve30;
	}

	@Override
	public String toString() {
		return "Reply [replyId=" + replyId + ", usersId=" + usersId
				+ ", goodsId=" + goodsId + ", repCont=" + repCont
				+ ", repDate=" + repDate + ", reserve29=" + reserve29
				+ ", reserve30=" + reserve30 + "]";
	}

	public Reply() {
		super();
	}

}
