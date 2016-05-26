package com.xiaomi.entity;

import java.io.Serializable;

public class UsersInfo implements Serializable{
	private static final long serialVersionUID = -2328730024229978788L;
	
	private int usersId;
	private String usersName;
	private String usersTel;
	private String usersEmail;
	private String usersPwd;
	private String usersIDCard;
	private int usersSex;
	private String usersBirth;
	private String usersPhoto;
	private String balance;
	private int usersSta;
	private String reserve1;
	private String reserve2;
	public int getUsersId() {
		return usersId;
	}
	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}
	public String getUsersName() {
		return usersName;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
	public String getUsersTel() {
		return usersTel;
	}
	public void setUsersTel(String usersTel) {
		this.usersTel = usersTel;
	}
	public String getUsersEmail() {
		return usersEmail;
	}
	public void setUsersEmail(String usersEmail) {
		this.usersEmail = usersEmail;
	}
	public String getUsersPwd() {
		return usersPwd;
	}
	public void setUsersPwd(String usersPwd) {
		this.usersPwd = usersPwd;
	}
	public String getUsersIDCard() {
		return usersIDCard;
	}
	public void setUsersIDCard(String usersIDCard) {
		this.usersIDCard = usersIDCard;
	}
	public int getUsersSex() {
		return usersSex;
	}
	public void setUsersSex(int usersSex) {
		this.usersSex = usersSex;
	}
	public String getUsersBirth() {
		return usersBirth;
	}
	public void setUsersBirth(String usersBirth) {
		this.usersBirth = usersBirth;
	}
	public String getUsersPhoto() {
		return usersPhoto;
	}
	public void setUsersPhoto(String usersPhoto) {
		this.usersPhoto = usersPhoto;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public int getUsersSta() {
		return usersSta;
	}
	public void setUsersSta(int usersSta) {
		this.usersSta = usersSta;
	}
	public String getReserve1() {
		return reserve1;
	}
	public void setReserve1(String reserve1) {
		this.reserve1 = reserve1;
	}
	public String getReserve2() {
		return reserve2;
	}
	public void setReserve2(String reserve2) {
		this.reserve2 = reserve2;
	}
	@Override
	public String toString() {
		return "\nUsersInfo [usersId=" + usersId + ", usersName=" + usersName
				+ ", usersTel=" + usersTel + ", usersEmail=" + usersEmail
				+ ", usersPwd=" + usersPwd + ", usersIDCard=" + usersIDCard
				+ ", usersSex=" + usersSex + ", usersBirth=" + usersBirth
				+ ", usersPhoto=" + usersPhoto + ", balance=" + balance
				+ ", usersSta=" + usersSta + ", reserve1=" + reserve1
				+ ", reserve2=" + reserve2 + "]";
	}
	public UsersInfo(int usersId, String usersName, String usersTel,
			String usersEmail, String usersPwd, String usersIDCard,
			int usersSex, String usersBirth, String usersPhoto, String balance,
			int usersSta, String reserve1, String reserve2) {
		super();
		this.usersId = usersId;
		this.usersName = usersName;
		this.usersTel = usersTel;
		this.usersEmail = usersEmail;
		this.usersPwd = usersPwd;
		this.usersIDCard = usersIDCard;
		this.usersSex = usersSex;
		this.usersBirth = usersBirth;
		this.usersPhoto = usersPhoto;
		this.balance = balance;
		this.usersSta = usersSta;
		this.reserve1 = reserve1;
		this.reserve2 = reserve2;
	}
	public UsersInfo() {
	}
	
}
