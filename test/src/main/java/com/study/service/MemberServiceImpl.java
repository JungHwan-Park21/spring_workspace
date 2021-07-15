package com.study.service;

import org.springframework.stereotype.Service;

import com.study.domain.MemberVO;
import com.study.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	private MemberMapper mapper;

	@Override
	public void insertMember(MemberVO vo) {
		mapper.insertMember(vo);
	}
	
}