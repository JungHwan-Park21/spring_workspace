package com.Moviemoving.domain;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import lombok.Data;

@Data
public class MemberVO {
	
	@NotEmpty(message="이메일을 입력하세요.")
	  @Email
	private String User_id;
	
	@NotEmpty(message="이름을 정확히 입력하세요...")
	private String User_pw;
	
	@NotEmpty(message="이름을 정확히 입력하세요...")
	private String User_name;
}
