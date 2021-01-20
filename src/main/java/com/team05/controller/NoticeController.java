package com.team05.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("notice")
public class NoticeController {
	
	@RequestMapping("noticeboard")
	public String noticeboard() {
		return "notice/notice_board";
	}
	
	@RequestMapping("noticedetail")
	public String noticedetail() {
		return "notice/notice_detail";
	}
	@RequestMapping("noticewrite")
	public String noticewrite() {
		return "notice/notice_write";
	}
	
	
}
