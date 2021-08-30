package com.Moviemoving.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;

public interface MypageService {
	//bookmark
	public List<MovieVO> movie_bookmark(String user_id);
	public List<MovieVO> tv_bookmark(String user_id);
	
	//bookmark 등록
	public void insertBookmark(BookmarkVO bookmark);
	//bookmark 삭제
	public void deleteBookmark(BookmarkVO bookmark);
	
	//bookmark 중복검사
	public int bookmarkChk(@Param("User_id") String User_id, @Param("MovieInfo_no") int MovieInfo_no) throws Exception;
}
