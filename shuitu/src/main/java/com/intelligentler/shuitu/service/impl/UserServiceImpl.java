package com.intelligentler.shuitu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intelligentler.shuitu.dao.UserMapper;
import com.intelligentler.shuitu.entity.TblUser;
import com.intelligentler.shuitu.service.UserService;

/**
 * userService具体实现
 * @author ming.zhou
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<TblUser> getAllUser() {
		return userMapper.getAllUser();
	}

	@Override
	public int insertUser(TblUser user) {
		return userMapper.insertUser(user);
	}

}
