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
	
	@Autowired
	@Qualifier("UserService")
	private UserService userService;
	
	//회원가입 와면 이동
	@RequestMapping("/join")
	public String join() {
		return "user/join";
	}
	
	//회원가입 데이터 처리
	@RequestMapping(value = "/userJoin", method = RequestMethod.POST)
	public String userJoin(UserVO vo, RedirectAttributes ra) {
//		System.out.println(vo.toString());//데이터 넘어오는지 확인
		
		int result = userService.join(vo);
		//검증
		if(result == 1) {//성공
			ra.addFlashAttribute("msg", "가입을 축하합니다!");
		} else {//실패
			ra.addFlashAttribute("msg", "가입에 실패했습니다");
		}
		
		return "redirect:/user/login";//로그인페이지 이동
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








































