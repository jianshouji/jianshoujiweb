package com.jianshouji.util;

import java.util.List;

public class JsonTreeData {
	private String id;
	private String pid;
	private String text;
	private String state;
	private List<JsonTreeData> childeren;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public List<JsonTreeData> getChilderen() {
		return childeren;
	}
	public void setChilderen(List<JsonTreeData> childeren) {
		this.childeren = childeren;
	}
}
