package com.team05.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		model.addAttribute("list", list);
		
		
		
		return "notice/board";
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String noticedetail(@RequestParam("nno") int nno, Model model) {
		
		BoardVO vo = noticeBoardService.getContent(nno);
		model.addAttribute("vo",vo);
		
		return "notice/detail";
	}
	
	
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String noticemodify(@RequestParam("nno") int nno, Model model) {
		
		BoardVO vo = noticeBoardService.getContent(nno);
		model.addAttribute("vo",vo);
		
		return "notice/modify";
	}
	
	
	@RequestMapping("/write")
	public String noticewrite() {
		return "notice/write";
	}
	
	@RequestMapping(value = "/registForm", method = RequestMethod.POST)
	public String registForm(BoardVO vo, RedirectAttributes RA) {
		
		noticeBoardService.regist(vo); 
		RA.addFlashAttribute("msg", "정상적으로 등록 되었습니다"); 

		return "redirect:/notice/board";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String Update(BoardVO vo, RedirectAttributes RA) {
		
		int result = noticeBoardService.update(vo);
		if(result == 1) {
			RA.addFlashAttribute("msg","수정이 완료되었습니다.");
		}else {
			RA.addFlashAttribute("msg","수정에 실패하였습니다.");
		}
				
		return "redirect:/notice/board";
	}
	
	
	
	
	
	
}

