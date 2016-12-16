package com.ise.dao;

import com.ise.model.User;

public interface UserDao {
	public void register(User user);
	public User findUserByUserName(final String userName);
}
