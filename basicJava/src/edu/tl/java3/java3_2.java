package edu.tl.java3;

import java.util.Scanner;

public class java3_2 {

	public static void main(String[] args) {
		System.out.println("请输入数字：");
		Scanner sc=new Scanner(System.in);
		int num=sc.nextInt();
		if(num%2==0){
			System.out.println("输入数字为偶数");
		}else{
			System.out.println("输入数字为奇数");
		}

	}

}
