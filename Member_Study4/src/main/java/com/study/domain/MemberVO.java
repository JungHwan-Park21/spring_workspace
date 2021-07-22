package com.study.domain;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
public class MemberVO {
	
	@NotEmpty
	  @Email
	private String mem_id;
	
	@NotEmpty
	  @Pattern(regexp="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=])(?=\\S+$).{8,}")
	private String mem_pw;
	
	@NotEmpty
	  @Length(min=2, max=5)
	private String mem_name;
	
	@NotEmpty
	private String mem_phone;
}
