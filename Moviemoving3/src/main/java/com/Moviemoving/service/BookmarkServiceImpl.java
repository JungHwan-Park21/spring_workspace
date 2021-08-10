package com.Moviemoving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.mapper.BookmarkMapper;

import lombok.Setter;

@Service
public class BookmarkServiceImpl implements BookmarkService {
	
	
	
	@Setter(onMethod_ = @Autowired)
	private BookmarkMapper mapper;
	
	@Override
	public void getList(BookmarkVO vo) {
		mapper.getList(vo);
		
	}

	
}
