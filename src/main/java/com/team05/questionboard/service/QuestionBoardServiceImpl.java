package com.team05.questionboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.team05.command.QuestionVO;
import com.team05.common.util.Criteria;
import com.team05.questionboard.mapper.QuestionBoardMapper;

@Service("questionBoardService")
public class QuestionBoardServiceImpl implements QuestionBoardService{
	
	@Autowired
	private QuestionBoardMapper questionBoardMapper;

	@Override
	public void qregist(QuestionVO vo) {
		 questionBoardMapper.qregist(vo);
	}

	@Override
	public QuestionVO qgetContent(int qno) {
		
		return questionBoardMapper.qgetContent(qno);
	}

	@Override
	public int qupdate(QuestionVO vo) {
		
		return questionBoardMapper.qupdate(vo);
	}

	@Override
	public int qdelete(int qno) {
		
		return questionBoardMapper.qdelete(qno);
	}

	@Override
	public ArrayList<QuestionVO> qgetList(Criteria cri) {
		
		return questionBoardMapper.qgetList(cri);
	}

	@Override
	public int qgetTotal(Criteria cri) {
		
		return questionBoardMapper.qgetTotal(cri);
	}
	
}
