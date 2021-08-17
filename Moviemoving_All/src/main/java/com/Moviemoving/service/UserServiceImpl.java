package com.Moviemoving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.AuthVO;
import com.Moviemoving.domain.UserVO;
import com.Moviemoving.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserServiceImpl implements UserService {
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;

	@Override
	public void insertUser(UserVO vo) {
		mapper.insertUser(vo);
		
		AuthVO avo = new AuthVO();
		avo.setUser_id(vo.getUser_id());
		avo.setAuthorities_auth("ROLE_MEMBER");
		mapper.insertAuth(avo);
	}

	@Override
	public UserVO read(String name) {
		return mapper.read(name);
	}

	
	
}
