package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;

public interface BookmarkMapper {
	
	//보여주세요 삽입
		public int insert(BookmarkVO vo);
		//insert
		public void add(MovieVO Movio);
		//보여주세요 목록
		public List<MovieVO> BookmarkList(String User_id);
		//delete
		public void delete(int MovieInfo_no);
	
}
