package edu.tl.bo;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import edu.tl.dao.userDao;

import edu.tl.pojo.User;

@Service
public class userBoImpl implements userBo {
	
	@Resource(name="userDao")
	private userDao rdi;

	@Override
	public User selectByAccount(String account) {
	
		User user=rdi.selectByAccount(account);
		
		return user;
	}

	@Override
	public void addUser(User user) {
		rdi.addUser(user);
	}

	@Override
	public User queryUserInfo(Map map) {
		User user=rdi.queryUserInfo(map);
		return user;
	}

	@Override
	public void updateUserInfo(Map map) {
		rdi.updateUserInfo(map);
		
	}

}
