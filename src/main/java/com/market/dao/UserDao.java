package com.market.dao;

import org.apache.ibatis.annotations.Param;

import com.market.entity.User;

public interface UserDao {
	
	public User  queryByName(@Param("username") String username, @Param("password") String password);
	
	public int insertUser(@Param("username") String username, @Param("password") String password);
}
