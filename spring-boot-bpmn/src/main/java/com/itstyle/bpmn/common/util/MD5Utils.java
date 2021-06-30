package com.itstyle.bpmn.common.util;

import java.security.MessageDigest;
import java.util.Random;

/**
 * MD5加密工具
 */
public class MD5Utils {

	/**
	 * byte[]字节数组 转换成 十六进制字符串
	 * @param arr 要转换的byte[]字节数组
	 * @return String 返回十六进制字符串
	 */
	private static String hex(byte[] arr) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < arr.length; ++i) {
			sb.append(Integer.toHexString((arr[i] & 0xFF) | 0x100).substring(1, 3));
		}
		return sb.toString();
	}

	/**
	 * MD5加密,并把结果由字节数组转换成十六进制字符串
	 * @param str 要加密的内容
	 * @return String 返回加密后的十六进制字符串
	 */
	private static String md5Hex(String str) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] digest = md.digest(str.getBytes());
			return hex(digest);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * 生成含有随机盐的密码
	 * @param password 要加密的密码
	 * @return String 含有随机盐的密码
	 */
	public static String getSaltMD5(String password) {
		// 生成一个16位的随机数
		Random random = new Random();
		StringBuilder sBuilder = new StringBuilder(16);
		sBuilder.append(random.nextInt(99999999)).append(random.nextInt(99999999));
		int len = sBuilder.length();
		if (len < 16) {
			for (int i = 0; i < 16 - len; i++) {
				sBuilder.append("0");
			}
		}
		// 生成最终的加密盐
		String salt = sBuilder.toString();
		password = md5Hex(password + salt);
		char[] cs = new char[48];
		for (int i = 0; i < 48; i += 3) {
			cs[i] = password.charAt(i / 3 * 2);
			char c = salt.charAt(i / 3);
			cs[i + 1] = c;
			cs[i + 2] = password.charAt(i / 3 * 2 + 1);
		}
		return String.valueOf(cs);
	}

	/**
	 * 验证加盐后是否和原密码一致
	 * @param password 原密码
	 * @param password 加密之后的密码
	 * @return boolean true表示和原密码一致 false表示和原密码不一致
	 */
	public static boolean getSaltverifyMD5(String password, String md5str) {
		char[] cs1 = new char[32];
		char[] cs2 = new char[16];
		for (int i = 0; i < 48; i += 3) {
			cs1[i / 3 * 2] = md5str.charAt(i);
			cs1[i / 3 * 2 + 1] = md5str.charAt(i + 2);
			cs2[i / 3] = md5str.charAt(i + 1);
		}
		String Salt = new String(cs2);
		return md5Hex(password + Salt).equals(String.valueOf(cs1));
	}

	public static void main(String[] args) {
		// 原密码
		String plaintext = "admin20190909";
		// 获取加盐后的MD5值
		String ciphertext = MD5Utils.getSaltMD5(plaintext);
		System.out.println("加盐后MD5：" + ciphertext);
		System.out.println("是否是同一字符串:" + MD5Utils.getSaltverifyMD5(plaintext, ciphertext));
	}
}
