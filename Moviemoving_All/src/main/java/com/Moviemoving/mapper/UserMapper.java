package com.Moviemoving.mapper;

import com.Moviemoving.domain.AuthVO;
import com.Moviemoving.domain.UserVO;

public interface UserMapper {
	public int insertUser(UserVO vo);
	
	public void insertAuth(AuthVO avo);
	
	public UserVO read(String user_id);
	

}
