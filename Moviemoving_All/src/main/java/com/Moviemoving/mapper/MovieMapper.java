package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.CategoryListVO;
import com.Moviemoving.domain.MovieVO;

public interface MovieMapper {	
	//영화상세
	public MovieVO read(int MovieInfo_no);
	//장르
	public List<CategoryListVO> getCategory(int MovieInfo_no);	
	//관리자 - 전체리스트
	public List<MovieVO> getList();		
	
	//메인 베스트-영화
	public List<MovieVO> movieBest();
	public List<MovieVO> movieNetflix();
	public List<MovieVO> movieWatcha();
	public List<MovieVO> movieWavve();
	
	//메인 베스트-TV
	public List<MovieVO> tvBest();
	public List<MovieVO> tvNetflix();
	public List<MovieVO> tvWatcha();
	public List<MovieVO> tvWavve();
}
