package edu.tl.dao;

import java.util.Map;

import edu.tl.pojo.User;

public interface userDao {
	public User selectByAccount(String account);
	public void addUser(User user);
	public User queryUserInfo(Map map);
	public void updateUserInfo(Map map);
}
