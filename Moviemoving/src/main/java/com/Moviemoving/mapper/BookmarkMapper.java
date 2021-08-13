package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;

public interface BookmarkMapper {
	//영화상세
	public BookmarkVO read(Long MovieInfo_no);
	//리스트
	public List<BookmarkVO> getList();	
	//보고싶어요 추가
	void insert(BookmarkVO vo);
	//보고싶어요 삭제
	void deleteAll(String User_id);
		
}
