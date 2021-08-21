package com.Moviemoving.service;

import com.Moviemoving.domain.UserVO;

public interface UserService {
	public void insertUser(UserVO vo);

	public UserVO read(String name);

	
	
}
