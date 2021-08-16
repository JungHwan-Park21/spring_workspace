package com.Moviemoving.domain;

import java.util.List;

import lombok.Data;

@Data
public class BookmarkVO {
	private int User_id;
	private List<MovieVO> MovieInfo_no;
	
}
