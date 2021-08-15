package com.Moviemoving.mapper;



import org.apache.ibatis.annotations.Insert;

import com.Moviemoving.domain.ReviewVO;

public interface ReviewMapper {
	@Insert("INSERT INTO MovieRate (MovieRate_con, MovieInfo_no , User_id) VALUES (#{MovieRate_con}, #{MovieInfo_no}, #{User_id})")
    void create(ReviewVO MovieRate);
}
