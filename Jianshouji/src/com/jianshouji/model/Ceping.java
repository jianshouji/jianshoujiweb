package com.jianshouji.model;

import java.sql.Date;

public class Ceping {
	private String telphoneguid;//手机guid
	private String guid;//测评guid
	private String testaddress;//测评地址
	private String title;//测评标题
	private Date testtime;//测评时间
	private char testflag;//是否为精
	
	//附加
	private String testtimestr;
	
	public String getTelphoneguid() {
		return telphoneguid;
	}
	public void setTelphoneguid(String telphoneguid) {
		this.telphoneguid = telphoneguid;
	}
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	public String getTestaddress() {
		return testaddress;
	}
	public void setTestaddress(String testaddress) {
		this.testaddress = testaddress;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getTesttime() {
		return testtime;
	}
	public void setTesttime(Date testtime) {
		this.testtime = testtime;
	}
	public char getTestflag() {
		return testflag;
	}
	public void setTestflag(char testflag) {
		this.testflag = testflag;
	}
	public String getTesttimestr() {
		return testtimestr;
	}
	public void setTesttimestr(String testtimestr) {
		this.testtimestr = testtimestr;
	}

	
}
