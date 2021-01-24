package com.team05.noticeboard.mapper;

import java.util.ArrayList;

import com.team05.command.BoardVO;
import com.team05.common.util.Criteria;

public interface NoticeBoardMapper {
	
	public void regist(BoardVO vo);
	public BoardVO getContent(int nno);
	public int update(BoardVO vo);
	public int delete(int nno);
	public ArrayList<BoardVO>getList(Criteria cri);
	public int getTotal(Criteria cri);

}
