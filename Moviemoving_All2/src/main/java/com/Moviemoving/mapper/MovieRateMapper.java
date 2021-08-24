package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.MovieRateVO;
import com.Moviemoving.domain.MovieVO;

public interface MovieRateMapper {
		//평가 리스트(contents)
		public List<MovieRateVO> movie_movieRate(Long MovieInfo_no);
		
		//평가 리스트(Mypage)
		public List<MovieRateVO> mv_MovieRate(Long MovieInfo_no);
		public List<MovieRateVO> tv_MovieRate(Long MovieInfo_no);
		
		//평가 등록
		public void insertMovieRate(MovieRateVO movieRate);
		
		//평가 상세보기
		public MovieRateVO read(Long bno); 
		
		//평가 삭제
		public void deleteBookmark(MovieRateVO movieRate);
		
		//평가 수정
		public void remove(MovieRateVO movieRate);
}
