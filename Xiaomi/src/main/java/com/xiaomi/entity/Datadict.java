package com.xiaomi.entity;

import java.io.Serializable;

public class Datadict implements Serializable {
	private static final long serialVersionUID = 1L;
	private int dirId;
	private String dirName;
	private int dirType;

	public int getDirId() {
		return dirId;
	}

	public void setDirId(int dirId) {
		this.dirId = dirId;
	}

	public String getDirName() {
		return dirName;
	}

	public void setDirName(String dirName) {
		this.dirName = dirName;
	}

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
		// TODO Auto-generated constructor stub
	}
	
}