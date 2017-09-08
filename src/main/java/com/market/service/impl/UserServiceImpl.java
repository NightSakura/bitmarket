package com.market.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.dao.UserDao;
import com.market.entity.User;
import com.market.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	

	@Override
	public User queryByName(String username, String password) {
		// TODO Auto-generated method stub
		return userDao.queryByName(username,password);
	}
	
	public int insertUser(String username, String password) {
		// TODO Auto-generated method stub
		return userDao.insertUser(username,password);
	}
	
}
