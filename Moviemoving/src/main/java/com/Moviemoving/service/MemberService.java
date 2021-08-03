package com.Moviemoving.service;

import com.Moviemoving.domain.MemberVO;

public interface MemberService {
	public void insertMember(MemberVO vo);

	public int idCheck(String user_id);
}

