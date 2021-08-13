package com.Moviemoving.domain;

import lombok.Data;

@Data
public class BookmarkVO {
	private int User_id;
	private Long MovieInfo_no;
	private String MovieInfo_title;
	private String MovieInfo_img;
}
