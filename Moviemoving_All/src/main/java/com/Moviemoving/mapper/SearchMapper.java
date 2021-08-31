package com.Moviemoving.mapper;

import java.util.List;

import com.Moviemoving.domain.CriteriaVO;
import com.Moviemoving.domain.MovieVO;

public interface SearchMapper {
	// 게시판 목록
	public List<MovieVO> getList();

	// 게시판 목록(페이징)
	public List<MovieVO> getListWithPaging(CriteriaVO cri);

	public MovieVO read(int MovieInfo_no);

	// 목록 총 갯수
	public int getTotal();

}
