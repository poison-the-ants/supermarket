package edu.tl.java4;
/**
 * 1.动态初始化：
 * 	数组动态初始化时数组初始化时只需要指定数组长度，由系统为数组元素赋初始值，每个数组元素初始值都是一个特定的默认值。
 * 	不同数据类型的数组对应不同的默认值。
 * 2.语法：
 * 数组名=new 数据类型[长度]
 * 
 * **/
public class java4_4 {

	public static void main(String[] args) {
		String[] companies=new String[3];
		companies[0]="微软";
		companies[1]="苹果";
		int[] i=new int[3];
		float[] f=new float[3];
		char[] c=new char[3];
		boolean[] b=new boolean[3];
		System.out.println(companies[2]);
		System.out.println(i[0]);
		System.out.println(f[0]);
		System.out.println(c[2]);
		System.out.println(b[0]);
		System.out.println(i[9]);
	}

}
