package com.Moviemoving.domain;

import java.util.List;

import lombok.Data;

@Data
public class BookmarkVO {
	
	private String user_id;
	
    private int MovieInfo_no;
    
    private List<MovieVO> BookmarkList;

}
