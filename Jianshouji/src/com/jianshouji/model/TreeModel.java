package com.jianshouji.model;

import java.util.List;

public class TreeModel {
	private String id;//id号
	private String text;//显示的部分
	private List<TreeModel> child;//孩子
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public List<TreeModel> getChild() {
		return child;
	}
	public void setChild(List<TreeModel> child) {
		this.child = child;
	}
	

}
