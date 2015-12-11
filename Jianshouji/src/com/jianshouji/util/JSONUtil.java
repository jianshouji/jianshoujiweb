package com.jianshouji.util;
import java.util.List;

import com.alibaba.fastjson.JSON;
public class JSONUtil {
    public static String ToJson(List list){
    	return JSON.toJSONString(list);
    }
}
