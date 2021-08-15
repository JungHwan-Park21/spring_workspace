package com.Moviemoving.domain;

import java.util.List;

import lombok.Data;

@Data
public class CartVO {
	private int user_id;
	
	private List<MovieVO> items;
}
