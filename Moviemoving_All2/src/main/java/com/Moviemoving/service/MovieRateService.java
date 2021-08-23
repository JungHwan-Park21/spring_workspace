package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.MovieRateVO;



public interface MovieRateService {

		//평가 등록
		public void insertMovieRate(MovieRateVO movieRate);
		
		//평가 리스트 (contents)
		public List<MovieRateVO> movie_movieRate(Long movieInfo_no);
		
		
		//평가 상세보기
		/*
		 * public MovieRateVO read(Long bno);
		 * 
		 * //평가 삭제 public void deleteBookmark(MovieRateVO movieRate);
		 * 
		 * //평가 수정 public void remove(MovieRateVO movieRate);
		 */
}
