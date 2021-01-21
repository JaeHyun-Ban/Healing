package com.team05.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team05.command.UserVO;
import com.team05.user.mapper.UserMapper;

@Service("UserService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public int join(UserVO vo) {
		return userMapper.join(vo);
	}
	
	
	

}
