package com.jianshouji.model;

public class Screen {
	private String guid;//屏幕guid
	private String texture;//屏幕材质
	private String size;//屏幕大小
	private String technology;//屏幕工艺
	private String distinguish;//分辨率
	private String ppi;//屏幕PPI
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	public String getTexture() {
		return texture;
	}
	public void setTexture(String texture) {
		this.texture = texture;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getTechnology() {
		return technology;
	}
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	public String getDistinguish() {
		return distinguish;
	}
	public void setDistinguish(String distinguish) {
		this.distinguish = distinguish;
	}
	public String getPpi() {
		return ppi;
	}
	public void setPpi(String ppi) {
		this.ppi = ppi;
	}
}
