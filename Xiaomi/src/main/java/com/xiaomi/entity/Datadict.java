package com.xiaomi.entity;

import java.io.Serializable;

public class Datadict implements Serializable {
	private static final long serialVersionUID = 1L;
	private int dirId;
	private String dirName;
	private int dirType;

	//数据字典编号
	public int getDirId() {
		return dirId;
	}
	
	public int getDirIds(){
		return dirId;
	}

	public void setDirId(int dirId) {
		this.dirId = dirId;
	}

	//数据字典名称
	public String getDirName() {
		return dirName;
	}

	public void setDirName(String dirName) {
		this.dirName = dirName;
	}

	//数据字典类型
	public int getDirType() {
		return dirType;
	}

	public void setDirType(int dirType) {
		this.dirType = dirType;
	}

	@Override
	public String toString() {
		return "Datadict [dirId=" + dirId + ", dirName=" + dirName
				+ ", dirType=" + dirType + "]";
	}

	public Datadict(int dirId, String dirName, int dirType) {
		super();
		this.dirId = dirId;
		this.dirName = dirName;
		this.dirType = dirType;
	}

	public Datadict() {
		super();
	}
	
}