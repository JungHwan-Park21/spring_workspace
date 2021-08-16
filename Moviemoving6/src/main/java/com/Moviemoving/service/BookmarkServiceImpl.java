package com.Moviemoving.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.BookmarkMapper;

@Service
public class BookmarkServiceImpl implements BookmarkService{

	private BookmarkMapper mapper;
	
	@Override
	public void insert(BookmarkVO bookmark) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MovieVO> MovieInfo_no() {
		// TODO Auto-generated method stub
		return mapper.MovieInfo_no();
	}
	
}
