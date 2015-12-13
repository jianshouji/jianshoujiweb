package com.jianshouji.model;

public class Brand {
	private String guid;//品牌guid
	private String brandname;//品牌名称
	private String ceo;//品牌ceo
	private String brandtel;//品牌电话
	private String brandaddress;//公司地址
	private String logoaddress;//logo地址
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	public String getBrandname() {
		return brandname;
	}
	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getBrandtel() {
		return brandtel;
	}
	public void setBrandtel(String brandtel) {
		this.brandtel = brandtel;
	}
	public String getBrandaddress() {
		return brandaddress;
	}
	public void setBrandaddress(String brandaddress) {
		this.brandaddress = brandaddress;
	}
	public String getLogoaddress() {
		return logoaddress;
	}
	public void setLogoaddress(String logoaddress) {
		this.logoaddress = logoaddress;
	}
}
