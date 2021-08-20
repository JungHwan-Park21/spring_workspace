package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;

public interface BookmarkService {
	
	//보여주세요 삽입
	public int insert(BookmarkVO vo);
	
	public void select(MovieVO Movio);

	public List<BookmarkVO> BookmarkList();

	public void delete(int MovieInfo_no);

}
