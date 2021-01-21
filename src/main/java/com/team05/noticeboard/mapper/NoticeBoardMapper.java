package com.team05.noticeboard.mapper;

import java.util.ArrayList;

import com.team05.command.BoardVO;

public interface NoticeBoardMapper {
	
	public void regist(BoardVO vo);
	public ArrayList<BoardVO> getList();

}
