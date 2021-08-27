package com.Moviemoving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.CategoryListVO;
import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.MovieMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MovieServiceImpl implements MovieService {
	@Setter(onMethod_ = @Autowired)
	private MovieMapper mapper;

	@Override
	public MovieVO read(int MovieInfo_no) {
		return mapper.read(MovieInfo_no);
	}

	@Override
	public List<MovieVO> getList() {
		return mapper.getList();
	}

	@Override
	public List<MovieVO> movieNetflix() {
		return mapper.movieNetflix();
	}

	@Override
	public List<MovieVO> movieWatcha() {
		return mapper.movieWatcha();
	}

	@Override
	public List<MovieVO> movieWavve() {
		return mapper.movieWavve();
	}

	@Override
	public List<CategoryListVO> getCategory(int MovieInfo_no) {
		return mapper.getCategory(MovieInfo_no);
	}

	@Override
	public List<MovieVO> movieBest() {
		return mapper.movieBest();
	}

	@Override
	public List<MovieVO> tvBest() {
		return mapper.tvBest();
	}

	@Override
	public List<MovieVO> tvNetflix() {
		return mapper.tvNetflix();
	}

	@Override
	public List<MovieVO> tvWatcha() {
		return mapper.tvWatcha();
	}

	@Override
	public List<MovieVO> tvWavve() {
		return mapper.tvWavve();
	}

	
}
