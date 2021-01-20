package com.team05.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("question")
public class QuestionController {
	
	@RequestMapping("question_board")
	public String question_board() {
		return "question/question_board";
	}
	
	@RequestMapping("question_detail")
	public String question_detail() {
		return "question/question_detail";
	}
	@RequestMapping("question_write")
	public String question_write() {
		return "question/question_write";
	}
	
	
}
