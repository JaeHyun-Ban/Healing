package com.team05.user.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team05.command.ProductVO;
import com.team05.command.ReservationVO;
import com.team05.command.Reserve_imgVO;
import com.team05.command.ReviewVO;
import com.team05.command.Review_imgVO;
import com.team05.command.UserVO;
import com.team05.user.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;

	@Override
	public ArrayList<Reserve_imgVO> showmypage(UserVO uservo) {
		return userMapper.showmypage(uservo);
	}

	@Override
	public ArrayList<Review_imgVO> getreview(UserVO uservo) {
		return userMapper.getreview(uservo);
	}
	
	

	
}
