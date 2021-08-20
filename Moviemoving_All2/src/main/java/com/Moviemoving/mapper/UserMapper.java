package com.Moviemoving.mapper;

import com.Moviemoving.domain.AuthVO;
import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.UserVO;

public interface UserMapper {
	public void insertUser(UserVO vo);
	
	public void insertAuth(AuthVO avo);
	
	public UserVO read(String name);

	public UserVO read(BookmarkVO bookmark);
}
