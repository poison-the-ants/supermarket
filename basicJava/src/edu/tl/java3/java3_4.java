package edu.tl.java3;

/**
 * switch�﷨��
 * switch(�жϱ��ʽ){
 * 	case ѡ��ֵ1������1��
 * 		break;
 * 	case ѡ��ֵ2������2��
 * 		break��
 * 	default ����n��
 * 
 * }
 * 
 * switch�������Ҫע�����¼��㣺
 * 1.�жϱ��ʽ������ֻ��Ϊbyte��short��char��int��String��enmu(ö��)�������������͡�
 * 2.case������Ϊ������������case���ѡ�������ֱ��ֵ���������Ǳ������Ҳ�������ͬ��ѡ��ֵ��
 * (ע�⣺������ֱ�ӵ�ֵ��û��ȡֵ��Χ��Ҳû�б�������ȷ�е���ֵ��)
 * 3.���鲿�ֵ�������Ϊһ���������
 * 4.break�ؼ��ֵ������ǽ���switch��䣬break���Ϊ��ѡ��
 * 5.default��䲢����һ��д����������Է���switch�����е�����λ�á�
 * 
 * **/
public class java3_4 {

	public static void main(String[] args) {
		String season="����";
		switch(season){
		case "����":
			System.out.println("��ů����");
			break;
		case "����":
			System.out.println("��������");
			break;
		case "����":
			System.out.println("�����ˬ");
			break;
		case "����":
			System.out.println("ѩ��ƮƮ");
			break;
		default:
			System.out.println("�����������");
		}

	}

}
