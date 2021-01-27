package com.team05.questionboard.service;

import java.util.ArrayList;

import com.team05.command.QuestionVO;
import com.team05.common.util.Criteria;

public interface QuestionBoardService {
	
	public void qregist(QuestionVO vo);
	public QuestionVO qgetContent(int qno);
	public int qupdate(QuestionVO vo);
	public int qdelete(int qno);
	public ArrayList<QuestionVO> qgetList(Criteria cri);
	public int qgetTotal(Criteria cri);
}
