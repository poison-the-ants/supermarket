package edu.tl.java3;
/**
 * do...while������ɹؼ���do��while��ɣ��ǵ��͵ġ���ѭ�����жϡ����̿��ƽṹ��
 * do...whileѭ�����Ҳ��Ϊ��ֱ����ѭ����
 * �﷨��
 * ����ʼ�����֡�
 * do{
 * 	���1��
 * 	���2��
 * 	������
 * }while(ѭ�������ж�);
 * **/
public class java3_6 {

	public static void main(String[] args) {
		System.out.println("�Ա���˾�ƻ���Ƹ10���������ʦ");
		System.out.println("------------------");
		int count=0;
		do{
			count++;
			System.out.println("��Ƹ��"+count+"���������ʦ");
		}while(count<10);
		System.out.println("----------------------");
		System.out.println("�����"+count+"�������ʦ��Ƹ");

	}

}
