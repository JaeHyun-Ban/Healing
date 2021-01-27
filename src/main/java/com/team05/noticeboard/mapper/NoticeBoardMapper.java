package com.team05.noticeboard.mapper;

import java.util.ArrayList;

import com.team05.command.NoticeVO;
import com.team05.common.util.Criteria;

public interface NoticeBoardMapper {
	
	public void regist(NoticeVO vo);
	public NoticeVO getContent(int nno);
	public int update(NoticeVO vo);
	public int delete(int nno);
	public ArrayList<NoticeVO>getList(Criteria cri);
	public int getTotal(Criteria cri);

}
