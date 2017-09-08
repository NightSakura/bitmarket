package com.market.service;

import com.market.entity.User;


public interface UserService {

	User queryByName(String username,String password);
	
	int insertUser(String username,String password);
}
