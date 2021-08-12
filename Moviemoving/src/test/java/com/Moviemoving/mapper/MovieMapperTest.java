package com.Moviemoving.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.Moviemoving.domain.MovieVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MovieMapperTest {
	@Setter(onMethod_ = @Autowired)
	private MovieMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(movie -> log.info(movie));
	}
	
	@Test
	public void testRead() {
		MovieVO movie = mapper.read(5L);
		log.info(movie);
	}
}
