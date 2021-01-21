package com.team05.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team05.command.ReservationVO;
import com.team05.command.Reserve_imgVO;
import com.team05.command.Review_imgVO;
import com.team05.command.UserVO;
import com.team05.user.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("join")
	public String join() {
		return "user/join";
	}
	
	@RequestMapping("login")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("mypage")
	public String mypage(HttpSession session,Model model) {
//		UserVO uservo=(UserVO)session.getAttribute("uservo");
		UserVO uservo = new UserVO();
		uservo.setId("test");
		ArrayList<Reserve_imgVO> reservelist=userService.showmypage(uservo);
		model.addAttribute("reservelist", reservelist);
		
		ArrayList<Review_imgVO> reviewlist=userService.getreview(uservo);
		model.addAttribute("reviewlist", reviewlist);
		
		System.out.println(reservelist.toString());
		System.out.println(reviewlist.toString());
		
		return "user/mypage";
	}
	
	
	
	
}
