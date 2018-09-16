package edu.tl.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	private static SqlSession session=null;
	public static SqlSession getSession(){
		try {
			SqlSessionFactoryBuilder sfb=new SqlSessionFactoryBuilder();
			InputStream ins=Resources.getResourceAsStream("mybatis.xml");
			SqlSessionFactory ssf=sfb.build(ins);
			session=ssf.openSession();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return session;
		
	}
	public static void release(SqlSession session){
		if(session!=null){
			session.close();
		}
	}
	
}
