package com.jianshouji.model;

public class Camera {
	private String guid;//摄像头主键
	private String cameratype;//摄像头类型
	private String camerafactory;//摄像头生产厂商
	private String pixel;//摄像头像素
	private String iso;//光圈大小
	private String pdafflag;//是否支持PDAF
	private String flashlight;//闪光灯类型
	private String other;//其他
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	public String getCameratype() {
		return cameratype;
	}
	public void setCameratype(String cameratype) {
		this.cameratype = cameratype;
	}
	public String getCamerafactory() {
		return camerafactory;
	}
	public void setCamerafactory(String camerafactory) {
		this.camerafactory = camerafactory;
	}
	public String getPixel() {
		return pixel;
	}
	public void setPixel(String pixel) {
		this.pixel = pixel;
	}
	public String getIso() {
		return iso;
	}
	public void setIso(String iso) {
		this.iso = iso;
	}
	public String getPdafflag() {
		return pdafflag;
	}
	public void setPdafflag(String pdafflag) {
		this.pdafflag = pdafflag;
	}
	public String getFlashlight() {
		return flashlight;
	}
	public void setFlashlight(String flashlight) {
		this.flashlight = flashlight;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
}
