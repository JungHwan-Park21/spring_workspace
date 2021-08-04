package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;

public interface BookmarkService {
	
	//동록
	public void register(BookmarkVO board);
	
	//상세보기
	public BookmarkVO get(Long bno);
	
	//수정
	public boolean modify(BookmarkVO board);
	
	//삭제
	public boolean remove(Long bno);
	
	//목록
	public List<BookmarkVO> insertBookmark();
	
	

}
