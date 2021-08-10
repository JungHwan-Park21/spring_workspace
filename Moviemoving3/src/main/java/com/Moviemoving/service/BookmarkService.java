package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;

public interface BookmarkService {
	//상세보기ㅏ
	public BookmarkVO get(Long bno);
	//목록
	public List<BookmarkVO> getList();
	
}
