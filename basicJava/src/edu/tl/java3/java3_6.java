package edu.tl.java3;
/**
 * do...while语句是由关键字do和while组成，是典型的“先循环再判断”流程控制结构。
 * do...while循环语句也称为“直接型循环”
 * 语法：
 * 【初始化部分】
 * do{
 * 	语句1；
 * 	语句2；
 * 	。。。
 * }while(循环条件判断);
 * **/
public class java3_6 {

	public static void main(String[] args) {
		System.out.println("淘宝公司计划招聘10名软件工程师");
		System.out.println("------------------");
		int count=0;
		do{
			count++;
			System.out.println("招聘了"+count+"名软件工程师");
		}while(count<10);
		System.out.println("----------------------");
		System.out.println("已完成"+count+"软件工程师招聘");

	}

}
