package com.jianshouji.model;

public class Pic {
	private String telphoneguid;//手机guid
	private String guid;//图片guid
	private String picname;//图片名称
	private String picaddress;//图片地址
	private String pictitle;//图片标题
	private char isrecommend;//是否为品牌内推荐
	private char isshowindex;//是否在首页展示
	private char islowprice;//是否为性价比推荐
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
	public String getPicname() {
		return picname;
	}
	public void setPicname(String picname) {
		this.picname = picname;
	}
	public String getPicaddress() {
		return picaddress;
	}
	public void setPicaddress(String picaddress) {
		this.picaddress = picaddress;
	}
	public String getPictitle() {
		return pictitle;
	}
	public void setPictitle(String pictitle) {
		this.pictitle = pictitle;
	}
	public char getIsrecommend() {
		return isrecommend;
	}
	public void setIsrecommend(char isrecommend) {
		this.isrecommend = isrecommend;
	}
	public char getIsshowindex() {
		return isshowindex;
	}
	public void setIsshowindex(char isshowindex) {
		this.isshowindex = isshowindex;
	}
	public char getIslowprice() {
		return islowprice;
	}
	public void setIslowprice(char islowprice) {
		this.islowprice = islowprice;
	}
	
}
