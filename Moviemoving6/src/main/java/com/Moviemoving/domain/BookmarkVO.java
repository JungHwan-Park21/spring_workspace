package com.Moviemoving.domain;

import java.util.List;

import lombok.Data;

@Data
public class BookmarkVO {
	private int User_id;
	private int MovieInfo_no;
	private List<MovieVO> getItems;
	
}
