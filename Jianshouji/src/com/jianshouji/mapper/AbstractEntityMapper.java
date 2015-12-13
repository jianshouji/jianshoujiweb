package com.jianshouji.mapper;

import java.util.List;

public abstract interface  AbstractEntityMapper<T> {
	  public abstract int deleteByPrimaryKey(String paramString);

	  public abstract int insert(T paramT);

	  public abstract T selectByPrimaryKey(String paramString);

	  public abstract int updateByPrimaryKey(T paramT);

	  public abstract List<T> selectAll();
}
