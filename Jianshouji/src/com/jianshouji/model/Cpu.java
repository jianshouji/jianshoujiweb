package com.jianshouji.model;

import java.sql.Date;

public class Cpu {
	private String guid;//cpu的主键
	private String cpu_code;//cpu型号
	private String cpu_name;//cpu名称
	private Integer cpu_num;//cpu核数
	private String cpu_core;//cpu架构
	private String cpu_gpu;//gpu类型
	private Integer cpu_score;//cpu跑分
	private Date cpu_pubtime;//发布时间
	private String cpu_pubins;//发布厂商
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	public String getCpu_code() {
		return cpu_code;
	}
	public void setCpu_code(String cpu_code) {
		this.cpu_code = cpu_code;
	}
	public String getCpu_name() {
		return cpu_name;
	}
	public void setCpu_name(String cpu_name) {
		this.cpu_name = cpu_name;
	}
	public Integer getCpu_num() {
		return cpu_num;
	}
	public void setCpu_num(Integer cpu_num) {
		this.cpu_num = cpu_num;
	}
	public String getCpu_core() {
		return cpu_core;
	}
	public void setCpu_core(String cpu_core) {
		this.cpu_core = cpu_core;
	}
	public String getCpu_gpu() {
		return cpu_gpu;
	}
	public void setCpu_gpu(String cpu_gpu) {
		this.cpu_gpu = cpu_gpu;
	}
	public Integer getCpu_score() {
		return cpu_score;
	}
	public void setCpu_score(Integer cpu_score) {
		this.cpu_score = cpu_score;
	}
	public Date getCpu_pubtime() {
		return cpu_pubtime;
	}
	public void setCpu_pubtime(Date cpu_pubtime) {
		this.cpu_pubtime = cpu_pubtime;
	}
	public String getCpu_pubins() {
		return cpu_pubins;
	}
	public void setCpu_pubins(String cpu_pubins) {
		this.cpu_pubins = cpu_pubins;
	}
}
