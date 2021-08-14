package com.Moviemoving.mapper;

import org.apache.ibatis.annotations.Select;

public interface UserMapper {
	@Select("select id from users where email = #{email}")
	public int getUserIdByEmail(String email);
}
