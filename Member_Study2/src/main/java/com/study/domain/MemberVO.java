package com.study.domain;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;

@Data
public class MemberVO {
	
	@Email
	private String mem_id;
	
	@NotEmpty
	private String mem_pw;
	
	@NotEmpty
	private String mem_name;
	
	@NotEmpty
	private String mem_phone;
}
