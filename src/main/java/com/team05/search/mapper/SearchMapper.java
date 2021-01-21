package com.team05.search.mapper;

import java.util.ArrayList;

import com.team05.command.ProductVO;
import com.team05.command.ReviewVO;
import com.team05.command.RoomVO;
import com.team05.command.util.SearchAreaVO;

public interface SearchMapper {
	public ArrayList<ProductVO> getlist(SearchAreaVO searchvo);
	public ArrayList<RoomVO> getroom(int pro_no);
	public boolean insertReview(ReviewVO vo);
	public ArrayList<ReviewVO> getreview(int pro_no);
}
