package com.Moviemoving.service;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;

import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.domain.CartVO;

public interface CartService {
	@Insert("insert into carts (User_id) values (#{User_id})")
    @Options(useGeneratedKeys=true, keyProperty="id")
    int create(CartVO cartVO);
	
	public List<MovieVO> getTitle(String MovieInfo_title);
	public List<MovieVO> getImg(String MovieInfo_bkimg);
}
