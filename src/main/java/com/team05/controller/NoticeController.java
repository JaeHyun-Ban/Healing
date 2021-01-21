package com.team05.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team05.command.BoardVO;
import com.team05.noticeboard.service.NoticeBoardService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	
	
	@Autowired
	@Qualifier("noticeBoardService")
	private NoticeBoardService noticeBoardService;
	
	
	@RequestMapping("/board")
	public String noticeboard(Model model) {
		
		ArrayList<BoardVO> list = noticeBoardService.getList();
		System.out.println(list.toString());
		////////////////////////////////////////////
		model.addAttribute("list", list);
		
		
		return "notice/notice_board";
	}
	
	
	
	
	
	
	
	@RequestMapping("/detail")
	public String noticedetail() {
		return "notice/notice_detail";
	}
	
	
	
	
	@RequestMapping("/write")
	public String noticewrite() {
		return "notice/notice_write";
	}
	
	@RequestMapping(value = "/registForm", method = RequestMethod.POST)
	public String registForm(BoardVO vo, RedirectAttributes RA) {
		
		System.out.println(vo.toString());
		noticeBoardService.regist(vo); 
		RA.addFlashAttribute("msg", "정상적으로 등록 되었습니다"); 

		return "redirect:/notice/board";
	}
	
	
}
