package com.team05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team05.questionboard.service.QusestionBoardService;

@Controller
@RequestMapping("question")
public class QuestionController {
	
	
//	@Autowired
//	@Qualifier("questionBoardService")
//	private QusestionBoardService questionBoardService;
	
	
	
	@RequestMapping("board")
	public String question_board() {
		return "question/board";
	}
	
	
	
	@RequestMapping("detail")
	public String question_detail() {
		return "question/detail";
	}
	
	
	@RequestMapping("write")
	public String question_write() {
		return "question/write";
	}
	
	
}
