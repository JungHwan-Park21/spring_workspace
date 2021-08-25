package com.Moviemoving.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder encoder;

	@Override
	@Transactional
	public boolean insertUser(UserVO vo) {
		int cnt = mapper.insertUser(vo);

		AuthVO avo = new AuthVO();
		avo.setUser_id(vo.getUser_id());
		avo.setAuthorities_auth("ROLE_MEMBER");
		mapper.insertAuth(avo);
		return cnt == 1;
	}

	@Override
	public UserVO read(String name) {
		return mapper.read(name);
	}

}
