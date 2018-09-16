package edu.tl.bo;

import java.util.Map;

import edu.tl.pojo.User;

public interface userBo {
	public User selectByAccount(String account);
	public void addUser(User user);
	public User queryUserInfo(Map map);
	public void updateUserInfo(Map map);
}
