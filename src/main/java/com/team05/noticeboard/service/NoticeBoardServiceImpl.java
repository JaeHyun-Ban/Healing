package com.team05.noticeboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team05.command.BoardVO;
import com.team05.noticeboard.mapper.NoticeBoardMapper;

@Service("noticeBoardService")
public class NoticeBoardServiceImpl implements NoticeBoardService{
	
	@Autowired
	private NoticeBoardMapper noticeBoardMapper; 
	
	@Override
	public ArrayList<BoardVO> getList() {
		
		return noticeBoardMapper.getList();
	}

	@Override
	public void regist(BoardVO vo) {
		
		noticeBoardMapper.regist(vo);
	}

	@Override
	public BoardVO getContent(int nno) {
		return noticeBoardMapper.getContent(nno);
	}

	@Override
	public int update(BoardVO vo) {
		
		return noticeBoardMapper.update(vo);
	}
	
	
	

}
