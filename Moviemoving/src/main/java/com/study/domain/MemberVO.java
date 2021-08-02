package com.study.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_phone;
	private boolean enabled;
}
