package com.Moviemoving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.BookmarkMapper;
import com.Moviemoving.mapper.MovieMapper;
import com.Moviemoving.mapper.UserMapper;

import lombok.Setter;

@Service

public class BookmarkServiceImpl implements BookmarkService {

	@Setter(onMethod_ = @Autowired)
	private BookmarkMapper bookmarkMapper;
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;
	
	@Setter(onMethod_ = @Autowired)
	private MovieMapper movieMapper;

	@Override
	public int insert(BookmarkVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void select(MovieVO Movio) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MovieVO> BookmarkList(String User_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int MovieInfo_no) {
		// TODO Auto-generated method stub
		
	}
	
	


	
	
	
	
	
}
