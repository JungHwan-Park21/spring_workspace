package com.Moviemoving.service;

import java.util.List;



import com.Moviemoving.domain.MovieRateVO;
import com.Moviemoving.domain.MovieVO;


public interface MovieRateService {
	
		
		public List<MovieVO> movie_movieRatek(String user_id);
		public List<MovieVO> tv_movieRate(String user_id);
		

		//평가 등록
		public void insertBookmark(MovieRateVO movieRate);
		
		//평가 상세보기
		public MovieRateVO read(Long bno); 
		
		//평가 삭제
		public void deleteBookmark(MovieRateVO movieRate);
		
		//평가 수정
		public void remove(MovieRateVO movieRate);
}
