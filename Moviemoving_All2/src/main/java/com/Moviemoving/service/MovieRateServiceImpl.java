package com.Moviemoving.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.MovieRateVO;

import com.Moviemoving.mapper.MovieRateMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MovieRateServiceImpl implements MovieRateService{
	@Setter(onMethod_ = @Autowired)
	private MovieRateMapper mapper;
	


	@Override
	public void insertMovieRate(MovieRateVO movieRate) {
		// TODO Auto-generated method stub
		mapper.insertMovieRate(movieRate);
	}



	@Override
	public List<MovieRateVO> movie_movieRate(Long MovieInfo_no) {
		// TODO Auto-generated method stub
		return mapper.movie_movieRate(MovieInfo_no);
	}


	


	
	

}
