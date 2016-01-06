package com.jianshouji.model;

import java.sql.Date;

public class Telphone {
	private String guid;//手机主键
	private Integer number;
	private String telphone_name;//手机名称
	private Integer price;//手机价格
	private String brandguid;//品牌guid
	private String cpuguid;//cpu的guid
	private String screenguid;//屏幕guid
	private String beforepixel;//前置摄像头
	private String cameryguid;//后置摄像头GUID
	private Integer ramvol; //RAM容量
	private String ramtype;//RAM类型
	private Integer romvol; //ROM大小
	private String opration;//操作系统
	private String color;//手机颜色
	private String battery;//电池容量大小
	private String batterytype;//电池类型（可更换和不可更换）
	private String fingerprint;//是否支持指纹
	private String sim;//sim卡类型
	private char isgyro; //是否有陀螺仪
	private String interfacetype;//接口类型
	private String wifitype;//wifi类型
	private String blueteeth;//蓝牙
	private char iscompase;//是否有电子罗盘
	private char ishallsenser;//是否有霍尔感应
	private char islightsenser;//是否有光线感应
	private char isgyroscope;//是否有陀螺仪
	private char isinfrared;//是否有红外
	private char isgps;//是否支持gps
	private char isagps;//是否支持agps
	private char isgnonass;//是否支持格洛纳斯
	private char isbeidou;//是否支持北斗
	private Date pubtime; //手机发布时间
	private char isrecommend;//是否为品牌内推荐
	private char isshowindex;//是否在首页展示
	private char islowprice;//是否为性价比推荐
	
	//附加
	private String cpuname;
	private String screenname;
	private String cameranme;
	private String pubtimestr;
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	public String getTelphone_name() {
		return telphone_name;
	}
	public void setTelphone_name(String telphone_name) {
		this.telphone_name = telphone_name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getBrandguid() {
		return brandguid;
	}
	public void setBrandguid(String brandguid) {
		this.brandguid = brandguid;
	}
	public String getCpuguid() {
		return cpuguid;
	}
	public void setCpuguid(String cpuguid) {
		this.cpuguid = cpuguid;
	}
	public String getScreenguid() {
		return screenguid;
	}
	public void setScreenguid(String screenguid) {
		this.screenguid = screenguid;
	}
	public String getBeforepixel() {
		return beforepixel;
	}
	public void setBeforepixel(String beforepixel) {
		this.beforepixel = beforepixel;
	}
	public String getCameryguid() {
		return cameryguid;
	}
	public void setCameryguid(String cameryguid) {
		this.cameryguid = cameryguid;
	}
	public String getInterfacetype() {
		return interfacetype;
	}
	public void setInterfacetype(String interfacetype) {
		this.interfacetype = interfacetype;
	}
	public Integer getRamvol() {
		return ramvol;
	}

	public void setRamvol(Integer ramvol) {
		this.ramvol = ramvol;
	}
	public String getRamtype() {
		return ramtype;
	}
	public void setRamtype(String ramtype) {
		this.ramtype = ramtype;
	}
	public Integer getRomvol() {
		return romvol;
	}
	public void setRomvol(Integer romvol) {
		this.romvol = romvol;
	}
	public String getOpration() {
		return opration;
	}
	public void setOpration(String opration) {
		this.opration = opration;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getBattery() {
		return battery;
	}
	public void setBattery(String battery) {
		this.battery = battery;
	}
	public String getBatterytype() {
		return batterytype;
	}
	public void setBatterytype(String batterytype) {
		this.batterytype = batterytype;
	}
	public String getFingerprint() {
		return fingerprint;
	}
	public void setFingerprint(String fingerprint) {
		this.fingerprint = fingerprint;
	}
	public String getSim() {
		return sim;
	}
	public void setSim(String sim) {
		this.sim = sim;
	}
	public char getIsgyro() {
		return isgyro;
	}
	public void setIsgyro(char isgyro) {
		this.isgyro = isgyro;
	}

	public String getWifitype() {
		return wifitype;
	}
	public void setWifitype(String wifitype) {
		this.wifitype = wifitype;
	}
	public String getBlueteeth() {
		return blueteeth;
	}
	public void setBlueteeth(String blueteeth) {
		this.blueteeth = blueteeth;
	}
	public char getIscompase() {
		return iscompase;
	}
	public void setIscompase(char iscompase) {
		this.iscompase = iscompase;
	}
	public char getIshallsenser() {
		return ishallsenser;
	}
	public void setIshallsenser(char ishallsenser) {
		this.ishallsenser = ishallsenser;
	}
	public char getIslightsenser() {
		return islightsenser;
	}
	public void setIslightsenser(char islightsenser) {
		this.islightsenser = islightsenser;
	}
	public char getIsgyroscope() {
		return isgyroscope;
	}
	public void setIsgyroscope(char isgyroscope) {
		this.isgyroscope = isgyroscope;
	}
	public char getIsinfrared() {
		return isinfrared;
	}
	public void setIsinfrared(char isinfrared) {
		this.isinfrared = isinfrared;
	}
	public char getIsgps() {
		return isgps;
	}
	public void setIsgps(char isgps) {
		this.isgps = isgps;
	}
	public char getIsagps() {
		return isagps;
	}
	public void setIsagps(char isagps) {
		this.isagps = isagps;
	}
	public char getIsgnonass() {
		return isgnonass;
	}
	public void setIsgnonass(char isgnonass) {
		this.isgnonass = isgnonass;
	}
	public char getIsbeidou() {
		return isbeidou;
	}
	public void setIsbeidou(char isbeidou) {
		this.isbeidou = isbeidou;
	}
	public Date getPubtime() {
		return pubtime;
	}
	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
	}
	public char getIsrecommend() {
		return isrecommend;
	}
	public void setIsrecommend(char isrecommend) {
		this.isrecommend = isrecommend;
	}
	public String getCpuname() {
		return cpuname;
	}
	public void setCpuname(String cpuname) {
		this.cpuname = cpuname;
	}
	public String getScreenname() {
		return screenname;
	}
	public void setScreenname(String screenname) {
		this.screenname = screenname;
	}
	public String getCameranme() {
		return cameranme;
	}
	public void setCameranme(String cameranme) {
		this.cameranme = cameranme;
	}
	public String getPubtimestr() {
		return pubtimestr;
	}
	public void setPubtimestr(String pubtimestr) {
		this.pubtimestr = pubtimestr;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
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
