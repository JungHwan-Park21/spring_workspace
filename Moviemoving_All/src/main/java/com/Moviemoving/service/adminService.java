package com.Moviemoving.service;



import java.util.List;

import com.Moviemoving.domain.MovieVO;

public interface adminService {
		//admin 등록
		public void register(MovieVO Movie);
		//admin 영화상세
		public MovieVO get(int MovieInfo_no);
		//admin 수정
		public boolean modify(MovieVO movie);
		//admin 삭제
		public boolean remove(int MovieInfo_no);
		//admin 목록
		public List<MovieVO> getList();	
		
		
		
		
		
		
}
