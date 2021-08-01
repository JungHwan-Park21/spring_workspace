package com.study.domain;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
public class MemberVO {
	
	@NotEmpty(message="이메일을 입력하세요.")
	  @Email
	private String mem_id;
	
	@Pattern(regexp="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=])(?=\\S+$).{8,}")
	private String mem_pw;
	
	@NotEmpty(message="이름을 정확히 입력하세요...")
	private String mem_name;
	
	@Pattern(message="휴대폰 번호를 정확히 입력하세요.", regexp = "^01(?:0|1|[6-9]) - (?:\\d{3}|\\d{4}) - \\d{4}$")
	private String mem_phone;
}
