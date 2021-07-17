package com.study.domain;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;

@Data
public class MemberVO {
	
	@Email
	private String mem_id;
	
	@NotEmpty @Size(min=4, max=12)
	private String mem_pw;
	
	@NotEmpty
	private String mem_name;
	
	@NotEmpty @Size(min=11, max=11)
	private String mem_phone;
}
