package com.ise.service;

import com.ise.model.User;

public interface UserService {
	public boolean register(User user);
	public User loginCheck(User user);
}
