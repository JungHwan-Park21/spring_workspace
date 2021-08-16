package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;

public interface BookmarkService {
	public void insert(BookmarkVO bookmark);
	
	public List<MovieVO> MovieInfo_no();	
}
