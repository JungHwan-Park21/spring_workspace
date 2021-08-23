package com.Moviemoving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.MovieRateVO;
import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.MovieRateMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MovieRateServiceImpl implements MovieRateService{
	@Setter(onMethod_ = @Autowired)
	private MovieRateMapper mapper;

	@Override
	public List<MovieVO> movie_movieRatek(String user_id) {
		// TODO Auto-generated method stub
		return mapper.movie_movieRatek(user_id);
	}

	@Override
	public List<MovieVO> tv_movieRate(String user_id) {
		// TODO Auto-generated method stub
		return mapper.tv_movieRate(user_id);
	}

	@Override
	public void insertBookmark(MovieRateVO movieRate) {
		// TODO Auto-generated method stub
		mapper.insertBookmark(movieRate);
	}

	@Override
	public MovieRateVO read(Long bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteBookmark(MovieRateVO movieRate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(MovieRateVO movieRate) {
		// TODO Auto-generated method stub
		
	}
}
