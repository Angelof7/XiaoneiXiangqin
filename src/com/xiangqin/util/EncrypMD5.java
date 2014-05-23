package com.xiangqin.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncrypMD5 {
	public static String eccrypt(String info) throws NoSuchAlgorithmException {
		// 根据MD5算法生成MessageDigest对象
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		byte[] srcBytes = info.getBytes();
		// 使用srcBytes更新摘要
		md5.update(srcBytes);
		// 完成哈希计算，得到result
		byte[] resultBytes = md5.digest();
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < resultBytes.length; i++) {
			String hex = Integer.toHexString(0xff & resultBytes[i]);
			if (hex.length() == 1)
				hexString.append('0');
			hexString.append(hex);
		}
		return hexString.toString();
	}
}
