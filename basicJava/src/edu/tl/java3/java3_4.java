package edu.tl.java3;

/**
 * switch语法：
 * switch(判断表达式){
 * 	case 选择值1：语句块1；
 * 		break;
 * 	case 选择值2：语句块2；
 * 		break；
 * 	default 语句块n；
 * 
 * }
 * 
 * switch语句中需要注意以下几点：
 * 1.判断表达式的类型只能为byte、short、char、int、String和enmu(枚举)这六种数据类型。
 * 2.case语句可以为任意多个。并且case后的选择必须是直接值，而不能是变量，且不能有相同的选择值。
 * (注意：必须是直接的值，没有取值范围，也没有变量，是确切的数值。)
 * 3.语句块部分的语句可以为一条或多条。
 * 4.break关键字的作用是结束switch语句，break语句为可选。
 * 5.default语句并不是一定写在最后，它可以放在switch语句块中的任意位置。
 * 
 * **/
public class java3_4 {

	public static void main(String[] args) {
		String season="夏天";
		switch(season){
		case "春天":
			System.out.println("春暖花开");
			break;
		case "夏天":
			System.out.println("夏日炎炎");
			break;
		case "秋天":
			System.out.println("秋高气爽");
			break;
		case "冬天":
			System.out.println("雪花飘飘");
			break;
		default:
			System.out.println("季节输入错误");
		}

	}

}
