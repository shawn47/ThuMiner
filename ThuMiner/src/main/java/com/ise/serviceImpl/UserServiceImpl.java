package com.ise.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ise.dao.UserDao;
import com.ise.model.User;
import com.ise.service.UserService;

@Service
public class UserServiceImpl implements UserService  {
	@Autowired
	private UserDao userDao;
	
	public boolean register(User user) {
		// TODO Auto-generated method stub
		User u =  userDao.findUserByUserName(user.getName());
		if(u.getId() == 0 || u.getId() == null){
			userDao.register(user);
			return true;
		}
		else{
			System.out.println("id="+u.getId()+",  userName="+u.getName()+", password="+u.getPassword());
			return false;
		}
	}

	public User loginCheck(User user) {
		// TODO Auto-generated method stub
		User u  = userDao.findUserByUserName(user.getName());
		System.out.println("id="+u.getId()+",  userName="+u.getName()+", password="+u.getPassword());
		if(user.getPassword().equals(u.getPassword())){
			return u;
		}
		else{
			return null;
		}
	}

}
