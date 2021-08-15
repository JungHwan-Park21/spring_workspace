package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.CategoryListVO;
import com.Moviemoving.domain.MovieVO;

public interface MovieMapper {	
	//영화상세
	public MovieVO read(Long MovieInfo_no);
	//장르
	public List<CategoryListVO> getCategory(Long MovieInfo_no);	
	//관리자 - 전체리스트
	public List<MovieVO> getList();		
	
	//메인 베스트5 리스트
	public List<MovieVO> movieNetflix();
	public List<MovieVO> movieWatcha();
	public List<MovieVO> movieWavve();
	
	
}
