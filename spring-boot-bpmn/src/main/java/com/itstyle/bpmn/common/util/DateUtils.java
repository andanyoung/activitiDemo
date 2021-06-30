package com.itstyle.bpmn.common.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * 日期处理
 * 创建者 张志朋
 * 创建时间	2017年11月20日
 *
 */
public class DateUtils {
	
	
	/** 时间格式(yyyy-MM-dd) */
	public final static String DATE_PATTERN = "yyyy-MM-dd";
	
	/** 时间格式(yyyy-MM-dd HH:mm:ss) */
	public final static String DATE_TIME_PATTERN = "yyyy-MM-dd HH:mm:ss";
	
	/** 时间格式(yyyy年M月dd日 ah:mm:ss) 代码生成器使用 */
	public final static String DATE_TIME_CHN_PATTERN = "yyyy年M月dd日 ah:mm:ss";

	public static String format(Date date) {
		return format(date, DATE_PATTERN);
	}

	public static String format(Date date, String pattern) {
		if (date != null) {
			SimpleDateFormat df = new SimpleDateFormat(pattern);
			return df.format(date);
		}
		return null;
	}
	public static Date format(String str, String pattern) {
		if (str != null) {
			SimpleDateFormat df = new SimpleDateFormat(pattern);
			try {
				return df.parse(str);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	public static String format(Timestamp date, String pattern) {
		if (date != null) {
			SimpleDateFormat df = new SimpleDateFormat(pattern);
			return df.format(date);
		}
		return null;
	}
	
	/**
	 * 获取当前日期
	 * @Author  张志朋
	 * @return  Timestamp
	 * @Date	2017年9月26日
	 * 更新日志
	 * 2017年9月26日  张志朋  首次创建
	 *
	 */
	public static Timestamp getTimestamp() {
		return new Timestamp(System.currentTimeMillis());
	}
	public static Timestamp getTimeStamp(Date date) {
		return new Timestamp(date.getTime());
	}
}
