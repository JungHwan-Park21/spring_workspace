package com.study.domain;

import javax.validation.constraints.Pattern;

import lombok.Data;

@Data
public class MemberVO {
	
	@Pattern(regexp="^[a-z | A-Z]{3,6}{0-9}{3,6}$")
	private String mem_id;
	@Pattern(regexp="^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$")
	private String mem_pw;
	@Pattern(regexp="^[가-힣]{2,6}$")
	private String mem_name;
	@Pattern(regexp="^(01[1|6|7|8|9|0])-(\\d{3,4})-(\\d{4})$")
	private String mem_phone;
}


