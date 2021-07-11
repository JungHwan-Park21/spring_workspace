package org.zerock.persistence;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.zerock.mapper.TimeMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class JDBCTest {
	
	@Setter(onMethod_ = @Autowired)
	private TimeMapper timeMapper;
	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
//	@Test
//	public void tsetConnection() {
//			try(Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ora_user","hong")){
//			System.out.println("sussandkase");
//			Log.info(con);
//		}catch(Exception e) {
//			fail(e.getMessage());
//		}
//	}
	@Test
	public void testGetTiom2() {
		log.info("getTime2");
		log.info(timeMapper.getTime2());
	}
}