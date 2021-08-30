package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.CriteriaVO;
import com.Moviemoving.domain.MovieVO;

public interface SearchService {
	public MovieVO get(int MovieInfo_no);

	// 리스트 목록
	public List<MovieVO> getList();

	// 페이징 처리
	public List<MovieVO> getListWithPaging(CriteriaVO cri);

	// 리스트 목록 총 갯수
	public int getTotal();

}
