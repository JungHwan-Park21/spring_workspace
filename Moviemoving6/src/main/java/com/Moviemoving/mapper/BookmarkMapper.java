package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;

public interface BookmarkMapper {
	//아이디 인서트
	public void insert(BookmarkVO bookmark);
	//제목,이미지 가져오기
	public List<MovieVO> MovieInfo_no();	
}
