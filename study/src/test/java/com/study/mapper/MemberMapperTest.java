package com.study.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.study.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //root-context 위치 지정

@Log4j
public class MemberMapperTest {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Test
	public void testInsert() {
		MemberVO vo = new MemberVO();
		vo.setMem_id("sun1002a@naver.com");
		vo.setMem_pw("1234");
		vo.setMem_name("테스트");
		vo.setMem_phone("01012345678");
	}

}
