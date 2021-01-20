package com.team05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team05.command.UserVO;
import com.team05.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
//	@Autowired
//	@Qualifier("UserService")
	private UserService userService;
	
	//회원가입 와면 이동
	@RequestMapping("/join")
	public String join() {
		return "user/join";
	}
	
	//회원가입 데이터 처리
	@RequestMapping(value = "/userJoin", method = RequestMethod.POST)
	public String userJoin(UserVO vo, RedirectAttributes ra) {
		System.out.println(vo.toString());
		
		
		
		return "redirect:/user/login"; //완료시 로그인페이지로 이동
	}
	
	@RequestMapping("login")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("mypage")
	public String mypage() {
		return "user/mypage";
	}
	
}








































