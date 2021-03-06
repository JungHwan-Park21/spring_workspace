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
	public MovieVO read(Long MovieInfo_no) {
		log.info("get===================" + MovieInfo_no);
		return mapper.read(MovieInfo_no);
	}

	@Override
	public List<MovieVO> getList() {
		log.info("getList===================");
		return mapper.getList();
	}

	@Override
	public List<MovieVO> movieNetflix() {
		log.info("mainNetflix===================");
		return mapper.movieNetflix();
	}

	@Override
	public List<MovieVO> movieWatcha() {
		log.info("movieWatcha===================");
		return mapper.movieWatcha();
	}

	@Override
	public List<MovieVO> movieWavve() {
		log.info("movieWavve===================");
		return mapper.movieWavve();
	}

	@Override
	public List<CategoryListVO> getCategory(Long MovieInfo_no) {
		return mapper.getCategory(MovieInfo_no);
	}

}
