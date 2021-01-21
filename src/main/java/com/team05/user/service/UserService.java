package com.team05.user.service;

import com.team05.command.UserVO;

public interface UserService {

	public int userJoin(UserVO vo);//회원가입 처리

	public UserVO userLogin(UserVO vo);//로그인 처리

	public int idCheck(UserVO vo); //아이디 중복확인

}
