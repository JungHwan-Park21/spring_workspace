package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.MovieRateVO;
import com.Moviemoving.domain.MovieVO;

public interface MovieRateMapper {
		//평가 리스트
		public List<MovieVO> movie_bookmark(String User_id);
		public List<MovieVO> tv_bookmark(String User_id);
		
		//평가 insert
		public void insertBookmark(MovieRateVO movieRate);
		
		//평가 select
		public MovieRateVO read(Long bno); 
		
		//평가 delete
		public void deleteBookmark(MovieRateVO movieRate);
		
		//평가 update
		public void update(MovieRateVO movieRate);
}
