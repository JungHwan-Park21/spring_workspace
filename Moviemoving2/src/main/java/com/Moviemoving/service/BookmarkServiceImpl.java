package com.Moviemoving.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.mapper.BookmarkMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BookmarkServiceImpl implements BookmarkService {
	
	private BookmarkMapper mapper; //주입

	@Override
	public void register(BookmarkVO board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BookmarkVO get(Long bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(BookmarkVO board) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(Long bno) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<BookmarkVO> insertBookmark() {
		//mapper에 정의된 메서드 호출
		return mapper.insertBookmark(); //List<BookmarkVO> 리턴
		
		
		
		
	}

}
