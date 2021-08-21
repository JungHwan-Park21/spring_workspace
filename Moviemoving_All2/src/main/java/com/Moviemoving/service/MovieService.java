package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.CategoryListVO;
import com.Moviemoving.domain.MovieVO;

public interface MovieService {
	public MovieVO read(Long MovieInfo_no);
	public List<CategoryListVO> getCategory(Long MovieInfo_no);	
	public List<MovieVO> getList();
	
	public List<MovieVO> movieBest();
	public List<MovieVO> movieNetflix();
	public List<MovieVO> movieWatcha();
	public List<MovieVO> movieWavve();
}
