package com.Moviemoving.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Update;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;


public interface BookmarkMapper {
	
	
	//아이디 인서트
	@Insert("insert into Bookmark (User_id,MovieUnfo_no)values(#{User_id},#{MovieUnfo_no}))")
	@Options(useGeneratedKeys=true, keyProperty="id")
	public int create(BookmarkVO bookmarkVO);
	
	//테이블 조인
	@Insert("select a.user_id, a.movieinfo_no, b.movieinfo_title, b.movieinfo_no, b.movieinfo_thum\r\n"
			+ "	from bookmark a,\r\n"
			+ "	    movieinfo b\r\n"
			+ "	where a.movieinfo_no = b.movieinfo_no")
	public void add(MovieVO movie);
	
	//제목,이미지 가져오기
	@Insert("select *from Bookmark where User_id=#{id}")
	public List<MovieVO> getItems(BookmarkVO boomark);
	
	//업데이트
	@Update("update Bookmark set status = 1 where id = #{id}")
	public void order(BookmarkVO bookmark);
}
