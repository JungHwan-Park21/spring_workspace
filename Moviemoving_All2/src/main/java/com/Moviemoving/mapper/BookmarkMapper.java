package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;

public interface BookmarkMapper {
	
	
		public int insert(BookmarkVO vo);
		
		public void select(MovieVO Movio);
	
		public List<MovieVO> BookmarkList(String User_id);
	
		public void delete(int MovieInfo_no);
	
}
