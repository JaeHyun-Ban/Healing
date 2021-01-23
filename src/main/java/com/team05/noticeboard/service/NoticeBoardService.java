package com.team05.noticeboard.service;

import java.util.ArrayList;

import com.team05.command.BoardVO;

public interface NoticeBoardService {
	
	
	public void regist(BoardVO vo);
	public ArrayList<BoardVO> getList();
	public BoardVO getContent(int nno);
	public int update(BoardVO vo);
	
	
}
