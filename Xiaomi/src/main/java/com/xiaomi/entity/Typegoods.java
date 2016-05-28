package com.xiaomi.entity;

import java.io.Serializable;


public class Typegoods implements Serializable {
	private static final long serialVersionUID = 1L;
    private int typesId;

    private String typesName;

    private int typesSta;

    private String reserve7;

    private String reserve8;

	public int getTypesId() {
		return typesId;
	}

	public int getTypesIds() {
		return typesId;
	}
	
	public void setTypesId(int typesId) {
		this.typesId = typesId;
	}

	public String getTypesName() {
		return typesName;
	}

	public void setTypesName(String typesName) {
		this.typesName = typesName;
	}

	public int getTypesSta() {
		return typesSta;
	}

	public void setTypesSta(int typesSta) {
		this.typesSta = typesSta;
	}

	public String getReserve7() {
		return reserve7;
	}

	public void setReserve7(String reserve7) {
		this.reserve7 = reserve7;
	}

	public String getReserve8() {
		return reserve8;
	}

	public void setReserve8(String reserve8) {
		this.reserve8 = reserve8;
	}

	@Override
	public String toString() {
		return "Typegoods [typesId=" + typesId + ", typesName=" + typesName
				+ ", typesSta=" + typesSta + ", reserve7=" + reserve7
				+ ", reserve8=" + reserve8 + "]";
	}

	public Typegoods(int typesId, String typesName, int typesSta,
			String reserve7, String reserve8) {
		super();
		this.typesId = typesId;
		this.typesName = typesName;
		this.typesSta = typesSta;
		this.reserve7 = reserve7;
		this.reserve8 = reserve8;
	}

	public Typegoods() {
		super();
	}
    
    

}