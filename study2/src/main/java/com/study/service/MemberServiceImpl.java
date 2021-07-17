package com.study.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.domain.MemberVO;
import com.study.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Override
	public void insertMember(MemberVO vo) {
		mapper.insertMember(vo);
	}
	
}
