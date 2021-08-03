package com.Moviemoving.mapper;

import com.Moviemoving.domain.MemberVO;

public interface MemberMapper {
	//회원가입
	public void insertMember(MemberVO vo);
	
	//아이디 중복 검사
	public int idCheck(String User_id);
}
