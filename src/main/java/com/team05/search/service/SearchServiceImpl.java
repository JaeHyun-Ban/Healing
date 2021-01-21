package com.team05.search.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.team05.command.ProductVO;
import com.team05.command.ReviewVO;
import com.team05.command.RoomVO;
import com.team05.command.util.SearchAreaVO;
import com.team05.search.mapper.SearchMapper;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	SearchMapper searchMapper;
	
	@Override
	public ArrayList<ProductVO> getlist(SearchAreaVO searchvo) {
		
		return searchMapper.getlist(searchvo);
	}

	@Override
	public ArrayList<RoomVO> getroom(int pro_no) {
		
		return searchMapper.getroom(pro_no);
	}

	@Override
	public boolean insertReview(ReviewVO vo) {
		
		return searchMapper.insertReview(vo);
	}

	@Override
	public ArrayList<ReviewVO> getreview(int pro_no) {
		
		return searchMapper.getreview(pro_no);
	}

	
	
}
