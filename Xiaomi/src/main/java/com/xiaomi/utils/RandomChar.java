package com.xiaomi.utils;

import java.util.Random;
//产生验证码的方法
public class RandomChar {
	public static String yzm(){
		Random rd=new Random();
		StringBuffer sbf=new StringBuffer();
		int count=0;
		int flag=0;
		while(count<=3){
			flag=rd.nextInt(2);
			if(flag==0){
				sbf.append(rd.nextInt(10));
			}else{
				sbf.append((char)(rd.nextInt(26)+97));
			}
			count++;
		}
		return sbf.toString();
	}

}
