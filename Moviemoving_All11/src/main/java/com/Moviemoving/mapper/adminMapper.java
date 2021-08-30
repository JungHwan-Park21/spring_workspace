package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.MovieVO;


public interface adminMapper {
	//admin 목록
	public List<MovieVO> getList();	
	//admin 등록
	public void insertSelectKey(MovieVO movie);
	//admin 영화상세
	public MovieVO read(int MovieInfo_no);
	//admin 수정
	public boolean modify(MovieVO movie);
	//admin 삭제
	public boolean remove(int MovieInfo_no);

	public int update(MovieVO movie);

	public int delete(int movieInfo_no);
			
}
