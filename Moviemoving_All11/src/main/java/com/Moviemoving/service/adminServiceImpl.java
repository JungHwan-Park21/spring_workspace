package com.Moviemoving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.adminMapper;

import lombok.Setter;

@Service
public class adminServiceImpl implements adminService{
	@Setter(onMethod_ = @Autowired)
	private adminMapper mapper;

	public void register(MovieVO Movie) {
		// TODO Auto-generated method stub
		mapper.insertSelectKey(Movie);
	}

	@Override
	public MovieVO get(int MovieInfo_no) {
		// TODO Auto-generated method stub
		return mapper.read(MovieInfo_no);
	}

	@Override
	public boolean modify(MovieVO movie) {
		// TODO Auto-generated method stub
		return mapper.update(movie)==1;
	}

	@Override
	public boolean remove(int MovieInfo_no) {
		// TODO Auto-generated method stub
		return mapper.delete(MovieInfo_no)==1;
	}

	@Override
	public List<MovieVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	
	

	



}
