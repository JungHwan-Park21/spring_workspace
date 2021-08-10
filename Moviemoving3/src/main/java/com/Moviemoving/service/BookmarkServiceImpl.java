package com.Moviemoving.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Moviemoving.domain.BookmarkVO;

@Service
public class BookmarkServiceImpl implements BookmarkService {

	@Override
	public BookmarkVO get(Long bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookmarkVO> getList() {
		// mapper 에 정의된 메서드 호출
		mapper.getList();
		return null;
	}

}
