package com.jianshouji.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtil {
	public static String getGuidByTime(){
		SimpleDateFormat myFmt=new SimpleDateFormat("yyMMddHHmmssSS"); 
		Date now=new Date();
		return myFmt.format(now).toString();
	}
}
