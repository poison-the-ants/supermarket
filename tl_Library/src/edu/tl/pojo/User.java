package edu.tl.pojo;

public class User {
	private String account;
	private String password;
	private String sex;
	private String nickname;
	private int type;
	private int onlines;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getOnlines() {
		return onlines;
	}
	public void setOnlines(int onlines) {
		this.onlines = onlines;
	}
	@Override
	public String toString() {
		return "User [account=" + account + ", password=" + password + ", sex=" + sex + ", nickname=" + nickname
				+ ", type=" + type + ", onlines=" + onlines + "]";
	}
	
	
}
